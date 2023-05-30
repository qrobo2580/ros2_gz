# ros2_gz

: tried in ros2 humble version. 

#
#


TEST for checking publishing topic from node....,

$ ros2 topic echo --flow-style /simple_model/int32_topic


send the topic to the node.....,

$ ros2 topic pub /simple_model/empty_topic std_msgs/msg/Empty {} --once
