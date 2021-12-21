/*
 * @Author: Tong He
 * @Date: 2021-12-14 19:21:39
 * @LastEditTime: 2021-12-18 22:38:08
 * @LastEditors: Please set LastEditors
 * @Description: main file
 * @FilePath: /undefined/home/tong/Vention/src/main.cpp
 */
#include <iostream>
#include "Car.h"
#include "Observer.h"
#include "ConcreteObserver.h"
#include <thread>
#include <functional>
#include <ncurses.h>
#include <atomic>
#include <stdio.h>
#include "Thread.h"
#include <ros/ros.h>
#include <vector>
#include <serv_msgs/tong.h>
int main(int argc, char **argv)
{
	
     ros::init(argc, argv, "offb_node");
     ros::NodeHandle n;
     ros::Publisher msg_pub = n.advertise<serv_msgs::tong>("Position_msg",10);
     ros::Rate rate(20.0);
     serv_msgs::tong msg_temp;
    
    // while (ros::ok())
    // {
    //    msg_temp.h =int32_t(1);
    //    msg_pub.publish(msg_temp) ;
    //    ros::spinOnce();
	//    rate.sleep();
    // }

    
    Car* p = new ConcreteCar();
    //Observer * Observer_Car1 = new ConcreteObserver("Car1_Position", p);
    //p->addObserver(Observer_Car1);
    p->SetPos(1.0);
    p->SetV(1.0);
    //p->notifyObservers();

    Car* p1 = p->Clone();
    p1->SetPos(3.0);
    p1->SetV(2.0);
    
    // Observer * Observer_Car1 = new ConcreteObserver("Car1_Position", p1);
    // p1->addObserver(Observer_Car1);

    Car* p2 = p->Clone();
    p2->SetPos(5.0);
    p2->SetV(-1.0);


    Car* p3 = p->Clone();
    p3->SetPos(6.0);
    p3->SetV(1.0);

    Car* p4 = p->Clone();
    p4->SetPos(10.0);
    p4->SetV(-2.0);


    Thread testThread(p,p1,p2,p3,p4,msg_pub,msg_temp);
    testThread.runProcess();
    int c;
    while ((c = getchar()) != 'q')
    {
        switch(c)
        {
            case 'p':

                testThread.pause();
                break;
            case 'r':
                testThread.resume();
                break;
            case 's':
                testThread.stop();
                break;
        }
    }
    
    //std::thread t(&Car::Distance,p1,p,p3);
    //t.join();
    //std::thread t1(&Car::Distance,p3,p1,p2);
    //t1.join();



    return 0;
}

