program Praktek2;
uses crt;

var
angka : integer;
p : ^integer;
pp : ^Pinteger;

begin
    angka := 7;
    p := @angka;
    pp := @p;
    writeln('Angkanya: ',angka);
    writeln('Pointer 1: ',p^);
    writeln('Pointer to another pointer: ', pp^^);
end.
