/*
 * @Author: Tong He
 * @Date: 2021-12-14 21:01:04
 * @LastEditTime: 2021-12-17 18:30:48
 * @LastEditors: Please set LastEditors
 * @Description: main.cpp file
 * @FilePath: /undefined/home/tong/Vention/src/Observer/main.cpp
 */
#include <iostream>
#include "Subject.h"
#include "Observer.h"
#include "ConcreteObserver.h"
#include "ConcreteSubject.h"

// int main(int argc, char *argv[])
// {
//     Subject * subjectA = new ConcreteSubject("subjectA");
//     Subject * subjectB = new ConcreteSubject("subjectB");

//     Observer * observerA = new ConcreteObserver("observerA", subjectA);
//     Observer * observerB = new ConcreteObserver("observerB", subjectB);

//     subjectA->addObserver(observerA);
//     subjectB->addObserver(observerB);

//     subjectA->setStatus(1);
//     subjectA->notifyObservers();

//     subjectB->setStatus(2);
//     subjectB->notifyObservers();

//     std::cout << "--------------------" << std::endl;

//     subjectA->addObserver(observerB);
//     subjectA->setStatus(2);
//     subjectA->notifyObservers();

//     delete subjectA;
//     delete subjectB;
//     delete observerA;
//     delete observerB;

//     system("pause");

//     return 0;
// }
