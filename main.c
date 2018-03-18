#include "global.h"
#include "lexer.h"
#include "init.h"
#include "parser.h"

int main()
{
  printf("Hello I am the main()\n");
  printf("%d\n", BSIZE);
  lexer_help();

  // init symbol table
  init();

  parse();

  return 0;
}
