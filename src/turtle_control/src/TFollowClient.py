import sys
import rospy
from turtle_control.srv import TurtleFollow, TurtleFollowRequest

class TFollowClient:
    def __init__(self):
        rospy.init_node("TFollowClient", anonymous=True)
        rospy.wait_for_service('turtle_follow')
        try:
            self.turtle_follow_service = rospy.ServiceProxy('turtle_follow', TurtleFollow)
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)

    def select_leader_turtlebot(self):             # Sends the selected turtlebot's name to the server
        req = TurtleFollowRequest()  
        req.leader = input("Leader turtlebot name: ")
        try:
            response = self.turtle_follow_service(req)
            return response.status
        except rospy.ServiceException as e:         # Prints to the screen if the service call fails
            rospy.logerr("Service call failed: %s" % e)
            return None

def main():
    if len(sys.argv) != 1:
        print("Usage: TFollowClient.py")
        sys.exit(1)

    cli = TFollowClient()
    status = cli.select_leader_turtlebot()
    rospy.loginfo("Response: %s" % status)

if __name__ == '__main__':
    main()
