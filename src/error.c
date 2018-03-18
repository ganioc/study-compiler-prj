#include "error.h"
#include <stdio.h>
#include <stdlib.h>

extern int lineno;
extern int tokenval;

void error(char *m)
{
  fprintf(stderr, "line %d: %s\n", lineno, m);
  exit(1);
}
