
-- create
CREATE TABLE pelanggan (
id_pelanggan INT PRIMARY KEY AUTO_INCREMENT,
nama VARCHAR(50),
alamat VARCHAR(100)
);

CREATE TABLE produk (
id_produk INT PRIMARY KEY AUTO_INCREMENT,
nama_produk VARCHAR(100),
harga DECIMAL(10,2)
);

CREATE TABLE pesanan(
id_pesanan INT PRIMARY KEY AUTO_INCREMENT,
id_pelanggan INT,
id_produk INT,
jumlah INT,
FOREIGN KEY(id_pelanggan) REFERENCES pelanggan(id_pelanggan),
FOREIGN KEY(id_produk) references produk(id_produk)
);

INSERT INTO pelanggan(nama, alamat)
    VALUES
    ("David", "Depok"),
    ("Steve", "Jakarta");
    
INSERT INTO produk (nama_produk, harga)
    VALUES
    ("Buku", 20000),
    ("Spidol", 15000),
    ("Penghapus", 4500);

INSERT INTO pesanan(id_pelanggan, id_produk, jumlah)
