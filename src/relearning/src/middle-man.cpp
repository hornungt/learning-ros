#include "ros/ros.h"
#include "relearning/Custom.h"

#include <sstream>

std::string last_data;
std::string next_data;

void callback(const relearning::Custom::ConstPtr& data)
{
	last_data = next_data;
	next_data = data->str_data;
}

int main(int argc, char **argv)
{
	ros::init(argc, argv, "middleMan");

	ros::NodeHandle n;
	
	ros::Subscriber sub = n.subscribe("topic1", 10, callback);
	ros::Publisher pub = n.advertise<relearning::Custom>("topic2", 10);
	
	ros::Rate loop_rate(10);

	while (ros::ok())
	{
		relearning::Custom msg;

		std::stringstream ss;

		ss << "M::" << next_data;
		msg.str_data = ss.str();
		pub.publish(msg);

		ros::spinOnce();
		loop_rate.sleep();
	}

	return 0;
}
