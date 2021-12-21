
/*
 * @Author: Tong He
 * @Date: 2021-12-14 21:01:04
 * @LastEditTime: 2021-12-18 09:01:52
 * @LastEditors: Please set LastEditors
 * @Description: ConcreteObserver.h file
 * @FilePath: /undefined/home/tong/Vention/src/Observer/ConcreteObserver.h
 */


#pragma once
#include <string>
//#include "Observer.h"
#include"Car.h"

class ConcreteObserver : public Observer
{
    public:
        ConcreteObserver(std::string name, Car *car):m_observerName(name), m_car(car) {};
        ~ConcreteObserver(){};
        int update();
    private:
    std::string m_observerName;
    Car *m_car;
    int Dis;
};