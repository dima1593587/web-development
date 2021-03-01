PROGRAM PaulRevere(INPUT, OUTPUT);
USES
  DOS;
VAR
 STR: STRING;
BEGIN {PaulRevere}
  WRITELN;
  STR := GetEnv('QUERY_STRING');
  IF (POS('name', STR) = 1) AND (POS('=', STR) = 5) AND (LENGTH(STR) > 5) 
  THEN
    IF POS('&', STR) <> 0 
    THEN
      WRITELN('Hello Dear, ', COPY(STR, 6, POS('&', STR) - 6))
    ELSE
      WRITELN('Hello Dear, ', COPY(STR, 6, LENGTH(STR) - 5))
  ELSE
    WRITELN('Hello Anonymous!') 
END. {PaulRevere}
