program tiketbioskop;
uses crt;

var
jenisfilm,hari,jumlahtiket:integer;
hargatiket,totalawal,diskon,totalbayar:real;

begin

clrscr;
writeln('======PROGRAM PEMBELIAN TIKET BIOSKOP======');

writeln('jenis film: ');
writeln('1. reguler(30.000)');
writeln('2. 3d (45.000)');
writeln('3. IMAX (60.000)');
write('Pilih jenis film: ');
readln(jenisfilm);


writeln('Hari: ');
writeln('1. senin-kamis: ');
writeln('2. jumat: ');
writeln('3. sabtu-minggu: ');
write('pilih hari: ');
readln(hari);

write('jumlah tiket: ');
readln(jumlahtiket);

case jenisfilm of
1:hargatiket := 30000;
2:hargatiket := 45000;
3:hargatiket := 60000;

else
    begin
        writeln('jenis film tidak valid.');
    end;
end;
if hari = 3 then
    begin
        hargatiket := hargatiket + 10000;
    end
else if hari = 2 then
begin
    hargatiket := hargatiket + 5000;
end;

totalawal := hargatiket * jumlahtiket;

if totalawal >=200000 then
begin
    diskon := totalawal * 0.10;
end
else if totalawal >=100000 then
begin
    diskon := totalawal * 0.05;
end
else
begin
    diskon := 0;
end;
totalbayar := totalawal - diskon;

writeln('=== HASIL PEMBELIAN ===');
writeln('Harga awal : Rp', totalAwal:0:0);
writeln('Diskon     : Rp', diskon:0:0);
writeln('Total bayar: Rp', totalBayar:0:0);
readln;

end.