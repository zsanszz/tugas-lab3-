program penentubeasisiswa;
uses crt;

var
ipk,penghasilan:real;
prestasi:integer;

begin

clrscr;

write('Masukkan ipk: ');
readln(ipk);

write('Masukkan penghasilan orang tua: ');
readln(penghasilan);

write('Masukkan jumlah prestasi: ');
readln(prestasi);

if (ipk >=3.75) and (penghasilan <=5000000) and (prestasi >=2) then
writeln('beasiswa penuh')

else if(ipk>=3.50) and (penghasilan<=7000000) and (prestasi>=1) then
writeln('beasiswa sebagian')

else if(ipk<2.75)then
writeln('ipk tidak memenuhi syarat')

else if(ipk>3.50) and (penghasilan>7000000)then
writeln('penghasilan tidak memenuhi syarat')

else
writeln('tidak mendapatkan beasiswa');

end.

