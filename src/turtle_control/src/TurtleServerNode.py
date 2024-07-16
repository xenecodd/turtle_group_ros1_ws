import random
import rospy
from turtlesim.srv import Spawn
from turtle_control.srv import TurtleCreate, TurtleCreateResponse
from turtle_control.msg import StringArray

class TurtleServerNode:
    def __init__(self):
        rospy.init_node("TurtleServerNode", anonymous=True)
        self.serv = rospy.Service('turtle_create', TurtleCreate, self.handle_create_turtle)
        self.spawn_client = rospy.ServiceProxy('spawn', Spawn)
        self.name_pub = rospy.Publisher('turtle_names', StringArray, queue_size=10)

        self.turtle_names = ["turtle1"]
        self.publish_turtle_names()

    def handle_create_turtle(self, req):
        response = TurtleCreateResponse()
        response.status = "ok"
        rospy.loginfo("Server called!")

        for i in range(req.num):
            request = Spawn()
            request.x = random.uniform(1, 10)
            request.y = random.uniform(1, 10)
            request.theta = random.uniform(0, 6.28)
            request.name = f'turtle{len(self.turtle_names) + 1}'
            self.turtle_names.append(request.name)
            print(self.turtle_names)
            try:
                self.spawn_client(request.x, request.y, request.theta, request.name)
                rospy.loginfo(f'Spawning turtle: {request.name}')
            except rospy.ServiceException as e:
                rospy.logerr("Service call failed: %s" % e)
                response.status = "error"
        
        self.publish_turtle_names()
        return response

    def publish_turtle_names(self):
        self.name_pub.publish(self.turtle_names)

def main():
    TurtleServerNode()
    rospy.spin()

if __name__ == "__main__":
    main()
