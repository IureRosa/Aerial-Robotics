# Aerial-Robotics

How can we create agile micro aerial vehicles that are able to operate autonomously in cluttered indoor and outdoor environments?  You will gain an introduction to the mechanics of flight and the design of quadrotor flying robots and will be able to develop dynamic models, derive controllers, and synthesize planners for operating in three dimensional environments.  You will be exposed to the challenges of using noisy sensors for localization and maneuvering in complex, three-dimensional environments.  Finally, you will gain insights through seeing real world examples of the possible applications and challenges for the rapidly-growing drone industry.

Mathematical prerequisites: Students taking this course are expected to have some familiarity with linear algebra, single variable calculus, and differential equations.

Programming prerequisites: Some experience programming with MATLAB or Octave is recommended (we will use MATLAB in this course.) MATLAB will require the use of a 64-bit computer.

## Introduction to Aerial Robotics

You will be introduced to the exciting field of Unmanned Aerial Robotics (UAVs) and quadrotors in particular. You will learn about their basic mechanics and control strategies and realize how careful component selection and design affect the vehicles' performance. This week also provides you with instructions on how to download and install Matlab. This software will be used throughout this course in exercises and assignments, so it is strongly recommended to familiarize yourself with Matlab soon.

## Geometry and Mechanics

Will first focus on the kinematics of quadrotors. Then, you will learn how to derive the dynamic equations of motion for quadrotors. To build a better understanding on these notions, some essential mathematical tools are discussed in supplementary material lectures. In this week, you will also complete your first programming assignment on 1-D quadrotor control. If you have not done so already, please download, install, and learn about Matlab before starting the assignment.

## Planning and Control

We have developed planar and three-dimensional dynamic models of the quadrotor. This week, you will learn more about how to develop linear controllers for these models. With this knowledge, you will be required to complete the second programming assignment of this course, which focuses on controlling the quadrotor in two dimensions. We encourage you to start working on the assignment soon. This week ends with a discussion on motion planning for quadrotors.

## Advanced Topics

So far, we have gone over the basics of developing linear controllers for quadrotors and motion planning. In this last week of the course, we will discuss some more advanced material on how to enable quadrotors to perform more agile maneuvers and to operate autonomously in teams. Note that the last programming assignment on quadrotor control in three dimensions uses material from the previous weeks. It is strongly recommended to start the assignment as soon as possible.

[//]: # (Image References)

[image1]:./Images/Project%201/1-D_Quadrotor.jpg
[image2]:./Images/Project%202/quad.jpg

This respoitory contains projects done in the  Aerial Robotics course part of the Robotics Specailization at Coursera. The course was  taught by Prof Vijay Kumar at UPenn. This respotiry is meant to share the results of the projects done and their implementation.

_**Orignal source code is provided and licensed by Coursera Robotics Specailization. Please do not plagarize if you are a student of the course as that would violate the Coursera Honor Code. My only contribution here is filling the skeleton source code to complete the needed tasks & objectives in the Projects.**_

### For more information on the course :

 * Coursera Page for [Robotics specialization](https://www.coursera.org/specializations/robotics) 
 * Coursera Page for [Aerial Robotics](https://www.coursera.org/learn/robotics-flight) 
 
## Programming Project 1 - PD Control of Quadrator height in 1-D

__**Objective :**__ The goal of  this exercise is  to implement a PD controller to control the height of a quadrotor, as well
as tune its gains. The controller only contains a Proportional and Derivate gain. In addition the input should
have a rise time of less than 1s and a maximum overshoot of less than 5%.
                                          
 <p align="center"><img src="./Images/Project%201/1-D_Quadrotor.jpg" /></p>

__**Results Obtained :**__

 <p align="center"><img src="./Images/Project%201/pdcontrol_1d.gif" /></p>


## Programming Project 2 - PD Control of Quadrator in 2-D Plane 

__**Objective :**__ 

The goal of  this exercise is  to implement a PD controller to control the motion of a quadrotor in 2-D plane , as well as tune its gains. The controller only contains a Proportional and Derivate gain. In addition the input should
have a rise time of less than 1s and a maximum overshoot of less than 5%. Two trajectories were tested. The first was quadrotor on a straight line while the second was a trajectory on a sine wave plath.

 <p align="center"><img src="./Images/Project%202/quad.jpg" /></p>
 
 
__**Results Obtained for Line Trajectory :**__

 <p align="center"><img src="./Images/Project%202/line_2d.gif" /></p>
 
 __**Results Obtained for Sine Wave Trajectory :**__

 <p align="center"><img src="./Images/Project%202/sine_2d.gif" /></p>
 
