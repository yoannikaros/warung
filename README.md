# Aplikasi warung
Install

1. Create database "Akrab_main" then Upload akrab_main.sql,
2. Setting tringer like this:

Tabel Pelanggan2
Triger Before Insert:

BEGIN
UPDATE pengguna SET hutang = hutang - new.hutang
WHERE nama_pelanggan = new.nama_pelanggan;
END

Tabel pelanggan
Triger Before Insert:

BEGIN
UPDATE pengguna SET hutang = hutang + new.hutang
WHERE nama_pelanggan = new.nama_pelanggan;
END

Tabel Pengguna
Triger Before Update:

BEGIN
if new.hutang > 0 then
set new.hutang = 0;
end if;
END

3. Open Project
4. Import Library
5. Move Print to Local Disk C
