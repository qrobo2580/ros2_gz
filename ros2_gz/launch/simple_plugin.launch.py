import os
from ament_index_python.packages import get_package_share_directory
from launch import LaunchDescription
from launch.actions import IncludeLaunchDescription
from launch.launch_description_sources import PythonLaunchDescriptionSource
from launch.substitutions import PathJoinSubstitution
from launch_ros.substitutions import FindPackageShare
from launch_ros.actions import Node

def generate_launch_description():

    world = os.path.join(get_package_share_directory('ros2_gz'),
        'worlds', 'empty.world')

    gazebo = IncludeLaunchDescription(
        PythonLaunchDescriptionSource(
            [PathJoinSubstitution([FindPackageShare("gazebo_ros"), "launch", "gazebo.launch.py"])]
        ),
        launch_arguments={'world': world, 'verbose': "false",
                         'extra_gazebo_args': 'verbose'}.items())

    urdf_path = os.path.join(
        get_package_share_directory('ros2_gz'),
        'urdf', 'simple.urdf')

    spawn_entity = Node(
        package="gazebo_ros",
        executable="spawn_entity.py",
        arguments=['-file', urdf_path, '-entity', 'simple_model',
                   '-x', '0.0','-y', '0.0', '-z', '0.0'],
        output="screen")

    return LaunchDescription([
        gazebo,
        spawn_entity,
    ])
