import random
import rospy
from turtlesim.srv import Spawn
from turtle_control.srv import TurtleCreate, TurtleCreateResponse
from turtle_control.msg import StringArray

class TurtleServerNode:
    def __init__(self):
        rospy.init_node("TurtleServerNode", anonymous=True)
        self.serv = rospy.Service('turtle_create', TurtleCreate, self.handle_create_turtle) # Retrieves the number of turtles from the /turtle_create service
        self.spawn_client = rospy.ServiceProxy('spawn', Spawn)                              # Calls the turtlesim spawn service
        self.name_pub = rospy.Publisher('turtle_names', StringArray, queue_size=10)

        self.turtle_names = ["turtle1"]    # Stores turtle names. Initialized with "turtle1" because it will be updated with /turtle_create service and turtle1 was exist in the beginning not created by /turtle_create service
        self.publish_turtle_names()        # Sends turtle names to TFollowServer. Thus, when a non-existent turtle name is entered by the user, they can be informed which turtles exist.

    def handle_create_turtle(self, req):   # Callback that handles turtle creation
        response = TurtleCreateResponse()
        response.status = "ok"
        rospy.loginfo("Server called!")

        for i in range(req.num):            # Determines the positions and names of turtles
            request = Spawn()
            request.x = random.uniform(1, 10)
            request.y = random.uniform(1, 10)
            request.theta = random.uniform(0, 6.28)
            request.name = f'turtle{len(self.turtle_names) + 1}'
            self.turtle_names.append(request.name)
            print(self.turtle_names)
            try:
                self.spawn_client(request.x, request.y, request.theta, request.name) # Sends the creation request with the given parameters
                rospy.loginfo(f'Spawning turtle: {request.name}')
            except rospy.ServiceException as e:
                rospy.logerr("Service call failed: %s" % e)
                response.status = "error"
        
        self.publish_turtle_names()         # Sends turtle names to TFollowServer. Thus, when a non-existent turtle name is entered by the user, they can be informed which turtles exist.
        return response

    def publish_turtle_names(self):
        self.name_pub.publish(self.turtle_names)

def main():
    TurtleServerNode()
    rospy.spin()

if __name__ == "__main__":
    main()
