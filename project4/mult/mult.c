#include <stdio.h>

int main() {
  int r0 = 0;
  int r1 = 4;
  int r2 = 3;

  for (int i = 0; i < r1; ++i) {
    r0 = r0 + r2;
  }

  printf("%d * %d = %d\n", r1, r2, r0);
  return 0;
}
