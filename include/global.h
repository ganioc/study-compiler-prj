#ifndef _GLOBAL_H
#define _GLOBAL_H

#include <stdio.h>
#include <ctype.h>

#define BSIZE 128
#define NONE -1
#define EOS '\0'

#define NUM 256
#define DIV 257
#define MOD 258
#define ID 259
#define DONE 260

// int tokenval;
// int lineno;

struct entry
{
  char *lexptr; // symbol table
  int token;
};
//extern struct entry *symtable;

#endif
