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

 