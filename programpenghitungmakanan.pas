program penghitungMakanan;

uses crt;

var
  kode, jumlah, status: integer;
  harga, total, diskon, bayar: longint;
  nama: string;

begin
  clrscr;

  writeln('=== SISTEM PEMESANAN MAKANAN ===');
  writeln;
  writeln('Daftar Menu:');
  writeln('1. Nasi Goreng  : Rp20.000');
  writeln('2. Mie Goreng   : Rp18.000');
  writeln('3. Ayam Geprek  : Rp25.000');
  writeln('4. Steak        : Rp50.000');
  writeln;

  write('Masukkan kode makanan (1-4): ');
  readln(kode);

  case kode of
    1:
      begin
        nama := 'Nasi Goreng';
        harga := 20000;
      end;
    2:
      begin
        nama := 'Mie Goreng';
        harga := 18000;
      end;
    3:
      begin
        nama := 'Ayam Geprek';
        harga := 25000;
      end;
    4:
      begin
        nama := 'Steak';
        harga := 50000;
      end;
  else
    begin
      writeln('Kode makanan tidak valid.');
      readln;
      halt;
    end;
  end;

  write('Masukkan jumlah pesanan: ');
  readln(jumlah);

  if jumlah <= 0 then
  begin
    writeln('Jumlah pesanan tidak valid.');
  end
  else if jumlah > 10 then
  begin
    writeln('Pesanan terlalu banyak.');
  end
  else
  begin
    write('Status pelanggan (1=Member, 2=Non-member): ');
    readln(status);

    if (status <> 1) and (status <> 2) then
    begin
      writeln('Status pelanggan tidak valid.');
    end
    else
    begin
      total := harga * jumlah;
      diskon := 0;

      if status = 1 then
      begin
        if total >= 100000 then
          diskon := total * 15 div 100
        else if total >= 50000 then
          diskon := total * 10 div 100
        else
          diskon := total * 5 div 100;
      end
      else
      begin
        if total >= 100000 then
          diskon := total * 5 div 100;
      end;

      bayar := total - diskon;

      writeln;
      writeln('=== RINCIAN PEMBAYARAN ===');
      writeln('Nama makanan    : ', nama);
      writeln('Harga makanan   : Rp', harga);
      writeln('Jumlah pesanan  : ', jumlah);
      writeln('Total harga     : Rp', total);
      writeln('Diskon          : Rp', diskon);
      writeln('Total bayar     : Rp', bayar);
    end;
  end;

  readln;
end.