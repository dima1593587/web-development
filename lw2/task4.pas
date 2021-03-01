PROGRAM PaulRevere(INPUT, OUTPUT);
USES
  DOS;
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  NonGarbage: STRING;
BEGIN {GetQueryStringParameter}
  NonGarbage := (GetEnv('QUERY_STRING'));
  IF ((POS(Key, NonGarbage) = 1) OR ((COPY(NonGarbage, POS(Key, NonGarbage) - 1, 1) = '?') AND (COPY(NonGarbage, POS(Key, NonGarbage) - 2, 1) = '&'))) AND (COPY(NonGarbage, POS(Key, NonGarbage) + LENGTH(Key), 1) = '=') AND (NOT(COPY(NonGarbage, POS(Key, NonGarbage) + LENGTH(Key) + 1, 1) = '') AND NOT(COPY(NonGarbage, POS(Key, NonGarbage) + LENGTH(Key) + 1, 1) = '&')) 
  THEN
      BEGIN
        DELETE(NonGarbage, 1, POS(Key, NonGarbage) - 1);
        IF POS('&', NonGarbage) <> 0
        THEN  
          GetQueryStringParameter := COPY(NonGarbage, POS('=', NonGarbage) + 1, POS('&', NonGarbage) - (LENGTH(Key) + 2))
        ELSE
          GetQueryStringParameter := COPY(NonGarbage, POS('=', NonGarbage) + 1, LENGTH(NonGarbage) - (LENGTH(Key) + 1))
      END
  ELSE
    GetQueryStringParameter := 'Not Found'
END;{GetQueryStringParameter}
BEGIN {PaulRevere}
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {PaulRevere}
