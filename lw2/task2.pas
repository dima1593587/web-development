PROGRAM PaulRevere(INPUT, OUTPUT);
USES
  GPC;
VAR
  STR: STRING;
BEGIN {PaulRevere}
  WRITELN;
  STR := GetEnv('QUERY_STRING');
  IF STR = 'lanterns=1'
  THEN
    WRITELN('The British are coming by land.')
  ELSE
    IF STR = 'lanterns=2'
    THEN 
      WRITELN('The British are coming by sea.') 
    ElSE
      WRITELN('Sarah didn''t say')

END. {PaulRevere}
