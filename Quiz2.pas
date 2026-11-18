program SoalNo2;

var
  nilai: integer;
  p1, p2: ^integer;

begin
  write('Masukkan nilai: ');
  readln(nilai);

  p1 := @nilai;
  p2 := @nilai;

  writeln;
  writeln('Nilai variabel: ', nilai);

  writeln('Alamat variabel: ', PtrUInt(@nilai));

  writeln;
  writeln('Nilai melalui pointer 1: ', p1^);
  writeln('Nilai melalui pointer 2: ', p2^);
end.
