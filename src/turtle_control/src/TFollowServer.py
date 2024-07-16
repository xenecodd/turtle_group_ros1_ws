from functools import partial
from math import atan2, sqrt
import random
import rospy
from turtlesim.msg import Pose
from geometry_msgs.msg import Twist
from turtle_control.srv import TurtleFollow, TurtleFollowResponse
from turtle_control.msg import StringArray

class TFollowServer:
    def __init__(self):
        rospy.init_node("TFollowServer", anonymous=True)
        self.serv = rospy.Service('turtle_follow', TurtleFollow, self.handle_follow_turtle)  # Enables publishing of the leader turtle's position
        self.goal_pose = Pose()
        self.current_leader_topic = None  # Stores the topic of the current leader turtle
        self.received_turtle_names = []   # Stores the names of created turtles
        self.name_sub = rospy.Subscriber('turtle_names', StringArray, self.name_callback)  # Retrieves turtle names from the /turtle_names topic
        self.leader_name = None           # Name of the leader turtle
        self.goal_publisher = rospy.Publisher('/goal_pose', Pose, queue_size=10)     # Publishes the goal position for follower turtles to /goal_pose topic
        self.goal_sub = rospy.Subscriber('/goal_pose', Pose, self.goal_pose_callback) # Retrieves the goal position for follower turtles from /goal_pose topic
        self.cmd_vel_publishers = []    # Stores publisher objects that publish to the cmd_vel topic
        self.pose_subscribers = []      # Stores subscriber objects subscribed to /turtle_name/Pose topics
    
    def goal_pose_callback(self, goal): # Callback updating the goal_pose
        self.goal_pose = goal

    def create_publishers(self):        # Function creating cmd_vel publishers
        for i in self.received_turtle_names:
            topic_name = f'/{i}/cmd_vel'
            publisher = rospy.Publisher(topic_name, Twist, queue_size=10)
            self.cmd_vel_publishers.append(publisher)
            rospy.loginfo(f'Created publisher for {topic_name}')

    def create_subscriptions(self):      # Function creating pose subscribers
        for i, turtle_name in enumerate(self.received_turtle_names):
            topic_name = f'/{turtle_name}/pose'
            subscription = rospy.Subscriber(topic_name, Pose, partial(self.follow_leader, turtle=i))
            self.pose_subscribers.append(subscription)
            rospy.loginfo(f'Created subscription for {topic_name}')

    def follow_leader(self, pose, turtle):   # Callback controlling turtles by sending Twist messages
        vel_msg = Twist()
        vel_msg.linear.x = self.linear_vel(self.goal_pose, pose)
        vel_msg.linear.y = 0.0
        vel_msg.linear.z = 0.0

        vel_msg.angular.x = 0.0
        vel_msg.angular.y = 0.0
        vel_msg.angular.z = self.angular_vel(self.goal_pose, pose)

        if self.leader_name and self.received_turtle_names[turtle] != self.leader_name and self.euclidean_distance(self.goal_pose, pose) > float(3):
            # Sends movement messages to turtles if three conditions are met: leader is specified, turtle names are received, and turtles are at a certain distance from the leader
            # This ensures turtles try to be at the same position as the leader, without going out of control and being more easily visible under each other.
            self.cmd_vel_publishers[turtle].publish(vel_msg)

    def handle_follow_turtle(self, req):        # Callback sending leader turtle's position to goal_pose topic
        response = TurtleFollowResponse()
        self.leader_name = req.leader
        if self.leader_name in self.received_turtle_names:
            response.status = "ok"
        else:
            response.status = f"This turtle doesn't exist. Choose one on the list: {self.received_turtle_names}"
        topic_name = f'/{self.leader_name}/pose'
        rospy.loginfo(f"Subscribing to leader's topic: {topic_name}")

        if self.current_leader_topic != topic_name:         # If a previous leader is already determined, it unsubscribes from that leader's topic and creates a new subscriber for the new leader's position
                                                            # This prevents multiple turtles' positions from being published to the goal_pose topic simultaneously
            if self.current_leader_topic is not None:
                rospy.loginfo(f"Unsubscribing from previous leader's topic: {self.current_leader_topic}")
                self.pose_subscriber.unregister()

            self.pose_subscriber = rospy.Subscriber(topic_name, Pose, self.pose_callback)
            self.current_leader_topic = topic_name

        return response

    def pose_callback(self, req):                       # Publishes goal_pose object using goal_publisher
        self.goal_pose = req
        self.goal_pose.x = round(self.goal_pose.x, 2)
        self.goal_pose.y = round(self.goal_pose.y, 2)
        self.goal_publisher.publish(self.goal_pose)

    def name_callback(self, msg):                        # Adds created turtle names to received_turtle_names and creates publishers and subscribers once names are received
        for message in msg.data:
            self.received_turtle_names.append(message)
        rospy.loginfo(f'Received turtle name: {self.received_turtle_names}')
        self.create_publishers()
        self.create_subscriptions()

    def euclidean_distance(self, goal_pose, pose):         # Calculates distance
        return sqrt(pow((goal_pose.x - pose.x), 2) + pow((goal_pose.y - pose.y), 2))

    def linear_vel(self, goal_pose, pose, constant=0.5):     # Calculates linear velocity
        return constant * self.euclidean_distance(goal_pose, pose)

    def steering_angle(self, goal_pose, pose):             # Calculates steering angle
        return atan2(goal_pose.y - pose.y, goal_pose.x - pose.x)

    def angular_vel(self, goal_pose, pose, constant=3):          # Calculates angular velocity
        return constant * (self.steering_angle(goal_pose, pose) - pose.theta)

def main():
    TFollowServer()
    rospy.spin()

if __name__ == "__main__":
    main()
