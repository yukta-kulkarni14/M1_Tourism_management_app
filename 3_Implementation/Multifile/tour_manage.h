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
 * @brief 
 * 
 */
void international();
/**
 * @brief 
 * 
 */
void traveller_details();
/**
 * @brief 
 * 
 */
void add_node(char lol[20],char der[6], int b);
/**
 * @brief 
 * 
 */
void display_receipt();
/**
 * @brief 
 * 
 */

#endif 

