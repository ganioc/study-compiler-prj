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
  default:
    error("syntax error");
  }
}
void match(int t)
{
  printf("match:%c\n", t);
  if (lookahead == t)
    lookahead = lexan();
  else
  {
    error("syntax error: match fail");
  }
}
void term()
{
  int t;
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
      factor();
      emit(t, NONE);
      continue;
    default:
      return;
    }
  }
}

void expr()
{
  int t;
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
  lookahead = lexan();
  while (lookahead != DONE)
  {
    expr();
    match(';');
  }
}
