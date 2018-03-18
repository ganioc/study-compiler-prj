#include "parser.h"
#include "emitter.h"
#include "error.h"
#include "lexer.h"

int lookahead;

extern int tokenval;

void match(int t);
void expr();

void factor()
{
  printf("=>factor %d\n", lookahead);
  switch (lookahead)
  {
  case '(':
    match('(');
    expr();
    match(')');
    break;
  case NUM:
    emit(NUM, tokenval);
    match(NUM);
    break;
  case ID:
    emit(ID, tokenval);
    match(ID);
    break;
  case NONE:
    break;
  default:
    error("syntax error");
  }
}
// match current, then lexan() the next
void match(int t)
{
  printf("=>match:%d\n", t);

  if (lookahead == t)
  {
    lookahead = lexan();
  }
  else
  {
    error("syntax error: match fail");
  }
}
// get a terminator
//;
void term()
{
  int t;
  printf("=>term\n");
  factor();

  while (1)
  {
    switch (lookahead)
    {
    case '*':
    case '/':
    case DIV:
    case MOD:
      t = lookahead;
      match(lookahead);
      printf("lookahead is %d\n", lookahead);
      factor();
      emit(t, NONE);
      continue;
    default:
      return;
    }
  }
}
// expression
void expr()
{
  int t;
  printf("=>expr\n");
  term();

  while (1)
  {
    switch (lookahead)
    {
    case '+':
    case '-':
      t = lookahead;
      match(lookahead);
      term();
      emit(t, NONE);
      continue;
    default:
      return;
    }
  }
}

void parse()
{
  printf("\n-----Start parsing-----\n");
  lookahead = lexan();

  printf("parse => get 1st lookahead type: %d\n", lookahead);

  while (lookahead != DONE)
  {
    expr();
    match(';');
  }
}
