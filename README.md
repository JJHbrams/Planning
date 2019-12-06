# Planning
CS572 path planning module
# CS572 planning
A source code folder
This source code is written based on ROS environment with "OMPL" and "Moveit!"  
So it won't run if your desktop is not set for such environment.  
1. src/main.cpp : main function which make a primitive path, display the path, ...  
2. src/UncertainKinodynamicPlanner.cpp and UncertainKinodynamicPlanner.h : path planning library which make the path based on RRT*  
3. urdf : robot's model using html  
4. src/scene.cpp : Can make a synthetic map by locate obstacles.  

## CS572 lqr
This is for lqr control of CS572 project  
1. path, path_geo, path_geo0 is text files which stores path data, (x,y,yaw)  
2. pathLQR.m is a test file for lqr   
3. DDMR2.slx si a simulink file which act actually as a controller.  
I designed our controller to make the error between primitive path and current state. So i designed the error's state space representation and differential function based on following paper, "Differential-Drive Mobile Robot Control Design based-on Linear Feedback Control Law", which also uploaded in here.  
4. There;s also a opensource code which can make car-like robot/differential robot's trajectory tracking. but they are written in python and had short of time I didn't use it yet think they would be very helpful. I'll link them
A. lqar speed control for differential drive : https://github.com/AtsushiSakai/PythonRobotics/blob/master/PathTracking/lqr_speed_steer_control/lqr_speed_steer_control.py  
B. Car-like robot's trajectory tracking : https://github.com/AtsushiSakai/PythonRobotics/blob/master/docs/modules/Model_predictive_speed_and_steering_control.rst  
Since the given path is a text file, it won't be hard to use these open sources.  
*Once the controller calculates all ofthe path then please make the resultant (x,y,yaw) as a text file. then I can simulate it on our environment. Unless you may use open sources as visualizer also.
