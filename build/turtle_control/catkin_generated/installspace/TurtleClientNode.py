import sys
import rospy
from turtle_control.srv import TurtleCreate

class TurtleClientNode:
    def __init__(self):
        rospy.init_node("TurtleClientNode", anonymous=True)
        rospy.wait_for_service('turtle_create')
        try:
            self.turtle_create_service = rospy.ServiceProxy('turtle_create', TurtleCreate)
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)

    def send_create_turtlebot(self, count):
        try:
            response = self.turtle_create_service(count)
            return response.status
        except rospy.ServiceException as e:
            rospy.logerr("Service call failed: %s" % e)
            return None

def main():
    if len(sys.argv) != 2:
        print("Usage: TurtleClientNode.py [num_turtles]")
        sys.exit(1)

    num_turtles = int(sys.argv[1])
    cli = TurtleClientNode()
    status = cli.send_create_turtlebot(num_turtles)
    rospy.loginfo("Response: %s" % status)

if __name__ == '__main__':
    main()
