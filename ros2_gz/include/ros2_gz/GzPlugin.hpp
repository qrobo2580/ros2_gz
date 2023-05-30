#ifndef ROS2_GZ__GZ_PLUGIN
#define ROS2_GZ__GZ_PLUGIN


#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/Events.hh>

#include <rclcpp/rclcpp.hpp>
#include <std_msgs/msg/empty.hpp>
#include <std_msgs/msg/int32.hpp>

namespace gazebo
{
  class GzPlugin : public ModelPlugin
  {
  public:
    GzPlugin();
    virtual ~GzPlugin();

    virtual void Load(physics::ModelPtr _model, sdf::ElementPtr _sdf) override;
    virtual void Update();
    void UpdatePub();

  private:
    // ros node
    std::shared_ptr<rclcpp::Node> node_;
    std::shared_ptr<rclcpp::executors::SingleThreadedExecutor> executor_;

    // sub and pub
    rclcpp::Subscription<std_msgs::msg::Empty>::SharedPtr empty_sub_;
    rclcpp::Publisher<std_msgs::msg::Int32>::SharedPtr int32_pub_;

    void EmptyCallback(const std_msgs::msg::Empty::SharedPtr msg);

    physics::WorldPtr world;
    physics::ModelPtr model;
    physics::LinkPtr link;

    // Pointer to the update event connection
    event::ConnectionPtr updateConnection;

    double my_num;
    int64_t pub_count, sub_count;
  };

}


#endif
