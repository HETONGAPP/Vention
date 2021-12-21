/*
 * @Author: Tong He
 * @Date: 2021-12-14 18:37:36
 * @LastEditTime: 2021-12-18 19:30:32
 * @LastEditors: Please set LastEditors
 * @Description: Car.h file
 * @FilePath: /undefined/home/tong/Vention/src/Car.h
 */


#pragma once
#include <iostream>
#include <vector>
#include "Observer.h"
class Car
{
    public:

        
        Car(const Car &) = delete;
        Car& operator=(const Car &) = delete;

        virtual ~Car();
        virtual Car* Clone() const = 0;
        
        void addObserver(Observer *observer);
        void deleteObserver(Observer *observer);
        void notifyObservers();

        virtual int GetV() const = 0;
        virtual void SetV(double V) = 0;
        virtual int GetPos() const = 0;
        virtual void SetPos(double Pos) = 0;
        virtual void VehicleID() = 0;
        virtual void Distance() = 0;
        
    protected:
	    Car();
        std::vector<Observer*> m_observers;
    private:
        
};

class ConcreteCar: public Car
{
    public:
        ConcreteCar();
        ConcreteCar(const ConcreteCar& cp);
        ~ConcreteCar();
        Car* Clone() const override;

        int GetV() const;
        void SetV(double V);
        int GetPos() const;
        void SetPos(double Pos);

        void VehicleID();
        void Distance(); 

    protected:

    private:
    	double Speed;
    	double Position;
        static int ID;
        int car_id;
        double pre;

};
