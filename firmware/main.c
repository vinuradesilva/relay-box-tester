#include <stdint.h>

int main(void) {
    volatile uint32_t dummy_counter = 0;
    
    // Infinite loop simulating bare-metal state machine operation
    while (1) {
        dummy_counter++;
    }
    
    return 0;
}
