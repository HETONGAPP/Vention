/*
 * @Author: Tong He
 * @Date: 2021-12-14 21:01:04
 * @LastEditTime: 2021-12-14 22:06:55
 * @LastEditors: Tong He
 * @Description: Subject.cpp file
 * @FilePath: /undefined/home/tong/Vention/src/Observer/Subject.cpp
 */
#include "Subject.h"

void Subject::addObserver(Observer *observer)
{
    m_observers.push_back(observer);
};

void Subject::deleteObserver(Observer *observer)
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

void Subject::notifyObservers()
{
    for (auto iter = m_observers.begin();
        iter != m_observers.end();
        iter++)
    {
        (*iter)->update();
    }
}
