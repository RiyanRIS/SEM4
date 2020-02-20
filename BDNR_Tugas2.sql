CREATE DATABASE `tokoElektronik`;

CREATE TABLE `jenis` (
  `jenis_kode` int(11) NOT NULL,
  `jenis_nama` varchar(32) NOT NULL
);

CREATE TABLE `merk` (
  `merk_kode` int(11) NOT NULL,
  `merk_nama` varchar(32) NOT NULL
);

CREATE TABLE `barang` (
  `brg_kode` int(11) NOT NULL,
  `brg_merk` int(11) NOT NULL,
  `brg_tipe` int(11) NOT NULL,
  `brg_garansi` date NOT NULL,
  `brg_harga` int(11) NOT NULL,
  `brg_nama` varchar(64) NOT NULL,
  `brg_jenis` int(11) NOT NULL,
  `brg_jumlah` int(11) NOT NULL
);

CREATE TABLE `pelanggan` (
  `plg_kode` int(11) NOT NULL,
  `plg_nama` varchar(32) NOT NULL
);

CREATE TABLE `petugas` (
  `ptg_kode` int(11) NOT NULL,
  `ptg_nama` varchar(32) NOT NULL,
  `ptg_nohp` varchar(14) NOT NULL,
  `ptg_alamat` int(11) NOT NULL
);

CREATE TABLE `transaksi` (
  `tr_kode` int(11) NOT NULL,
  `tr_tanggal` date NOT NULL,
  `tr_petugas` int(11) NOT NULL,
  `tr_total` int(11) NOT NULL,
  `tr_pelanggan` int(11) NOT NULL
);

ALTER TABLE `barang`
  ADD PRIMARY KEY (`brg_kode`),
  ADD KEY `brg_merk` (`brg_merk`),
  ADD KEY `brg_jenis` (`brg_jenis`);

ALTER TABLE `detail_transaksi`
  ADD KEY `dt_kode` (`dt_kode`),
  ADD KEY `dt_barang` (`dt_barang`);

ALTER TABLE `jenis`
  ADD PRIMARY KEY (`jenis_kode`);

ALTER TABLE `merk`
  ADD PRIMARY KEY (`merk_kode`);

ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`plg_kode`);

ALTER TABLE `petugas`
  ADD PRIMARY KEY (`ptg_kode`);

ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`tr_kode`),
  ADD KEY `tr_petugas` (`tr_petugas`),
  ADD KEY `tr_pelanggan` (`tr_pelanggan`);

ALTER TABLE `barang`
  MODIFY `brg_kode` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `jenis`
  MODIFY `jenis_kode` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `merk`
  MODIFY `merk_kode` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `pelanggan`
  MODIFY `plg_kode` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `petugas`
  MODIFY `ptg_kode` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `transaksi`
  MODIFY `tr_kode` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`brg_merk`) REFERENCES `merk` (`merk_kode`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`brg_jenis`) REFERENCES `jenis` (`jenis_kode`);

ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_1` FOREIGN KEY (`dt_kode`) REFERENCES `transaksi` (`tr_kode`),
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`dt_barang`) REFERENCES `barang` (`brg_kode`);

ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`tr_petugas`) REFERENCES `petugas` (`ptg_kode`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`tr_pelanggan`) REFERENCES `pelanggan` (`plg_kode`);

-- NOMOR 5
-- 
-- 
-- 
INSERT INTO `jenis` (`jenis_kode`, `jenis_nama`) VALUES
(1, 'Mouse'),
(2, 'Keyboard'),
(3, 'Flashdisk'),
(4, 'Aksesoris'),
(5, 'Earphone');

INSERT INTO `merk` (`merk_kode`, `merk_nama`) VALUES
(1, 'Samsung'),
(2, 'Lenovo'),
(3, 'Logitech'),
(4, 'Rexus'),
(5, 'Toshiba'),
(6, 'Nisuta');

INSERT INTO `pelanggan` (`plg_kode`, `plg_nama`) VALUES
(1, 'Setya'),
(2, 'Nugroho'),
(3, 'Claudia'),
(4, 'Suprapto');


INSERT INTO `petugas` (`ptg_kode`, `ptg_nama`, `ptg_nohp`, `ptg_alamat`) VALUES
(1, 'Randitya', '08776655443322', 'Jl. Bandung Sumedang Km22 No 26G.'),
(2, 'Yosef', '0856677889900', 'Jl. Dago Atas Gg Kelinci No 77B');


INSERT INTO `barang` (`brg_kode`, `brg_merk`, `brg_tipe`, `brg_garansi`, `brg_harga`, `brg_nama`, `brg_jenis`, `brg_jumlah`) VALUES
(1, 4, 'Vonix RX998', '2021-02-19', 130000, 'Rexus Earphone Gaming Vonix RX998', 5, 98),
(2, 6, 'KB-048U', '2021-06-15', 80000, 'Keyboard Usb Nisuta KB-048U', 2, 55),
(3, 1, 'Softcase RPGW', '2021-02-19', 30000, 'Samsung Softcase RPGW 4 Warna', 4, 500),
(4, 2, 'LenZ 64GB', '2021-04-08', 110000, 'LenZ 64GB', 3, 90),
(5, 3, 'HS-311', '2021-07-13', 690000, 'Logitech HS-311', 5, 60),
(6, 3, 'K-4311 F', '2021-07-08', 720000, 'Logitech K-4311 F', 2, 70),
(7, 4, 'RX-108', '2021-08-04', 141000, 'Rexus RX-108', 1, 80),
(8, 4, 'RR-99', '2021-07-14', 256000, 'Rexus RR-99', 5, 70),
(9, 1, 'Barplus 32GB', '2021-02-07', 60000, 'Samsung Barplus 32GB', 3, 60),
(10, 2, 'DT19987', '2021-01-22', 187000, 'Lenovo Keyboard DT19987', 2, 40),
(11, 5, '64GB', '2021-11-15', 50000, 'Toshiba 64GB', 3, 100);


INSERT INTO `transaksi` (`tr_kode`, `tr_tanggal`, `tr_petugas`, `tr_total`, `tr_pelanggan`) VALUES
(1, '2020-02-19', 1, 6040000, 1),
(2, '2020-03-11', 1, 702000, 4),
(3, '2021-09-18', 2, 1292000, 1),
(4, '2019-09-18', 2, 1640000, 2),
(5, '2020-08-05', 2, 5003000, 3);

INSERT INTO `detail_transaksi` (`dt_kode`, `dt_barang`, `jumlah`, `harga_beli`) VALUES
(1, 9, 3, 180000),
(1, 6, 6, 4320000),
(1, 5, 2, 1380000),
(1, 2, 2, 160000),
(2, 7, 2, 282000),
(2, 1, 2, 260000),
(2, 2, 2, 160000),
(3, 9, 3, 180000),
(3, 4, 4, 440000),
(3, 8, 2, 512000),
(3, 2, 2, 160000),
(4, 11, 4, 200000),
(4, 6, 2, 1440000),
(5, 9, 6, 360000),
(5, 5, 3, 2070000),
(5, 3, 6, 180000),
(5, 10, 7, 1309000),
(5, 7, 4, 564000),
(5, 1, 4, 520000);










