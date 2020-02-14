#include "ros/ros.h"
#include "relearning/Custom.h"

#include <sstream>

int main(int argc, char **argv)
{
	ros::init(argc, argv, "talker"); // start the node with name "talker"

	ros::NodeHandle n; // create a NodeHandle, which acts as an access point to the ROS system

	// create a publisher object to advertise(=publish) messages to the chatter topic
	// with message queue size = 10, ie can hold 10 next messages to send
	ros::Publisher chatter_pub = n.advertise<relearning::Custom>("topic1", 10);

	// specifies the rate at which the main() method is called to run
	// which means the rate at which the node executes
	// here rate = 10 Hz
	ros::Rate loop_rate(10);

	int count = 0;
	while (ros::ok())
	{
		// create a message object that holds a String
		relearning::Custom msg;
		
		// create a string stream, allows you to concatenate a bunch of text
		std::stringstream ss;
		ss << "hello world " << count;
		
		// set the data of the std_msgs::String msg to the str(ing) value of the string stream		
		msg.str_data = ss.str();

		// log info to the ros log
		// here, logging the message data as a C string
		ROS_INFO("%s", msg.str_data.c_str());

		// publish the message to the "chatter" topic
		chatter_pub.publish(msg);

		// not needed here, but
		// if were also subscribing to a topic, then need to call spinOnce,
		// otherwise, callbacks would never be called
		ros::spinOnce();

		// have the node sleep for until it satisfies the rate specified
		loop_rate.sleep();

		++count;
	}

	return 0;

}
