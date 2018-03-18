#include "global.h"
#include "symbol.h"
#include "string.h"
#include "error.h"
#include <stdio.h>

#define STRMAX 999
//size of lexemes array

#define SYMMAX 100 // size of symtable

// put symbol in lexemes
char lexemes[STRMAX];
int lastchar = -1;
struct entry symtable[SYMMAX];
int lastentry = 0;

void printSymbols();

int lookup(char s[])
{
  int p;
  for (p = lastentry; p > 0; p = p - 1)
  {
    if (strcmp(symtable[p].lexptr, s) == 0)
    {
      return p;
    }
  }
  return 0;
}

int insert(char s[], int tok)
{
  int len;
  len = strlen(s);

  printf("\n--------insert---------\n");

  if (lastentry + 1 >= SYMMAX)
  {
    error("symbol table is full");
  }
  if (lastchar + len + 1 >= STRMAX)
  {
    error("lexemes array full");
  }
  lastentry = lastentry + 1;

  symtable[lastentry].token = tok;
  symtable[lastentry].lexptr = &lexemes[lastchar + 1];

  lastchar = lastchar + len + 1;
  strcpy(symtable[lastentry].lexptr, s);

  printf("symtable, %d %s   lastentry:%d\n", symtable[lastentry].token, symtable[lastentry].lexptr, lastentry);

  printSymbols();

  return lastentry;
}
void printSymbols()
{
  int i;
  printf("\nprint symbol talbe:\n");
  for (i = 1; i <= lastentry; i++)
  {
    printf("%d  %s  %d\n", i,
           symtable[i].lexptr,
           symtable[i].token);
  }
  printf("-------------------------\n");
}
