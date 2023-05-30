#include <iostream>
#include "ros2_gz/GzPlugin.hpp"

namespace gazebo
{
    rclcpp::Logger logger(rclcpp::get_logger("logger"));

    GzPlugin::GzPlugin() : pub_count(0), sub_count(0)
    {
        std::cout << "\n Gz Plugin Constructor \n"
                  << std::endl;
    }

    GzPlugin::~GzPlugin()
    {
        std::cout << "\n Gz Plugin Destructor \n"
                  << std::endl;
    }

    void GzPlugin::Load(physics::ModelPtr _model, sdf::ElementPtr _sdf)
    {
        if (!rclcpp::ok())
            RCLCPP_FATAL(logger, "A ROS node NOT initialized");


        world = _model->GetWorld();
        RCLCPP_INFO(logger, "World : %s", this->world->Name().c_str());

        model = _model;
        std::string model_name_ = _model->GetName().substr(0, _model->GetName().find("::"));
        RCLCPP_INFO(logger, "Model Name : %s", model_name_.c_str());

        std::string link_name = this->model->GetName() + "::" + _sdf->Get<std::string>("link1");
        this->link = this->model->GetLink(link_name);

        
        if (!this->link)
        {
            RCLCPP_ERROR(logger, "Could not find link name");
            return;
        }
        RCLCPP_INFO(logger, "Link1  : %s", this->link->GetName().c_str());

        if (!_sdf->HasElement("force_num"))
            my_num = 98.0;
        else
            my_num = _sdf->GetElement("force_num")->Get<double>();

        RCLCPP_INFO(logger, "force_num  : %.2f", my_num);

        // node & executor instance create
        node_ = std::make_shared<rclcpp::Node>("ros_gz_node", model_name_);
        executor_ = std::make_shared<rclcpp::executors::SingleThreadedExecutor>();

        std::string int32_topic = "int32_topic";
        std::string empty_topic = "empty_topic";

        // subscriber
        if (!empty_topic.empty())
        {
            empty_sub_ = node_->create_subscription<std_msgs::msg::Empty>(
                empty_topic, rclcpp::QoS(rclcpp::KeepLast(1)),
                std::bind(&GzPlugin::EmptyCallback, this, std::placeholders::_1));

            if (empty_sub_->get_topic_name()[0] != '\0')
                RCLCPP_INFO(logger, "std_msg Empty Sub topic : %s ", empty_sub_->get_topic_name());
            else
                RCLCPP_WARN(logger, "Can NOT sub the topic: %s !", empty_topic.c_str());
        }
        else
            RCLCPP_ERROR(logger, "No Sub Topic configured!");


        // publisher
        if (!int32_topic.empty())
        {
            int32_pub_ = node_->create_publisher<std_msgs::msg::Int32>(int32_topic, 100);

            if (int32_pub_->get_topic_name()[0] != '\0')
                RCLCPP_INFO(logger, "Publishing topic name : %s ", int32_pub_->get_topic_name());
            else
                RCLCPP_WARN(logger, "Can NOT pub the topic : %s ", int32_topic.c_str());
        }
        else
            RCLCPP_ERROR(logger, "No pub topic configured!");

        executor_->add_node(node_);

        updateConnection = gazebo::event::Events::ConnectWorldUpdateBegin(
            std::bind(&GzPlugin::Update, this));
    }



    void GzPlugin::EmptyCallback(const std_msgs::msg::Empty::SharedPtr msg)
    {
        sub_count++;        
        RCLCPP_INFO(logger, "Got empty topic Sub count : %ld!!", sub_count);
    }



    void GzPlugin::Update()
    {
        executor_->spin_some(std::chrono::milliseconds(100));

        UpdatePub();
    }



    void GzPlugin::UpdatePub()
    {
        rclcpp::sleep_for(std::chrono::milliseconds(100));

        std_msgs::msg::Int32 pub_msg;
        pub_msg.data = pub_count;
        int32_pub_->publish(pub_msg);
        pub_count++;
    }


    GZ_REGISTER_MODEL_PLUGIN(GzPlugin)
}



// for checking publishing topic from node...., 
// ros2 topic echo --flow-style /simple_model/int32_topic

// send the topic to the node.....,
// ros2 topic pub /simple_model/empty_topic std_msgs/msg/Empty {} --once