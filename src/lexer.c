#include "global.h"
#include <stdio.h>
#include "error.h"
#include "symbol.h"
#include "lexer.h"
#include <stdlib.h>

char lexbuf[BSIZE];
int lineno = 1;
int tokenval = NONE;

extern struct entry symtable[];

// 词法分析器

int lexan()
{
  int t;
  while (1)
  {
    t = getchar();

    printf("\nInput a character for lexan: %c %d\n", t, t);

    if (t == ' ' || t == '\t')
    {
      printf("Caught a space symbol\n");
    }
    else if (t == '\n')
    {
      lineno = lineno + 1;
      printf("Finished a line ------------\n");
    }
    else if (isdigit(t))
    {
      // if it's a number 0~9
      ungetc(t, stdin);
      scanf("%d", &tokenval);
      printf("Caught a number %d\n", tokenval);
      return NUM;
    }
    else if (isalpha(t))
    {
      // if it's a alphabet or character
      int p, b = 0;
      while (isalnum(t))
      {
        //if it's a alphebet or number
        lexbuf[b] = t;
        t = getchar();
        b = b + 1;
        if (b >= BSIZE)
        {
          error("compiler error too long symbol");
        }
      }

      lexbuf[b] = EOS;
      printf("Caught a token:%s\n", lexbuf);

      if (t != EOF)
      {
        ungetc(t, stdin);
      }

      p = lookup(lexbuf);
      printf("p is %d\n", p);
      if (p == 0)
      {
        p = insert(lexbuf, ID);
      }

      tokenval = p;

      // tokenval = symtable[p].token;
      printf("p:%d tokenval:%d  token:\n", p, tokenval);

      return symtable[p].token;
    }
    else if (t == EOF)
    {
      printf("\n-----Finished parsing------\n");
      exit(0);
      // return NONE;
    }
    else
    {
      tokenval = NONE;
      return t;
    }
  } // end of while(1)
}

int lexer_help()
{
  printf("Hello from lexer\n");
  return 0;
}
