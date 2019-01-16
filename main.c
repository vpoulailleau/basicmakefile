#include <stdint.h>
#include "dependency.h"

int main(void)
{
    uint8_t foo = 5; /* unused variable */
    dependency();
    return 0;
}
