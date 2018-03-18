#include "global.h"
#include <stdio.h>
#include "error.h"
#include "symbol.h"
#include "lexer.h"

char lexbuf[BSIZE];
int lineno = 1;
int tokenval = NONE;

extern struct entry *symtable;

// 词法分析器

int lexan()
{
  int t;
  while (1)
  {
    t = getchar();
    if (t == ' ' || t == '\t')
      ;
    else if (t == '\n')
      lineno = lineno + 1;
    else if (isdigit(t))
    {
      // if it's a number 0~9
      ungetc(t, stdin);
      scanf("%d", &tokenval);

      return NUM;
    }
    else if (isalpha(t))
    {
      // if it's a alphabet character
      int p, b = 0;
      while (isalnum(t))
      {
        //if it's a alphebet or number
        lexbuf[b] = t;
        t = getchar();
        b = b + 1;
        if (b >= BSIZE)
        {
          error("compiler error too long");
        }
      }
      lexbuf[b] = EOS;
      if (t != EOF)
      {
        ungetc(t, stdin);
      }
      p = lookup(lexbuf);
      if (p == 0)
      {
        p = insert(lexbuf, ID);
      }
      tokenval = p;
      return symtable[p].token;
    }
    else if (t == EOF)
      return NONE;
    else
    {
      tokenval = NONE;
      return t;
    }
  }
}

int lexer_help()
{
  printf("Hello from lexer\n");
  return 0;
}
