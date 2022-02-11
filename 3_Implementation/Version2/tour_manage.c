/**
 * @file tour_manage.c
 * @author yukta K(yuktakulkarnirk@gmail.com)
 * @brief The Tourism management system allows user to access all the details regarding complete tour pacakage such as location, 
 * amount, events, etc. The main purpose of this system is to help tourism companies to manage customer details and hotels.
 * @version 0.1
 * @date 2022-02-09
 * 
 * @copyright Copyright (c) 2022
 * 
 */



#include"tour_manage.h"
void india()
{
    int c;
    int k, amount;
    char selected_type[60], place[30], date[20];
    strcpy(selected_type, "India Tour Package");
    printf("\t\t\t\t1. Simla Tour Packages    "
           "6 Days 7 Nights (18880/-)\n");
    printf("\t\t\t\t2. Kashmir Tour Packages "
           "5 Days 4 Nights (35500/-)\n");
    printf("\t\t\t\t3. Kolkata Tour Packages "
           "11 Days 10 Nights (10000/-)\n");
    printf("\t\t\t\tEnter Choice: ");
    scanf("%d", &c);
    if (c == 1) {
        strcpy(place, "Simla Tour");
        amount = 18880;
    }
    else if (c == 2) {
        strcpy(place, "Kashmir Tour");
        amount = 35500;
    }
    else if (c == 3) {
        strcpy(place, "Kolkata Tour");
        amount = 10000;
    }
    else
        printf("Enter Correct Choice\n");
}
void international()
{
    int c;
    int k, amount;
    char selected_type[60], place[30], date[20];
    strcpy(selected_type, "International Tour Package");
    printf("\t\t\t\t1. England Tour Packages "
           "6 Days 7 Nights (28880/-)\n");
    printf("\t\t\t\t2. Thailand Tour Packages "
           "5 Days 4 Nights (15500/-)\n");
    printf("\t\t\t\t3. New York Tour Packages "
           "11 Days 10 Nights (567800/-)\n");
    printf("\t\t\t\tEnter Choice: ");
    scanf("%d", &c);
    if (c == 1) {
        strcpy(place, "England Tour");
        amount = 28880;
    }
    else if (c == 2) {
        strcpy(place, "Thailand Tour");
        amount = 15500;
    }
    else if (c == 3) {
        strcpy(place, "New York Tour");
        amount = 567800;
    }
    else
        printf("Enter Correct Choice\n");
}
void traveller_details()
{
    int i, a;
    char val[20], gen[6];
    int k, amount;
    char selected_type[60], place[30], date[20];
    printf("\t\t\t\tEnter Number Of Travellers: ");
    scanf("%d", &k);
    printf("\t\t\t\tEnter Date "
           "(DD/MM/YY): ");
    fflush(stdin);
    scanf("%s",date);
    for (i = 1; i <= k; i++) 
    {
        printf("\t\t\t\tEnter The %dth Traveller Name: ",i);
        fflush(stdin);
        scanf("%s",val);
        printf("\t\t\t\tEnter The %dth Traveller Gender: ",i);
        fflush(stdin);
        scanf("%s",gen);
        printf("\t\t\t\tEnter The %dth Traveller Age: ",
               i);
        fflush(stdin);
        scanf("%d", &a);
 
        // Calling add_node() function
        add_node(val, gen, a);
    }
}
 
// Function to add details in
// node for each Traveller
void add_node(char lol[20],
              char der[6], int b)
{
    NODE *start = NULL;
    NODE *newptr = NULL, *ptr;
    newptr = (NODE*)malloc(sizeof(NODE));
    strcpy(newptr->name, lol);
    strcpy(newptr->gender, der);
    newptr->age = b;
    newptr->next = NULL;
    if (start == NULL)
        start = newptr;
    else {
        ptr = start;
        while (ptr->next != NULL)
            ptr = ptr->next;
        ptr->next = newptr;
    }
}
 
// Function For Printing Receipt
void display_receipt(NODE *start)
{
    int i, b;
    int k, amount;
    char selected_type[60], place[30], date[20];
    NODE* ptr = start;
    printf("\n\t\t\t\t**Take Screenshot "
           "For Further Use**\n");
    for (i = 1; i <= k; i++)
     {
        printf("\t\t%dst Traveller " "Name: ",i);
        printf("%s",ptr->name);
        printf("\t\t%dst Traveller "
               "Gender: ",
               i);
        printf("%s",ptr->gender);
        printf("\t\t%dst Traveller "
               "Age: %d\n\n",
               i, ptr->age);
        ptr = ptr->next;
    }
    printf("\t\tSelected Type: ");
    printf("%s",selected_type);
    printf("\t\tPackage: ");
    printf("%s",place);
    printf("\t\tDate: ");
    printf("%s",date);
    b = amount * k;
    printf("\t\tTotal Amount: %d", b);
    printf("\n\t\t\t\t**Thank You For "
           "registration**\n");
}
 