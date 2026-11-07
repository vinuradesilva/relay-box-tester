#include "unity.h"
#include "relay_logic.h"
void setUp(void) {}
void tearDown(void) {}
void test_relay_logic_Initialization(void) {
    TEST_ASSERT_EQUAL(1, get_relay_state());
}