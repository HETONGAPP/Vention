/*
 * @Author: TONG HE
 * @Date: 2021-12-18 18:55:16
 * @LastEditTime: 2021-12-18 22:43:33
 * @LastEditors: Please set LastEditors
 * @Description: 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 * @FilePath: /undefined/home/tong/Vention/include/Thread.h
 */
#pragma once

#include <memory>
#include <mutex>
#include <string>
#include <vector>
#include <condition_variable>
#include "Car.h"
#include <ros/ros.h>

#include <serv_msgs/tong.h>
class Thread{
public:
    Thread(Car* c1,Car* c2,Car* c3,Car* c4,Car* c5,ros::Publisher p,serv_msgs::tong m)
    :m_isPause(false), 
    m_isStop(false),car1(c1),car2(c2),car3(c3),car4(c4),car5(c5),publisher(p),msg(m)
    {

    }

    void runProcess();

    void pause();

    void resume();

    void stop();

private:

    std::condition_variable m_cv;
    std::mutex m_mutex;
    bool m_isPause;
    bool m_isStop;
    Car* car1;
    Car* car2;
    Car* car3;
    Car* car4;
    Car* car5;
    ros::Publisher publisher;
    serv_msgs::tong msg;
};
