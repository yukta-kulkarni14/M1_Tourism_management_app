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
 NODE *start=NULL;
 int k, amount;
 char selected_type[60], place[30], date[20];
void india()
{
    int c;
    strcpy(selected_type, "India Tour Package");
    printf("\t\t\t\t1. Kerala Tour Packages "
           "5 Days 4 Nights (19880/-)\n");
    printf("\t\t\t\t2. Manali Tour Packages "
           "6 Days 5 Nights (37500/-)\n");
    printf("\t\t\t\t3. Himachal Tour Packages "
           "9 Days 8 Nights (20000/-)\n");
    printf("\t\t\t\tEnter Choice: ");
    scanf("%d", &c);
    if (c == 1) {
        strcpy(place, "Kerala Tour");
        amount = 19880;
    }
    else if (c == 2) {
        strcpy(place, "Manali Tour");
        amount = 37500;
    }
    else if (c == 3) {
        strcpy(place, "Himachal Tour");
        amount = 20000;
    }
    else
        printf("Enter valid Choice\n");
}
void international()
{
    int c;

    strcpy(selected_type, "International Tour Package");
    printf("\t\t\t\t1. Maldives Tour Packages "
           "6 Days 5 Nights (656000/-)\n");
    printf("\t\t\t\t2. Switzerland Tour Packages "
           "5 Days 4 Nights (29000/-)\n");
    printf("\t\t\t\t3. Europe Tour Packages "
           "11 Days 10 Nights (30000/-)\n");
    printf("\t\t\t\tEnter Choice: ");
    scanf("%d", &c);
    if (c == 1) {
        strcpy(place, "Maldives Tour");
        amount = 656000;
    }
    else if (c == 2) {
        strcpy(place, "Switzerland Tour");
        amount = 29000;
    }
    else if (c == 3) {
        strcpy(place, "Europe Tour");
        amount = 30000;
    }
    else
        printf("Enter valid Choice\n");
}
void traveller_details()
{
    int i, a;
    char val[20], gen[6];

    printf("\t\t\t\tEnter Number Of Travellers: ");
    scanf("%d", &k);
    printf("\t\t\t\tEnter Date (DD/MM/YY): ");
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
void display_receipt()
{
    int i, b;
    NODE* ptr = start;
    printf("\n\t\t\t\t**Take Screenshot "
           "For Further Use**\n");
    for (i = 1; i <= k; i++) {
        printf("\t%dst Traveller  Name :%s\n ", i, ptr->name);
        printf("\t%dst Traveller Gender:%s\n ", i,ptr->gender);
        printf("\t%dst Traveller Age: %d\n ", i, ptr->age);
        printf("\t--------------------------\n");
        ptr = ptr->next;
    }
    printf("\tSelected Type: %s\n ",selected_type);
    printf("\tPackage: %s\n",place);
    printf("\tDate:%s\n ",date);
    b = amount * k;
    printf("\t--------------------------\n");
    printf("\tTotal Amount: %d", b);
    printf("\n\n\t\t\t\t**Thank You For "
           "registration**\n");
}

 