/*
 * @Author: Tong He
 * @Date: 2021-12-14 21:01:04
 * @LastEditTime: 2021-12-14 22:21:09
 * @LastEditors: Please set LastEditors
 * @Description: ConcreteSubject.h file
 * @FilePath: /undefined/home/tong/Vention/src/Observer/ConcreteSubject.h
 */

#pragma once

#include <string>
#include "Observer.h"
#include "Subject.h"

class ConcreteSubject : public Subject
{

public:
    ConcreteSubject(std::string name) :m_subjectName(name) {};
    ~ConcreteSubject() {};

    void setStatus(int status);
    int getStatus();

private:
    std::string m_subjectName;
    int m_status = 0;
};
