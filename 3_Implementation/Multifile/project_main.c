#include "tour_manage.h"
extern NODE *start;
extern int k, amount;
extern char selected_type[60], place[30], date[20];
void main()
{
    int ch;
    //start=NULL;
    printf("\t\t\t\t***TOUR MANAGEMENT SYSTEM*\n");
    printf("\t\t\t\t1. International "
           "Tour Packages\n");
    printf("\t\t\t\t2. India Tour Packages\n");
    printf("\t\t\t\tEnter Choice : ");
    scanf("%d", &ch);
    switch (ch)
     {
    // Calling international() function
    case 1:
        international();
        break;

    // Calling india() function
    case 2:
        india();
        break;

    default:
        printf("Enter Right Choice\n");
        break;
    }
    traveller_details();// Calling details() function
    display_receipt();// Calling receipt() function

}