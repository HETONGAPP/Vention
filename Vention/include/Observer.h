/*
 * @Author: Tong He
 * @Date: 2021-12-14 21:01:04
 * @LastEditTime: 2021-12-18 09:01:53
 * @LastEditors: Please set LastEditors
 * @Description: Observer.h file
 * @FilePath: /undefined/home/tong/Vention/src/Observer/Observer.h
 */
#pragma once
class Observer
{
    public:
        Observer(){};
        virtual ~Observer(){};
        virtual int update() = 0;
};