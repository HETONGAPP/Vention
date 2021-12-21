/*
 * @Author: Tong He
 * @Date: 2021-12-14 18:37:53
 * @LastEditTime: 2021-12-18 19:42:13
 * @LastEditors: Please set LastEditors
 * @Description: Car.cpp
 * @FilePath: /undefined/home/tong/Vention/src/Car.cpp
 */
#include "Car.h"
#include <iostream>



Car::Car()
{

}
Car::~Car()
{

}
Car* Car::Clone() const
{
    return 0;
}
void Car::VehicleID()
{

}

int Car::GetV() const 
{
    return 0;
}
int Car::GetPos() const 
{   
    return 0;

}

void Car::SetPos(double Pos)
{
    
}

void Car::SetV(double V)
{

}



void Car::addObserver(Observer *observer)
{
    m_observers.push_back(observer);
};

void Car::deleteObserver(Observer *observer)
{
    for (auto iter = m_observers.begin();
        iter != m_observers.end(); iter++)
    {
        if(*iter == observer)
        {
            m_observers.erase(iter);
            return;
        }
    }
};

void Car::notifyObservers()
{
    for (auto iter = m_observers.begin();
        iter != m_observers.end();
        iter++)
    {
        (*iter)->update();
    }
}















int ConcreteCar::ID = 0;

void ConcreteCar::VehicleID()
{
    
    std::cout<<"[INFO] This Car ID is: "<<car_id
    <<" Total Cars' nums: "<< ID+1<<std::endl;
}

ConcreteCar::ConcreteCar()
{
    std::cout<<"[INFO] Initializing"<<"..."<<" ID:"
    <<ID <<" car has been created"<<std::endl;
}
ConcreteCar::~ConcreteCar()
{

}

int ConcreteCar::GetV() const  
{
    //std::cout<<"[INFO] ID:"<<car_id<<" Velocity:"<<Speed<<" m/s"<<std::endl;
    return Speed;
}
int ConcreteCar::GetPos() const 
{
    //std::cout<<"[INFO] ID:"<<car_id<<" Position:"<<Position<<" m"<<std::endl;
    return Position;
}

void ConcreteCar::SetPos(double Pos)
{
    Position = Pos;
}

void ConcreteCar::SetV(double V)
{
    Speed = V;
}

ConcreteCar::ConcreteCar(const ConcreteCar& cp)
{
    car_id = ID;
    std::cout<<"[INFO] Initializing"<<"..."<<" ID:"<<ID
    <<" car has been created"<<std::endl;
}
Car* ConcreteCar::Clone() const
{
    
    ++ID;
    return new ConcreteCar(*this);
}

void ConcreteCar::Distance()
{
    Position += Speed;
    std::cout<<"[Position]" <<"Car_ID " <<car_id<<" ====> "<<"GPS: "<<Position<<" Pixel  ====> Speed: "<<Speed<<" Pixel/s"<<std::endl; 
   
}



