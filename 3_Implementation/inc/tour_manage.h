


/**
 * @file tour_manage.h
 * @author your name (you@domain.com)
 * @brief 
 * @version 0.1
 * @date 2022-02-10
 * 
 * @copyright Copyright (c) 2022
 * 
 */

#ifndef TOUR_MANAGE_H_
#define TOUR_MANAGE_H_

#include<stdio.h>
#include<string.h>
#include<stdlib.h>

struct node
{
    char name[30];
    char gender[10];
    int age;
    struct node *next;
};
typedef struct node NODE;

void india();
/**
 * @brief user has to enter their choice to choose their their india tour package.
 * 
 */
void international();
/**
 * @brief user has to enter their choice to choose their their international tour package.
 * 
 */
void traveller_details();
/**
 * @brief user has to enter their personal details like number of people travelling, date, name, gender, age.
 * 
 */
void add_node(char lol[20],char der[6], int b);
/**
 * @brief node is created to add traveller details based on number of travellers.
 * @param[in] name
 * @param[in] gender
 * @param[in] age
 */
void display_receipt();
/**
 * @brief Booked package tour is displayed with complete details.
 * 
 */

#endif 