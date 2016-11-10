#include <string.h>
#include <stdint.h>
#include <math.h>

void set_nan_(double *val)
{
  // *val = sqrt(-1.0);
  int64_t x = 0x7FF0000000000001LL;
  memcpy((void *) val, (void *) &x, 8);
}
