# ros2_gz

: tried in ros2 humble version. 

#
[launch]

$ ros2 launch ros2_gz simple_plugin.launch.py
#


TEST for checking publishing topic from node....,

$ ros2 topic echo --flow-style /simple_model/int32_topic

#

send the topic to the node.....,

$ ros2 topic pub /simple_model/empty_topic std_msgs/msg/Empty {} --once
