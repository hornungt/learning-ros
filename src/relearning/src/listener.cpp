#include "ros/ros.h"
#include "relearning/Custom.h"


// method call back that handles subscription data
// takes in a constant pointer reference of type std_msgs::String
void callback(const relearning::Custom::ConstPtr& msg)
{
	ROS_INFO("Node 'listener' heard %s", msg->str_data.c_str());
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "listener"); // init a node with the name 'listener'

	ros::NodeHandle n; // create a nodehandle, makes it easier for ros to handle nodes

	// create a subscriber object that listens on the 'chatter' topic
	// and responds to new data with the chatter_callback() method
	ros::Subscriber sub = n.subscribe("topic2", 10, callback);

	// this continues the node, and automatically stops the node once ros::ok() returns false
	// or ros is shutdown
	ros::spin();

}
