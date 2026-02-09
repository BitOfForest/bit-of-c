#include "stdio.h"
#include <stddef.h>
#include <stdlib.h>

int main(void) {
  double A[5] = {[0] = 9.0, [1] = 9.1, [2] = 3.E+25};
  for (size_t i = 0; i < 5; i++) {
    printf("element %zu is %g, \tit's square is %g \n", i, A[i], A[i] * A[i]);
  }

  return EXIT_SUCCESS;
}
