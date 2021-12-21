/*
 * @Author: Tong He
 * @Date: 2021-12-14 21:01:04
 * @LastEditTime: 2021-12-14 22:19:28
 * @LastEditors: Please set LastEditors
 * @Description: Subject.h file
 * @FilePath: /undefined/home/tong/Vention/src/Observer/Subject.h
 */

#pragma once
#include <iostream>
#include <vector>
#include "Observer.h"

class Subject
{
    public:
        Subject(){};
        virtual ~Subject(){};
        void addObserver(Observer *observer);
        void deleteObserver(Observer *observer);
        void notifyObservers();
        virtual int getStatus() = 0;
        virtual void setStatus(int status) = 0;
        
    private:
        
        std::vector<Observer*> m_observers;
};