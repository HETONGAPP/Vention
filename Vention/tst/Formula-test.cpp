/*
 * @Author: Tong He
 * @Date: 2021-12-15 12:33:12
 * @LastEditTime: 2021-12-16 14:54:51
 * @LastEditors: Please set LastEditors
 * @Description: Formula-test.cpp file
 * @FilePath: /undefined/home/tong/Epic_C++/Q3/tst/Formula-test.cpp
 */
#include "gtest/gtest.h"
#include "Formula.h"
 


TEST(_BuildStringFromMatrixTest, BuildStringFromMatrixtest) {

    int Matrix1[] ={2, 3, 4, 8,5, 7, 9, 12,1, 0, 6, 10};

    char buffer1[256];
    BuildStringFromMatrix(Matrix1, 3, 4, buffer1);
    EXPECT_STREQ ("2,3,4,8,12,10,6,0,1,5,7,9",buffer1); //pass

    char buffer2[256];
    BuildStringFromMatrix(Matrix1, 4, 3, buffer2);
    EXPECT_STREQ ("2,3,4,7,1,10,6,0,9,8,5,12",buffer2); //pass
}



