program recordbnyak;
uses crt;

//record nested
type 
    rumah = record
        jalan : string;
        no : integer;
        kota : string;
    end;


//record utama
type 
        data = record
            nama : string;
            nim : string;
            kom : char;
            alamat : rumah;
        end;

var 
mahasiswa, mahasiswa1 : data;


begin 
clrscr;

with mahasiswa do 
    begin 
        nama := 'Nurul';
        nim := '261401039';
        kom :='B';
        alamat.jalan := 'Sipirok';
        alamat.no := 3;
        alamat.kota := 'Medan';

        writeln ('Hallo ', nama);
        writeln ('Nim : ', nim);
        writeln ('Kom : ', kom);
        writeln ('Alamatmu di jalan ', alamat.jalan);
        writeln ('Alamatmu di nomor ', alamat.no);
        writeln ('Alamatmu di kota ', alamat.kota);

    end;
writeln;
with mahasiswa1 do 
    begin 
        nama := 'Nuy';
        nim := '261401039';
        kom :='D';
        alamat.jalan := 'Kepo';
        alamat.no := 3;
        alamat.kota := 'Medan';

        writeln ('Hallo ', nama);
        writeln ('Nim : ', nim);
        writeln ('Kom : ', kom);
        writeln ('Alamatmu di jalan ', alamat.jalan);
        writeln ('Alamatmu di nomor ', alamat.no);
        writeln ('Alamatmu di kota ', alamat.kota);

    end;

end.
