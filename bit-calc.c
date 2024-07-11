#include <stdio.h>

int main() {
  int row = 4;
  int col = 55;

  printf("location: %d\n", 32 * row + col / 16);
  printf("word bit: %d\n", col % 16);
  return 0;
}
