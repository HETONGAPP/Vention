/*
 * @Author: TONG HE
 * @Date: 2021-12-18 18:20:26
 * @LastEditTime: 2021-12-18 22:53:27
 * @LastEditors: Please set LastEditors
 * @Description: 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
 * @FilePath: /undefined/home/tong/Downloads/testThread/TestThread.cpp
 */
#include "Thread.h"
#include <iostream>
#include <fstream>
#include <thread>
#include "Car.h"
#include <ros/ros.h>
#include <vector>
#include <serv_msgs/tong.h>
void Thread::runProcess()
{	
    ros::Rate rate(20.0);
    std::thread testThread(
       [&]{

        for(int i = 0; i >=0; i++)
        {
            if(!m_isStop)
            {
                 std::cout << "current process progress: " << i << std::endl;
		         msg.Position_Car1 = int32_t(car1->GetPos());
                 msg.Position_Car2 = int32_t(car2->GetPos());
                 msg.Position_Car3 = int32_t(car3->GetPos());
                 msg.Position_Car4 = int32_t(car4->GetPos());
                 msg.Position_Car5 = int32_t(car5->GetPos());
		         publisher.publish(msg);
                 car1->Distance();
                 car2->Distance();
                 car3->Distance();
                 car4->Distance();
                 car5->Distance();

                 if(car1->GetPos()<=1||car1->GetPos()>=car2->GetPos())
    	            car1->SetV(-1*car1->GetV());
                 if(car2->GetPos()<=car1->GetPos()||car2->GetPos()>=car3->GetPos())
    	            car2->SetV(-1*car2->GetV());
                 if(car3->GetPos()<=car2->GetPos()||car3->GetPos()>=car4->GetPos())
    	            car3->SetV(-1*car3->GetV());
                 if(car4->GetPos()<=car3->GetPos()||car4->GetPos()>=car5->GetPos())
    	            car4->SetV(-1*car4->GetV());
                 if(car5->GetPos()>=20||car4->GetPos()>=car5->GetPos())
    	            car5->SetV(-1*car5->GetV());
                 
                 car1->notifyObservers();
                 car2->notifyObservers();
                 car3->notifyObservers();
                 car4->notifyObservers();
                 car5->notifyObservers();

                std::this_thread::sleep_for(std::chrono::milliseconds(100));
                ros::spinOnce();
                 //rate.sleep();
                std::unique_lock<std::mutex> lock(m_mutex);
                m_cv.wait(lock, [this]{return !m_isPause;});
            }else{
                break;
            }
        }

    });
    testThread.detach();
}

void Thread::pause()
{
    std::vector<int> vecNumbers;

		

    std::cout<<"[Reconfig Cars] Please input the position of 5 Cars in order: "<<std::endl;
    std::unique_lock<decltype(m_mutex)> l(m_mutex);
    int count=5; 
    while(count>0)
    {
       int value;
       std::cout << "Enter the Position of 5 Cars in order: ";
       std::cin >> value; // don't forget the semicolon
       if(!std::cin.fail()) // not having this will add another 0 to the vector
       vecNumbers.push_back(value);
       --count;
     };
	car1->SetPos(vecNumbers[0]);
	car2->SetPos(vecNumbers[1]);
	car3->SetPos(vecNumbers[2]);
	car4->SetPos(vecNumbers[3]);
	car5->SetPos(vecNumbers[4]);
    count=5; 
    vecNumbers.clear();
    vecNumbers.shrink_to_fit();
    while(count>0)
    {
       int value;
       std::cout << "Enter the Velocity of 5 Cars in order: ";
       std::cin >> value; // don't forget the semicolon
       if(!std::cin.fail()) // not having this will add another 0 to the vector
       vecNumbers.push_back(value);
       --count;
     };
	car1->SetV(vecNumbers[0]);
	car2->SetV(vecNumbers[1]);
	car3->SetV(vecNumbers[2]);
	car4->SetV(vecNumbers[3]);
	car5->SetV(vecNumbers[4]);
    m_isPause = true;
    m_cv.notify_one();
}

void Thread::resume()
{
    std::cout<<"[Mission Resume] ...."<<std::endl;
    std::unique_lock<decltype(m_mutex)> l(m_mutex);
    m_isPause = false;
    m_cv.notify_one();
}

void Thread::stop()
{
    std::cout<<"[Mission finish] ...."<<std::endl;
    m_isStop = true;
}


