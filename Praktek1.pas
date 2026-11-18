program Praktek1;
uses crt;

var
angka: integer;
pangka: ^integer;

begin
angka := 10;

pangka := @angka;

writeln('Nilai angkanya: ', angka);
writeln('Nilai pointernya: ', pangka^);

end.
