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
#include"unity.h"
#include"tour_manage.h"
void setUp()
{

}

void tearDown()
{

}
void test_add_node(void)
{
  TEST_ASSERT_EQUAL_STRING("yukta,female,21",add_node);
}
void test_display_receipt(void)
{
  TEST_ASSERT_EQUAL_STRING("yukta,female,21",display_receipt);
}
int test_main(void)
{
    /* Initiate The Unity Test Framework */
    UNITY_BEGIN();

    /* Run Test Functions */
    RUN_TEST(test_add_node);
    RUN_TEST(test_display_receipt);
    /* Close the Unity Test Framework */
  return UNITY_END();
}

 