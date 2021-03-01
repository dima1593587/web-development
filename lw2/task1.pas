PROGRAM PrintEnv(INPUT, OUTPUT);
VAR
  IP: STRING;
  Count: INTEGER;
BEGIN {PrintEnv}
  READLN(IP);
  Count := 0 ;
  WHILE POS('.', IP) <> 0 
  DO
    BEGIN
       IF (VAL(COPY(IP, 1, POS('.', IP) - 1)) > 256) OR (VAL(COPY(IP, 1, POS('.', IP) - 1)) < 0)
       THEN
         BEGIN
           Count := -1;
           BREAK
         END
       ELSE
         BEGIN
           DELETE(IP, 1, POS('.', IP));
           Count := Count + 1 
         END   
    END;
  IF (VAL(IP) > 256) OR (VAL(IP) < 0)
  THEN
    BEGIN
      Count := -1;
    END
  ELSE
    BEGIN
      Count := Count + 1 
    END;
  IF Count = 4 
  THEN 
    WRITELN('Good')
  ELSE
    WRITELN('Bad')   

END. {PrintEnv}

