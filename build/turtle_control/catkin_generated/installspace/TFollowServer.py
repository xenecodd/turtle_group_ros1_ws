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
        self.serv = rospy.Service('turtle_follow', TurtleFollow, self.handle_follow_turtle)
        self.goal_pose = Pose()
        self.current_leader_topic = None  # To store the current leader topic subscription
        self.received_turtle_names = []
        self.name_sub = rospy.Subscriber('turtle_names', StringArray, self.name_callback)
        self.leader_name = None
        self.goal_publisher = rospy.Publisher('/goal_pose', Pose, queue_size=10)
        self.goal_sub = rospy.Subscriber('/goal_pose', Pose, self.goal_pose_callback)
        self.cmd_vel_publishers = []
        self.pose_subscribers = []

    def goal_pose_callback(self, goal):
        self.goal_pose = goal

    def create_publishers(self):
        for i in self.received_turtle_names:
            topic_name = f'/{i}/cmd_vel'
            publisher = rospy.Publisher(topic_name, Twist, queue_size=10)
            self.cmd_vel_publishers.append(publisher)
            rospy.loginfo(f'Created publisher for {topic_name}')

    def create_subscriptions(self):
        for i, turtle_name in enumerate(self.received_turtle_names):
            topic_name = f'/{turtle_name}/pose'
            subscription = rospy.Subscriber(topic_name, Pose, partial(self.follow_leader, turtle=i))
            self.pose_subscribers.append(subscription)
            rospy.loginfo(f'Created subscription for {topic_name}')

    def follow_leader(self, pose, turtle):
        vel_msg = Twist()
        vel_msg.linear.x = self.linear_vel(self.goal_pose, pose)
        vel_msg.linear.y = 0.0
        vel_msg.linear.z = 0.0

        vel_msg.angular.x = 0.0
        vel_msg.angular.y = 0.0
        vel_msg.angular.z = self.angular_vel(self.goal_pose, pose)

        if self.leader_name and self.received_turtle_names[turtle] != self.leader_name:
            self.cmd_vel_publishers[turtle].publish(vel_msg)

    def handle_follow_turtle(self, req):
        response = TurtleFollowResponse()
        self.leader_name = req.leader
        if self.leader_name in self.received_turtle_names:
            response.status = "ok"
        else:
            response.status = f"This turtle doesn't exist. Choose one on the list: {self.received_turtle_names}"
        topic_name = f'/{self.leader_name}/pose'
        rospy.loginfo(f"Subscribing to leader's topic: {topic_name}")

        if self.current_leader_topic != topic_name:
            if self.current_leader_topic is not None:
                rospy.loginfo(f"Unsubscribing from previous leader's topic: {self.current_leader_topic}")
                self.pose_subscriber.unregister()

            self.pose_subscriber = rospy.Subscriber(topic_name, Pose, self.pose_callback)
            self.current_leader_topic = topic_name

        return response

    def pose_callback(self, req):
        self.goal_pose = req
        self.goal_pose.x = round(self.goal_pose.x, 2)
        self.goal_pose.y = round(self.goal_pose.y, 2)
        self.goal_publisher.publish(self.goal_pose)

    def name_callback(self, msg):
        for message in msg.data:
            self.received_turtle_names.append(message)
        rospy.loginfo(f'Received turtle name: {self.received_turtle_names}')
        self.create_publishers()
        self.create_subscriptions()

    def euclidean_distance(self, goal_pose, pose):
        return sqrt(pow((goal_pose.x - pose.x), 2) + pow((goal_pose.y - pose.y), 2))

    def linear_vel(self, goal_pose, pose, constant=0.5):
        return constant * self.euclidean_distance(goal_pose, pose)

    def steering_angle(self, goal_pose, pose):
        return atan2(goal_pose.y - pose.y, goal_pose.x - pose.x)

    def angular_vel(self, goal_pose, pose, constant=3):
        return constant * (self.steering_angle(goal_pose, pose) - pose.theta)

def main():
    service = TFollowServer()
    rospy.spin()

if __name__ == "__main__":
    main()
