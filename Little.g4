/** Optional javadoc style comment */
lexer grammar Little;

INTLITERAL : [0-9]+ ;
FLOATLITERAL : [0-9]*'.'[0-9]+;
STRINGLITERAL : "[.]+" ;
COMMENT : '--' ~[\r\n]* -> channel(HIDDEN);
KEYWORD : PROGRAM | BEGIN | END | FUNCTION | READ | WRITE | IF | ELSE | CONTINUE | RETURN | INT | VOID | STRING | FLOAT | WHILE | ENDIF | ENDWHILE;
OPERATOR : := | + | - | * | / | = | != | < | > | ( | ) | ; | , | <= | >=;
WS  :   [ \t]+ -> skip ; // toss out whitespace and 
