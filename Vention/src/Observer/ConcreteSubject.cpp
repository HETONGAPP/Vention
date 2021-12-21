/*
 * @Author: Tong He
 * @Date: 2021-12-14 21:01:04
 * @LastEditTime: 2021-12-14 22:09:08
 * @LastEditors: Tong He
 * @Description: ConcreteSubject.cpp file
 * @FilePath: /undefined/home/tong/Vention/src/Observer/ConcreteSubject.cpp
 */
#include <iostream>
#include "ConcreteSubject.h"

using namespace std;

void ConcreteSubject::setStatus(int status)
{
    m_status = status;
    cout << "setStatus subject[" << m_subjectName << "] status:" << status << endl;
}

int ConcreteSubject::getStatus()
{
    return m_status;
}