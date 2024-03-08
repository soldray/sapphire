%{
#include <algorithm>
#include <string>
#include <bits/stdc++.h>

#include <llvm/IR/Value.h>

using namespace std;

%}

%option c++ noyywrap

B  [0,1]
O  [0-7]
NZ [1-9]
D  [0-9]
H  [a-fA-F0-9]

BP  (0[bB])
OP  (0[oO])
HP  (0[xX])

%%

{BP}([_]?{B}+)* {
  string t = yytext; t.erase(remove(t.begin(), t.end(), '_'), t.end());

  printf("An integer: (%s)", t.c_str());
}

{OP}([_]?{O}+)* {
  string t = yytext; t.erase(remove(t.begin(), t.end(), '_'), t.end());

  printf("An integer: (%s)", t.c_str());
}

{HP}([_]?{H}+)* {
  string t = yytext; t.erase(remove(t.begin(), t.end(), '_'), t.end());

  printf("An integer: (%s)", t.c_str());
}

{D}+([_]?{D}+)* {
  string t = yytext; t.erase(remove(t.begin(), t.end(), '_'), t.end());

  printf("An integer: (%s)", t.c_str());
}

%%

int main(int argc, char** argv) {
  FlexLexer* lexer = new yyFlexLexer();
  lexer->yylex();
}
