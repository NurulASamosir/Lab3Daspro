program SoalNo1;

type
  PMakanan = ^TMakanan;
  TMakanan = record
    nama: string[50];
    harga: real;
  end;

var
  daftar: array[1..100] of PMakanan;
  pTermahal, pTermurah: PMakanan;
  n, i: integer;

begin
  writeln('=== DATA HARGA MAKANAN ===');

  write('Jumlah makanan: ');
  readln(n);

  for i := 1 to n do
  begin
    New(daftar[i]);

    writeln;
    writeln('Makanan ke-', i);
    write('Nama makanan: ');
    readln(daftar[i]^.nama);

    write('Harga makanan: ');
    readln(daftar[i]^.harga);
  end;

  pTermahal := daftar[1];
  pTermurah := daftar[1];

  for i := 2 to n do
  begin
    if daftar[i]^.harga > pTermahal^.harga then
      pTermahal := daftar[i];

    if daftar[i]^.harga < pTermurah^.harga then
      pTermurah := daftar[i];
  end;

  writeln;
  writeln('=== HASIL PENCARIAN ===');

  writeln('Makanan termahal: ', pTermahal^.nama);
  writeln('Harganya: Rp', pTermahal^.harga:0:2);

  writeln;
  writeln('Makanan termurah: ', pTermurah^.nama);
  writeln('Harganya: Rp', pTermurah^.harga:0:2);

end.
