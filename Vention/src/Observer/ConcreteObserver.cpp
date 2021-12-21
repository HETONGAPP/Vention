/*
 * @Author: Tong He
 * @Date: 2021-12-14 21:01:04
 * @LastEditTime: 2021-12-14 22:22:16
 * @LastEditors: Please set LastEditors
 * @Description: ConcreteObserver.cpp file
 * @FilePath: /undefined/home/tong/Vention/src/Observer/ConcreteObserver.cpp
 */
#include <iostream>
#include "ConcreteObserver.h"


int ConcreteObserver::update()
{
    Dis = m_car->GetPos()+ m_car->GetV();
    
    std::cout << "[" << m_observerName << "] Current Position: " << m_car->GetPos() << std::endl;
    std::cout << "[" << m_observerName << "] Next Position: " << Dis << std::endl;
    return Dis;
}

