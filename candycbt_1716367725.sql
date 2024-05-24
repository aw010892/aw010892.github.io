
/*---------------------------------------------------------------
  SQL DB BACKUP 22.05.2024 15:48 
  HOST: localhost
  DATABASE: cbtcandy28
  TABLES: *
  ---------------------------------------------------------------*/

/*---------------------------------------------------------------
  TABLE: `berita`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int(10) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(10) NOT NULL,
  `sesi` varchar(10) NOT NULL,
  `ruang` varchar(20) NOT NULL,
  `jenis` varchar(30) NOT NULL,
  `ikut` varchar(10) DEFAULT NULL,
  `susulan` varchar(10) DEFAULT NULL,
  `no_susulan` text DEFAULT NULL,
  `mulai` varchar(10) DEFAULT NULL,
  `selesai` varchar(10) DEFAULT NULL,
  `nama_proktor` varchar(50) DEFAULT NULL,
  `nip_proktor` varchar(50) DEFAULT NULL,
  `nama_pengawas` varchar(50) DEFAULT NULL,
  `nip_pengawas` varchar(50) DEFAULT NULL,
  `catatan` text DEFAULT NULL,
  `tgl_ujian` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_berita`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
INSERT INTO `berita` VALUES   ('6','5','1','R1','PH','12','1','a:1:{i:0;s:12:\"12-248-001-8\";}','00:00','02:00','Pajar Sidik N','2011-09-929091','Nur Rohman','2019-02909-2909','tertib','2020-02-24');

/*---------------------------------------------------------------
  TABLE: `file_pendukung`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `file_pendukung`;
CREATE TABLE `file_pendukung` (
  `id_file` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) DEFAULT 0,
  `nama_file` varchar(50) DEFAULT NULL,
  `status_file` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_file`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8;
INSERT INTO `file_pendukung` VALUES   ('101','5','15738521848.png',NULL);
INSERT INTO `file_pendukung` VALUES ('102','5','15738521844.png',NULL);
INSERT INTO `file_pendukung` VALUES ('103','5','15738521848.png',NULL);
INSERT INTO `file_pendukung` VALUES ('104','5','15738521841.png',NULL);
INSERT INTO `file_pendukung` VALUES ('105','5','157385218412.png',NULL);
INSERT INTO `file_pendukung` VALUES ('106','5','157385218411.png',NULL);
INSERT INTO `file_pendukung` VALUES ('107','5','15738521849.png',NULL);
INSERT INTO `file_pendukung` VALUES ('108','5','15738521845.png',NULL);
INSERT INTO `file_pendukung` VALUES ('109','5','15738521842.png',NULL);
INSERT INTO `file_pendukung` VALUES ('110','5','157385218413.png',NULL);
INSERT INTO `file_pendukung` VALUES ('111','5','157385218410.png',NULL);
INSERT INTO `file_pendukung` VALUES ('112','5','15738521847.png',NULL);
INSERT INTO `file_pendukung` VALUES ('113','5','15738521846.png',NULL);
INSERT INTO `file_pendukung` VALUES ('114','5','15738521843.png',NULL);
INSERT INTO `file_pendukung` VALUES ('115','67','1_1_1.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('116','67','1_2_1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('117','67','1_1_E1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('118','67','1_2_E1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('119','10','gambar4.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('120','10','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('121','10','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('122','10','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('123','10','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('124','10','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('125','7','15819461118.png',NULL);
INSERT INTO `file_pendukung` VALUES ('126','7','15819461114.png',NULL);
INSERT INTO `file_pendukung` VALUES ('127','7','15819461111.png',NULL);
INSERT INTO `file_pendukung` VALUES ('128','7','158194611113.png',NULL);
INSERT INTO `file_pendukung` VALUES ('129','7','158194611111.png',NULL);
INSERT INTO `file_pendukung` VALUES ('130','7','15819461119.png',NULL);
INSERT INTO `file_pendukung` VALUES ('131','7','15819461115.png',NULL);
INSERT INTO `file_pendukung` VALUES ('132','7','15819461112.png',NULL);
INSERT INTO `file_pendukung` VALUES ('133','7','158194611114.png',NULL);
INSERT INTO `file_pendukung` VALUES ('134','7','158194611110.png',NULL);
INSERT INTO `file_pendukung` VALUES ('135','7','15819461117.png',NULL);
INSERT INTO `file_pendukung` VALUES ('136','7','15819461116.png',NULL);
INSERT INTO `file_pendukung` VALUES ('137','7','15819461113.png',NULL);
INSERT INTO `file_pendukung` VALUES ('138','7','158194611112.png',NULL);
INSERT INTO `file_pendukung` VALUES ('146','25','gambar4.jpg',NULL);
INSERT INTO `file_pendukung` VALUES ('147','25','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('148','25','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('149','25','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('150','25','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('151','25','gambar1.png',NULL);
INSERT INTO `file_pendukung` VALUES ('152','26','26_2_E1.png',NULL);

/*---------------------------------------------------------------
  TABLE: `jawaban`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jawaban`;
CREATE TABLE `jawaban` (
  `id_jawaban` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_ujian` int(11) NOT NULL,
  `jawaban` char(1) DEFAULT NULL,
  `jawabx` char(1) DEFAULT NULL,
  `jenis` int(1) NOT NULL,
  `esai` text DEFAULT NULL,
  `nilai_esai` int(5) NOT NULL DEFAULT 0,
  `ragu` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_jawaban`)
) ENGINE=InnoDB AUTO_INCREMENT=206 DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `jenis`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jenis`;
CREATE TABLE `jenis` (
  `id_jenis` varchar(30) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `status` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `jenis` VALUES   ('PH','PENILAIAN HARIAN','aktif');

/*---------------------------------------------------------------
  TABLE: `jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `jurusan`;
CREATE TABLE `jurusan` (
  `jurusan_id` varchar(25) NOT NULL,
  `nama_jurusan_sp` varchar(100) DEFAULT NULL,
  `kurikulum` varchar(120) DEFAULT NULL,
  `jurusan_sp_id` varchar(50) DEFAULT NULL,
  `kurikulum_id` varchar(20) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `jurusan` VALUES   ('10024','Teknik Mesin','SMP','3c800d8b-1214-4bf5-b9b2-e46547f7c96e',NULL,'8cce47df-aae7-4274-83cb-5af3093eab56');
INSERT INTO `jurusan` VALUES ('10024210','Teknik Pemesinan','SMP','6d94b928-63dc-48c2-b213-41ef0d60f127',NULL,'8cce47df-aae7-4274-83cb-5af3093eab56');
INSERT INTO `jurusan` VALUES ('10042270','Teknik Kendaraan Ringan Otomotif','SMP','d0c87641-a9db-4669-9c1c-96aca0e97af0',NULL,'8cce47df-aae7-4274-83cb-5af3093eab56');
INSERT INTO `jurusan` VALUES ('10044','Teknik Otomotif','SMP','e598f57f-3df9-4571-a2c4-25f3124090db',NULL,'8cce47df-aae7-4274-83cb-5af3093eab56');
INSERT INTO `jurusan` VALUES ('10044400','Teknik Kendaraan Ringan','SMP','d1d23270-f4a7-4fab-b6c0-99ae05d5262d',NULL,'8cce47df-aae7-4274-83cb-5af3093eab56');
INSERT INTO `jurusan` VALUES ('15052','Teknik Komputer dan Informatika','SMP','1af78482-4246-4d90-839c-bbc215c19639',NULL,'8cce47df-aae7-4274-83cb-5af3093eab56');
INSERT INTO `jurusan` VALUES ('15052515','Teknik Komputer dan Jaringan','SMP','676b9393-4fbf-41b1-ba25-3db356d71baf',NULL,'8cce47df-aae7-4274-83cb-5af3093eab56');
INSERT INTO `jurusan` VALUES ('35088750','Administrasi Perkantoran','SMP','9c29bd66-a5c0-4fef-bb0f-020062fd5557',NULL,'8cce47df-aae7-4274-83cb-5af3093eab56');
INSERT INTO `jurusan` VALUES ('SMP0000','Reguler','SMP','66361a62-6622-11e4-900b-87e57f70ef1b',NULL,'80f33dc6-0d26-e111-8958-61d7211127e4');
INSERT INTO `jurusan` VALUES ('SMP0001','Terbuka','SMP','664b2920-6622-11e4-a3db-2b18c6ae1a9b',NULL,'80f33dc6-0d26-e111-8958-61d7211127e4');
INSERT INTO `jurusan` VALUES ('SMP0002','kelas jauh','SMP','664d8a80-6622-11e4-a91e-d3dfd5eeefe9',NULL,'80f33dc6-0d26-e111-8958-61d7211127e4');
INSERT INTO `jurusan` VALUES ('SMP0003','Akselerasi','SMP','ef762a2a-361f-11e4-a111-57dea713b49c',NULL,'80f33dc6-0d26-e111-8958-61d7211127e4');

/*---------------------------------------------------------------
  TABLE: `kelas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `kelas`;
CREATE TABLE `kelas` (
  `id_kelas` varchar(11) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_kelas`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `kelas` VALUES   ('SMP','XIITP','SMP',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIITKJ','XII','XIITKJ',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIITKR','XII','XIITKR',NULL,NULL);
INSERT INTO `kelas` VALUES ('XIITP','XII','XIITP',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITKJA','XI','XITKJA',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITKJB','XI','XITKJB',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITKJC','XI','XITKJC',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITKRA','XI','XITKRA',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITKRB','XI','XITKRB',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITPA','XI','XITPA',NULL,NULL);
INSERT INTO `kelas` VALUES ('XITPB','XI','XITPB',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTKJA','X','XTKJA',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTKJB','X','XTKJB',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTKJC','X','XTKJC',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTKJD','X','XTKJD',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTKRA','X','XTKRA',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTKRB','X','XTKRB',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTKRC','X','XTKRC',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTPA','X','XTPA',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTPB','X','XTPB',NULL,NULL);
INSERT INTO `kelas` VALUES ('XTPC','X','XTPC',NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `level`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `level`;
CREATE TABLE `level` (
  `kode_level` varchar(5) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`kode_level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `level` VALUES   ('X','X',NULL);
INSERT INTO `level` VALUES ('XI','XI',NULL);
INSERT INTO `level` VALUES ('XII','XII',NULL);

/*---------------------------------------------------------------
  TABLE: `log`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id_log` int(11) NOT NULL AUTO_INCREMENT,
  `id_siswa` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `text` varchar(20) NOT NULL,
  `date` varchar(20) NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
INSERT INTO `log` VALUES   ('1','58','login','masuk','2020-03-05 07:47:04');
INSERT INTO `log` VALUES ('2','58','testongoing','sedang ujian','2020-03-05 07:47:38');
INSERT INTO `log` VALUES ('3','58','login','Selesai Ujian','2020-03-05 07:49:39');
INSERT INTO `log` VALUES ('4','58','testongoing','sedang ujian','2020-03-05 07:50:42');
INSERT INTO `log` VALUES ('5','58','login','Selesai Ujian','2020-03-05 07:51:15');
INSERT INTO `log` VALUES ('6','58','testongoing','sedang ujian','2020-03-05 07:59:21');
INSERT INTO `log` VALUES ('7','58','login','Selesai Ujian','2020-03-05 08:00:30');
INSERT INTO `log` VALUES ('8','58','testongoing','sedang ujian','2020-03-05 08:02:48');
INSERT INTO `log` VALUES ('9','58','logout','keluar','2020-03-05 08:03:06');
INSERT INTO `log` VALUES ('10','58','login','masuk','2020-03-05 08:03:14');
INSERT INTO `log` VALUES ('11','58','login','Selesai Ujian','2020-03-05 08:06:04');
INSERT INTO `log` VALUES ('12','59','login','masuk','2020-03-05 16:26:01');
INSERT INTO `log` VALUES ('13','59','testongoing','sedang ujian','2020-03-05 16:26:06');
INSERT INTO `log` VALUES ('14','59','login','Selesai Ujian','2020-03-05 16:28:59');
INSERT INTO `log` VALUES ('15','59','login','masuk','2020-03-09 09:18:56');
INSERT INTO `log` VALUES ('16','126','login','masuk','2020-03-09 09:20:37');
INSERT INTO `log` VALUES ('17','126','testongoing','sedang ujian','2020-03-09 09:20:45');
INSERT INTO `log` VALUES ('18','126','login','Selesai Ujian','2020-03-09 09:22:23');

/*---------------------------------------------------------------
  TABLE: `mapel`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mapel`;
CREATE TABLE `mapel` (
  `id_mapel` int(11) NOT NULL AUTO_INCREMENT,
  `kode` varchar(255) NOT NULL DEFAULT '0',
  `idpk` varchar(255) NOT NULL,
  `idguru` varchar(3) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL DEFAULT 0,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL DEFAULT 0,
  `bobot_pg` int(5) NOT NULL,
  `bobot_esai` int(5) NOT NULL DEFAULT 0,
  `level` varchar(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(2) NOT NULL,
  `kkm` int(3) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_mapel`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
INSERT INTO `mapel` VALUES   ('5','PRODUKTIF_TKJ_TKR_12','a:2:{i:0;s:3:\"TKJ\";i:1;s:3:\"TKR\";}','227','PRODUKTIFTKJ','40','5','40','5','70','30','XII','5','a:1:{i:0;s:5:\"semua\";}','2020-02-22 20:51:41','1','75','');
INSERT INTO `mapel` VALUES ('23','BINDO_A_XII','a:1:{i:0;s:5:\"semua\";}','228','BINDO','40','0','40','0','100','0','XII','5','a:1:{i:0;s:5:\"semua\";}','2020-02-24 00:26:07','1','75','');
INSERT INTO `mapel` VALUES ('25','SR02','a:1:{i:0;s:5:\"semua\";}','228','BINDO','40','0','40','0','100','0','semua','4','a:1:{i:0;s:5:\"semua\";}','2020-03-05 07:41:54','1','75','');
INSERT INTO `mapel` VALUES ('26','ESAI','a:1:{i:0;s:5:\"semua\";}','228','BING','0','5','0','5','0','100','X','3','a:1:{i:0;s:5:\"semua\";}','2020-03-08 21:06:12','1','75','');
INSERT INTO `mapel` VALUES ('29','ESAI_2_2','a:1:{i:0;s:5:\"semua\";}','228','BING','0','5','0','5','0','100','X','3','a:1:{i:0;s:5:\"semua\";}','2020-03-09 12:06:11','1','75','');

/*---------------------------------------------------------------
  TABLE: `mata_pelajaran`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `mata_pelajaran`;
CREATE TABLE `mata_pelajaran` (
  `kode_mapel` varchar(20) NOT NULL,
  `nama_mapel` varchar(50) NOT NULL,
  `mata_pelajaran_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`kode_mapel`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `mata_pelajaran` VALUES   ('BINDO','BAHASA INDONESIA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('BING','BAHASA INGGRIS',NULL);
INSERT INTO `mata_pelajaran` VALUES ('FISIKA','FISIKA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('KIMIA','KIMIA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('MTK','MATEMATIKA',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PAI','PENDIDIKAN AGAMA ISLAM',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PJOK','PENJASKES',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PKN','PENDIDIKAN KEWARGANEGARAAN',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PRODTKJ','PRODUKTIF TKJ',NULL);
INSERT INTO `mata_pelajaran` VALUES ('PRODUKTIFTKJ','PRODUKTIFTKJ',NULL);
INSERT INTO `mata_pelajaran` VALUES ('SEJINDO','SEJARAH INDONESIA',NULL);

/*---------------------------------------------------------------
  TABLE: `nilai`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `nilai`;
CREATE TABLE `nilai` (
  `id_nilai` int(11) NOT NULL AUTO_INCREMENT,
  `id_ujian` int(11) NOT NULL,
  `id_mapel` int(11) NOT NULL,
  `id_siswa` int(11) NOT NULL,
  `kode_ujian` varchar(30) NOT NULL,
  `ujian_mulai` varchar(20) NOT NULL,
  `ujian_berlangsung` varchar(20) DEFAULT NULL,
  `ujian_selesai` varchar(20) DEFAULT NULL,
  `jml_benar` int(10) DEFAULT NULL,
  `jml_salah` int(10) DEFAULT NULL,
  `nilai_esai` varchar(10) DEFAULT NULL,
  `skor` varchar(10) DEFAULT NULL,
  `total` varchar(10) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `ipaddress` varchar(20) DEFAULT NULL,
  `hasil` int(2) NOT NULL,
  `jawaban` text DEFAULT NULL,
  `jawaban_esai` longtext DEFAULT NULL,
  `nilai_esai2` text DEFAULT NULL,
  `online` int(1) NOT NULL DEFAULT 0,
  `id_soal` longtext DEFAULT NULL,
  `id_opsi` longtext DEFAULT NULL,
  `id_esai` text DEFAULT NULL,
  `blok` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id_nilai`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
INSERT INTO `nilai` VALUES   ('4','21','23','58','PH','2020-03-05 08:02:48','2020-03-05 08:02:48','2020-03-05 08:06:04','9','31',NULL,'22.50','22.50','1','::1','1','a:40:{i:177;s:1:\"C\";i:178;s:1:\"B\";i:179;s:1:\"E\";i:180;s:1:\"E\";i:181;s:1:\"E\";i:182;s:1:\"B\";i:183;s:1:\"D\";i:184;s:1:\"D\";i:185;s:1:\"B\";i:186;s:1:\"C\";i:187;s:1:\"A\";i:188;s:1:\"B\";i:189;s:1:\"E\";i:190;s:1:\"C\";i:191;s:1:\"C\";i:192;s:1:\"D\";i:193;s:1:\"E\";i:194;s:1:\"E\";i:195;s:1:\"B\";i:196;s:1:\"D\";i:197;s:1:\"E\";i:198;s:1:\"C\";i:199;s:1:\"D\";i:200;s:1:\"B\";i:201;s:1:\"A\";i:202;s:1:\"E\";i:203;s:1:\"C\";i:204;s:1:\"D\";i:205;s:1:\"C\";i:206;s:1:\"A\";i:207;s:1:\"C\";i:208;s:1:\"E\";i:209;s:1:\"A\";i:210;s:1:\"A\";i:211;s:1:\"C\";i:212;s:1:\"D\";i:213;s:1:\"B\";i:214;s:1:\"C\";i:215;s:1:\"C\";i:216;s:1:\"E\";}','a:0:{}',NULL,'0','195,200,213,177,203,196,197,206,199,204,193,201,194,188,190,198,178,210,187,192,179,216,182,183,209,189,184,186,202,207,208,214,181,211,191,205,185,180,215,212,','B,D,A,C,E,B,D,E,C,A,B,A,C,E,D,C,B,D,E,A,C,E,A,D,B,D,E,C,A,B,E,C,B,A,D,A,D,B,E,C,D,B,A,C,E,D,B,C,A,E,E,B,D,C,A,A,B,E,D,C,E,D,B,C,A,B,A,C,E,D,C,B,E,D,A,C,E,A,D,B,B,C,A,D,E,A,C,B,E,D,A,E,C,D,B,D,A,E,B,C,E,C,A,D,B,E,C,D,A,B,D,B,A,E,C,D,E,B,A,C,A,D,B,E,C,E,D,C,B,A,D,E,B,C,A,C,D,E,B,A,E,D,A,C,B,C,D,E,A,B,E,C,A,B,D,C,D,A,B,E,E,A,D,B,C,C,E,A,B,D,C,B,D,E,A,C,A,D,E,B,B,E,A,C,D,E,D,C,B,A,C,E,A,B,D,D,C,A,B,E,',NULL,'0');
INSERT INTO `nilai` VALUES ('5','21','23','59','PH','2020-03-05 16:26:06','2020-03-05 16:26:06','2020-03-05 16:28:59','6','34',NULL,'15.00','15.00','1','127.0.0.1','1','a:40:{i:177;s:1:\"C\";i:178;s:1:\"D\";i:179;s:1:\"A\";i:180;s:1:\"A\";i:181;s:1:\"E\";i:182;s:1:\"E\";i:183;s:1:\"A\";i:184;s:1:\"C\";i:185;s:1:\"B\";i:186;s:1:\"B\";i:187;s:1:\"B\";i:188;s:1:\"A\";i:189;s:1:\"E\";i:190;s:1:\"B\";i:191;s:1:\"B\";i:192;s:1:\"A\";i:193;s:1:\"B\";i:194;s:1:\"E\";i:195;s:1:\"B\";i:196;s:1:\"E\";i:197;s:1:\"C\";i:198;s:1:\"B\";i:199;s:1:\"A\";i:200;s:1:\"A\";i:201;s:1:\"C\";i:202;s:1:\"C\";i:203;s:1:\"A\";i:204;s:1:\"A\";i:205;s:1:\"B\";i:206;s:1:\"A\";i:207;s:1:\"A\";i:208;s:1:\"D\";i:209;s:1:\"B\";i:210;s:1:\"C\";i:211;s:1:\"D\";i:212;s:1:\"D\";i:213;s:1:\"A\";i:214;s:1:\"C\";i:215;s:1:\"A\";i:216;s:1:\"E\";}','a:0:{}',NULL,'0','177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,','C,A,E,B,D,D,B,E,A,C,C,A,D,E,B,D,A,B,E,C,A,E,C,D,B,E,C,D,B,A,A,C,B,D,E,C,B,A,E,D,B,D,C,A,E,B,C,A,D,E,B,D,C,E,A,A,E,D,C,B,E,A,B,C,D,B,D,E,C,A,B,A,C,E,D,A,B,D,E,C,B,D,A,E,C,D,E,C,B,A,C,B,D,A,E,A,E,D,C,B,D,C,B,E,A,A,B,E,C,D,D,A,B,C,E,C,A,E,B,D,A,C,D,B,E,E,C,A,D,B,A,B,E,C,D,A,B,C,E,D,B,C,E,A,D,A,D,C,B,E,A,C,D,E,B,D,A,E,C,B,B,C,D,E,A,C,B,D,E,A,D,B,E,C,A,D,C,E,A,B,A,B,C,E,D,C,B,E,A,D,A,E,D,B,C,E,A,C,B,D,',NULL,'0');
INSERT INTO `nilai` VALUES ('6','25','26','126','PH','2020-03-09 09:20:45','2020-03-09 09:20:45','2020-03-09 09:22:23','0','0','100','nan','100',NULL,'::1','1','a:0:{}','a:5:{i:264;s:17:\"eeeeeeeeeeeeeeeee\";i:265;s:15:\"ddddddddddddddd\";i:266;s:16:\"cccccccccccccccc\";i:267;s:13:\"bbbbbbbbbbbbb\";i:268;s:9:\"AAAAAAAAA\";}','a:5:{i:264;s:2:\"20\";i:265;s:2:\"20\";i:266;s:2:\"20\";i:267;s:2:\"20\";i:268;s:2:\"20\";}','0','268,267,266,265,264,',NULL,NULL,'0');

/*---------------------------------------------------------------
  TABLE: `pengawas`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengawas`;
CREATE TABLE `pengawas` (
  `id_pengawas` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jabatan` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` varchar(10) DEFAULT NULL,
  `no_ktp` varchar(16) DEFAULT NULL,
  `tempat_lahir` varchar(30) DEFAULT NULL,
  `tgl_lahir` date DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `no_hp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `alamat_jalan` varchar(255) DEFAULT NULL,
  `rt_rw` varchar(8) DEFAULT NULL,
  `dusun` varchar(50) DEFAULT NULL,
  `kelurahan` varchar(50) DEFAULT NULL,
  `kecamatan` varchar(30) DEFAULT NULL,
  `kode_pos` int(6) DEFAULT NULL,
  `nuptk` varchar(20) DEFAULT NULL,
  `bidang_studi` varchar(50) DEFAULT NULL,
  `jenis_ptk` varchar(50) DEFAULT NULL,
  `tgs_tambahan` varchar(50) DEFAULT NULL,
  `status_pegawai` varchar(50) DEFAULT NULL,
  `status_aktif` varchar(20) DEFAULT NULL,
  `status_nikah` varchar(20) DEFAULT NULL,
  `sumber_gaji` varchar(30) DEFAULT NULL,
  `ahli_lab` varchar(10) DEFAULT NULL,
  `nama_ibu` varchar(40) DEFAULT NULL,
  `nama_suami` varchar(50) DEFAULT NULL,
  `nik_suami` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `tmt` date DEFAULT NULL,
  `keahlian_isyarat` varchar(10) DEFAULT NULL,
  `kewarganegaraan` varchar(10) DEFAULT NULL,
  `npwp` varchar(16) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `ptk_id` varchar(50) DEFAULT NULL,
  `password2` text DEFAULT NULL,
  PRIMARY KEY (`id_pengawas`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;
INSERT INTO `pengawas` VALUES   ('1','-','administrator','','admin','$2y$10$3fVC8VJfm8ElEv6PNLT2R.XalOF.sFq7TOgJE54p5KQm2oL/0N1Im','admin','','','0000-00-00','','','','','','','','','','0','','','','','','','','','','','','','','0000-00-00','','','','',NULL,NULL);
INSERT INTO `pengawas` VALUES ('227','-','PAJAR SIDIK N',NULL,'pajarsidikn','12345','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `pengawas` VALUES ('228','-','Masniah, S.Pd',NULL,'masniah','123456','guru',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `pengumuman`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pengumuman`;
CREATE TABLE `pengumuman` (
  `id_pengumuman` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(30) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `user` int(3) NOT NULL,
  `text` longtext NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id_pengumuman`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
INSERT INTO `pengumuman` VALUES   ('1','internal','SELAMAT DATANG DI CANDY SCHOOL','1','<p>Silahkan pelajari aplikasi ini untuk keperluan Ujian Berbasis Digital. Semoga dengan aplikasi ini bisa bermanfaat untuk pendidikan.</p>\r\n<p>Jika ingin support pengembangan silahkan bisa <strong>berdonasi</strong> di web <a href=\"http://candycbt.id\">Candy CBT</a></p>\r\n<p>SALAM CANDY</p>','2020-02-03 17:50:12');
INSERT INTO `pengumuman` VALUES ('2','eksternal','UNTUK SISWA','1','<p>ini pengumuman untuk siswa</p>','2020-03-09 12:11:23');

/*---------------------------------------------------------------
  TABLE: `pk`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `pk`;
CREATE TABLE `pk` (
  `id_pk` varchar(10) NOT NULL,
  `program_keahlian` varchar(50) NOT NULL,
  `jurusan_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_pk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `pk` VALUES   ('TKJ','TKJ',NULL);
INSERT INTO `pk` VALUES ('TKR','TKR',NULL);
INSERT INTO `pk` VALUES ('TP','TP',NULL);

/*---------------------------------------------------------------
  TABLE: `referensi_jurusan`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `referensi_jurusan`;
CREATE TABLE `referensi_jurusan` (
  `jurusan_id` varchar(10) NOT NULL,
  `nama_jurusan` varchar(100) DEFAULT NULL,
  `untuk_sma` int(1) NOT NULL,
  `untuk_smk` int(1) NOT NULL,
  `jenjang_pendidikan_id` int(1) DEFAULT NULL,
  PRIMARY KEY (`jurusan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `ruang`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ruang`;
CREATE TABLE `ruang` (
  `kode_ruang` varchar(10) NOT NULL,
  `keterangan` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_ruang`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `ruang` VALUES   ('R1','R1');
INSERT INTO `ruang` VALUES ('R2','R2');

/*---------------------------------------------------------------
  TABLE: `savsoft_options`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_options`;
CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL AUTO_INCREMENT,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`oid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `savsoft_qbank`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `savsoft_qbank`;
CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL AUTO_INCREMENT,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*---------------------------------------------------------------
  TABLE: `semester`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `semester_id` varchar(5) NOT NULL,
  `tahun_ajaran_id` varchar(4) NOT NULL,
  `nama_semester` varchar(50) NOT NULL,
  `semester` int(1) NOT NULL,
  `periode_aktif` enum('1','0') NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  PRIMARY KEY (`semester_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `server`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `server`;
CREATE TABLE `server` (
  `kode_server` varchar(20) NOT NULL,
  `nama_server` varchar(30) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `server` VALUES   ('R1','SERVER R1','aktif');
INSERT INTO `server` VALUES ('R2','SERVER R2','aktif');
INSERT INTO `server` VALUES ('ONLINE','ONLINE','aktif');
INSERT INTO `server` VALUES ('SR01','SR01','aktif');
INSERT INTO `server` VALUES ('SR02','SR02','aktif');

/*---------------------------------------------------------------
  TABLE: `sesi`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sesi`;
CREATE TABLE `sesi` (
  `kode_sesi` varchar(10) NOT NULL,
  `nama_sesi` varchar(30) NOT NULL,
  PRIMARY KEY (`kode_sesi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
INSERT INTO `sesi` VALUES   ('1','1');
INSERT INTO `sesi` VALUES ('2','2');
INSERT INTO `sesi` VALUES ('3','3');

/*---------------------------------------------------------------
  TABLE: `session`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_time` varchar(10) NOT NULL,
  `session_hash` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*---------------------------------------------------------------
  TABLE: `setting`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `setting`;
CREATE TABLE `setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `aplikasi` varchar(100) DEFAULT NULL,
  `kode_sekolah` varchar(10) DEFAULT NULL,
  `sekolah` varchar(50) DEFAULT NULL,
  `jenjang` varchar(5) DEFAULT NULL,
  `kepsek` varchar(50) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `kecamatan` varchar(50) DEFAULT NULL,
  `kota` varchar(30) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `web` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `header` text DEFAULT NULL,
  `header_kartu` text DEFAULT NULL,
  `nama_ujian` text DEFAULT NULL,
  `versi` varchar(10) DEFAULT NULL,
  `ip_server` varchar(100) DEFAULT NULL,
  `waktu` varchar(50) DEFAULT NULL,
  `server` varchar(50) DEFAULT NULL,
  `id_server` varchar(50) DEFAULT NULL,
  `url_host` varchar(50) DEFAULT NULL,
  `token_api` varchar(50) DEFAULT NULL,
  `sekolah_id` varchar(50) DEFAULT NULL,
  `npsn` varchar(10) DEFAULT NULL,
  `db_versi` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `setting` VALUES   ('1','CANDY SCHOOL','SR0','CANDY SCHOOL','SD','Dedi Baidillah, S.Pd, M.Pd','-','IO : 503.15/015/IV/SK-SMK/BPMPPT/2013; NPSN: 69787351 ; NSS : 402022210005<br />\r\nJL.Buyut Kaipah .Pulo Bambu Karang Bahagia Kec.Karang Bahagia Kab. Bekasi <br />\r\n','Karang Bahagia                              ','Bekasi','021 123 123 123','021 95878050','smkhsagung.sch.id','smkhsagung@gmail.com','dist/img/logo67.png','','KARTU PESERTA','PENILAIAN HARIAN','2.5','http://192.168.0.200/candycbt','Asia/Jakarta','pusat','SR01','192.168.100.254/candyserver','3OCbovXVLBlcTy','8cce47df-aae7-4274-83cb-5af3093eab56','69787351','2.8.0');

/*---------------------------------------------------------------
  TABLE: `sinkron`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `sinkron`;
CREATE TABLE `sinkron` (
  `nama_data` varchar(50) NOT NULL,
  `data` varchar(50) DEFAULT NULL,
  `jumlah` varchar(50) DEFAULT NULL,
  `tanggal` varchar(50) DEFAULT NULL,
  `status_sinkron` int(11) DEFAULT NULL,
  PRIMARY KEY (`nama_data`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
INSERT INTO `sinkron` VALUES   ('DATA1','siswa','125','2020-03-05 16:22:58','1');
INSERT INTO `sinkron` VALUES ('DATA2','bank soal','2','2020-03-02 16:51:42','1');
INSERT INTO `sinkron` VALUES ('DATA3','soal','85','2020-03-02 16:51:42','1');
INSERT INTO `sinkron` VALUES ('DATA4','jadwal','2','2020-03-02 12:45:42','1');

/*---------------------------------------------------------------
  TABLE: `siswa`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `siswa`;
CREATE TABLE `siswa` (
  `id_siswa` int(11) NOT NULL AUTO_INCREMENT,
  `id_kelas` varchar(11) DEFAULT NULL,
  `idpk` varchar(10) DEFAULT NULL,
  `nis` varchar(30) DEFAULT NULL,
  `no_peserta` varchar(30) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `level` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `sesi` int(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `jenis_kelamin` varchar(30) DEFAULT NULL,
  `tempat_lahir` varchar(100) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `agama` varchar(10) DEFAULT NULL,
  `kebutuhan_khusus` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `rt` varchar(5) DEFAULT NULL,
  `rw` varchar(5) DEFAULT NULL,
  `dusun` varchar(100) DEFAULT NULL,
  `kelurahan` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kode_pos` int(10) DEFAULT NULL,
  `jenis_tinggal` varchar(100) DEFAULT NULL,
  `alat_transportasi` varchar(100) DEFAULT NULL,
  `hp` varchar(15) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `skhun` int(11) DEFAULT NULL,
  `no_kps` varchar(50) DEFAULT NULL,
  `nama_ayah` varchar(150) DEFAULT NULL,
  `tahun_lahir_ayah` int(4) DEFAULT NULL,
  `pendidikan_ayah` varchar(50) DEFAULT NULL,
  `pekerjaan_ayah` varchar(100) DEFAULT NULL,
  `penghasilan_ayah` varchar(100) DEFAULT NULL,
  `nohp_ayah` varchar(15) DEFAULT NULL,
  `nama_ibu` varchar(150) DEFAULT NULL,
  `tahun_lahir_ibu` int(4) DEFAULT NULL,
  `pendidikan_ibu` varchar(50) DEFAULT NULL,
  `pekerjaan_ibu` varchar(100) DEFAULT NULL,
  `penghasilan_ibu` varchar(100) DEFAULT NULL,
  `nohp_ibu` int(15) DEFAULT NULL,
  `nama_wali` varchar(150) DEFAULT NULL,
  `tahun_lahir_wali` int(4) DEFAULT NULL,
  `pendidikan_wali` varchar(50) DEFAULT NULL,
  `pekerjaan_wali` varchar(100) DEFAULT NULL,
  `penghasilan_wali` varchar(50) DEFAULT NULL,
  `angkatan` int(5) DEFAULT NULL,
  `nisn` varchar(50) DEFAULT NULL,
  `peserta_didik_id` varchar(50) DEFAULT NULL,
  `semester_id` varchar(10) DEFAULT NULL,
  `rombongan_belajar_id` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_siswa`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=latin1;
INSERT INTO `siswa` VALUES   ('1','XIITP','TP','151610041','12-248-001-8','Ade Saputra','XII','R1','1','hs001','ps001','siswa.png','SR01',NULL,NULL,NULL,'kristen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('2','XIITP','TP','151610043','12-248-002-7','Ahmad Fauzi','XII','R1','1','hs002','ps002','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('3','XIITP','TP','151610044','12-248-003-6','Ahmad Fauzi','XII','R1','1','hs003','ps003','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('4','XIITP','TP','151610045','12-248-004-5','Ahmad Juliansyah','XII','R1','1','hs004','ps004','','SR01',NULL,NULL,NULL,'kristen',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('5','XIITP','TP','151610047','12-248-005-4','Algi Julian','XII','R1','1','hs005','ps005','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('6','XIITP','TP','151610048','12-248-006-3','Anas Aditya','XII','R1','1','hs006','ps006','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('7','XIITP','TP','151610049','12-248-007-2','Andre Irawan','XII','R1','1','hs007','ps007','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('8','XIITP','TP','151610042','12-248-008-9','Andrian Al Viansyah','XII','R1','1','hs008','ps008','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('9','XIITP','TP','151610050','12-248-009-8','Andrian Maulana','XII','R1','1','hs009','ps009','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('10','XIITP','TP','151610051','12-248-010-7','Bambang Reza Umbara','XII','R1','1','hs010','ps010','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('11','XIITP','TP','151610052','12-248-011-6','Ferdi Hasan','XII','R1','1','hs011','ps011','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('12','XIITP','TP','151610053','12-248-012-5','Guntur Adthia Bagaskara','XII','R1','1','hs012','ps012','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('13','XIITP','TP','151610055','12-248-013-4','Harun Syahroji Iqmal','XII','R1','2','hs013','ps013','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('14','XIITP','TP','151610054','12-248-014-3','Haryadi Sajali','XII','R1','2','hs014','ps014','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('15','XIITP','TP','151610057','12-248-015-2','Ismail','XII','R1','2','hs015','ps015','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('16','XIITP','TP','151610062','12-248-016-9','Muchtar Gana','XII','R1','2','hs016','ps016','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('17','XIITP','TP','151610058','12-248-017-8','Muhamad Abdul Rahman','XII','R1','2','hs017','ps017','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('18','XIITP','TP','151610063','12-248-018-7','Muhamad Ali Hapijudin','XII','R1','2','hs018','ps018','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('19','XIITP','TP','151610065','12-248-019-6','Muhamad Rizal','XII','R1','2','hs019','ps019','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('20','XIITP','TP','151610066','12-248-020-5','Muhammad Niji Yuki Huda Sabillah','XII','R1','2','hs020','ps020','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('21','XIITP','TP','151610059','12-248-021-4','Muhammad Ogi Prayoga S.','XII','R1','2','hs021','ps021','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('22','XIITP','TP','151610067','12-248-022-3','Niko','XII','R1','2','hs022','ps022','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('23','XIITP','TP','151610068','12-248-023-2','Rahma Ahmada','XII','R1','2','hs023','ps023','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('24','XIITP','TP','151610070','12-248-024-9','Renaldi','XII','R1','2','hs024','ps024','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('25','XIITP','TP','151610069','12-248-025-8','Renaldi','XII','R1','2','hs025','ps025','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('26','XIITP','TP','151610072','12-248-026-7','Rico Dwi Addrian Fattah','XII','R1','2','hs026','ps026','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('27','XIITP','TP','151610073','12-248-027-6','Riki Riyanto','XII','R1','2','hs027','ps027','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('28','XIITP','TP','151610074','12-248-028-5','Riki S','XII','R1','2','hs028','ps028','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('29','XIITP','TP','151610075','12-248-029-4','Rudi Hartono','XII','R1','2','hs029','ps029','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('30','XIITP','TP','151610076','12-248-030-3','Saipul Anwar','XII','R1','3','hs030','ps030','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('31','XIITP','TP','151610077','12-248-031-2','Satya Pratama','XII','R1','3','hs031','ps031','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('32','XIITP','TP','151610078','12-248-032-9','Sutrisno','XII','R1','3','hs032','ps032','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('33','XIITP','TP','151610079','12-248-033-8','Syarif','XII','R1','3','hs033','ps033','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('34','XIITP','TP','151610081','12-248-034-7','Yobi Pratama','XII','R1','3','hs034','ps034','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('35','XIITKR','TKR','151610083','12-248-035-6','Adittiya','XII','R1','3','hs035','ps035','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('36','XIITKR','TKR','151610084','12-248-036-5','Aef saefullah EDK','XII','R1','3','hs036','ps036','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('37','XIITKR','TKR','151610085','12-248-037-4','Ahmad','XII','R1','3','hs037','ps037','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('38','XIITKR','TKR','151610086','12-248-038-3','Ahmad dani','XII','R1','3','hs038','ps038','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('39','XIITKR','TKR','151610089','12-248-039-2','Amar','XII','R1','3','hs039','ps039','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('40','XIITKR','TKR','151610090','12-248-040-9','Andi','XII','R1','3','hs040','ps040','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('41','XIITKR','TKR','151610091','12-248-041-8','Anggi Julian Purnama','XII','R1','3','hs041','ps041','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('42','XIITKR','TKR','151610092','12-248-042-7','Ardiansyah','XII','R1','3','hs042','ps042','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('43','XIITKR','TKR','151610093','12-248-043-6','Aryanto','XII','R1','3','hs043','ps043','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('44','XIITKR','TKR','151610094','12-248-044-5','Awaludin','XII','R1','3','hs044','ps044','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('45','XIITKR','TKR','151610096','12-248-045-4','Dede Ahmad Pauji','XII','R1','3','hs045','ps045','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('46','XIITKR','TKR','151610099','12-248-046-3','Egi Ariansyah','XII','R1','3','hs046','ps046','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('47','XIITKR','TKR','151610100','12-248-047-2','Erdin','XII','R1','3','hs047','ps047','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('48','XIITKR','TKR','151610101','12-248-048-9','Fajar Ramadhan','XII','R1','3','hs048','ps048','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('49','XIITKR','TKR','151610102','12-248-049-8','Fiky Zulfikar','XII','R1','3','hs049','ps049','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('50','XIITKR','TKR','151610103','12-248-050-7','Habibi','XII','R1','3','hs050','ps050','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('51','XIITKR','TKR','151610104','12-248-051-6','Handriyansyah Wijaya','XII','R1','3','hs051','ps051','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('52','XIITKR','TKR','151610128','12-248-052-5','Herlangga Supardi','XII','R1','3','hs052','ps052','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('53','XIITKR','TKR','151610106','12-248-053-4','Ibnu Mujahidin','XII','R1','3','hs053','ps053','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('54','XIITKR','TKR','151610107','12-248-054-3','Kasan Wijaya Kusuma','XII','R1','3','hs054','ps054','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('55','XIITKR','TKR','151610109','12-248-055-2','Muhamad Aldi Ardiansyah','XII','R1','3','hs055','ps055','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('56','XIITKR','TKR','151610108','12-248-056-9','Muhammad Sutrisno','XII','R1','1','hs056','ps056','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('57','XIITKR','TKR','151610110','12-248-057-8','Muhammad Ramdan','XII','R1','1','hs057','ps057','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('58','XIITKR','TKR','151610111','12-248-058-7','Nur Arifin','XII','R1','1','hs058','ps058','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('59','XIITKR','TKR','151610112','12-248-059-6','Riyo Wijaya','XII','R1','1','hs059','ps059','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('60','XIITKR','TKR','151610113','12-248-060-5','Rizal Maulana Aziz','XII','R1','1','hs060','ps060','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('61','XIITKR','TKR','151610114','12-248-061-4','Robi Darwis','XII','R1','1','hs061','ps061','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('62','XIITKR','TKR','151610115','12-248-062-3','Roni Sahroni','XII','R1','1','hs062','ps062','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('63','XIITKR','TKR','151610117','12-248-063-2','Saemi Al Rasyid','XII','R1','1','hs063','ps063','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('64','XIITKR','TKR','151610118','12-248-064-9','Said Abdullah','XII','R1','1','hs064','ps064','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('65','XIITKR','TKR','151610119','12-248-065-8','Saripudin','XII','R1','1','hs065','ps065','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('66','XIITKR','TKR','151610123','12-248-066-7','Ahmad Faisal','XII','R1','1','hs066','ps066','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('67','XIITKR','TKR','151610124','12-248-067-6','Aksal Sobari','XII','R1','1','hs067','ps067','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('68','XIITKR','TKR','151610125','12-248-068-5','Alfian','XII','R1','1','hs068','ps068','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('69','XIITKR','TKR','151610126','12-248-069-4','Arsad sopian','XII','R1','1','hs069','ps069','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('70','XIITKR','TKR','151610127','12-248-070-3','Dede Maulana','XII','R1','1','hs070','ps070','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('71','XIITKR','TKR','151610129','12-248-071-2','Junaedi','XII','R1','1','hs071','ps071','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('72','XIITKR','TKR','151610168','12-248-072-9','Muhamad Fikri Fahmi Kurniadi','XII','R1','1','hs072','ps072','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('73','XIITKR','TKR','151610130','12-248-073-8','Muhamad Kevin Fadli Fauzi','XII','R1','2','hs073','ps073','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('74','XIITKR','TKR','151610132','12-248-074-7','Muhamad Rifki Saputra','XII','R1','2','hs074','ps074','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('75','XIITKR','TKR','151610133','12-248-075-6','Padrul Cahyadi','XII','R1','2','hs075','ps075','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('76','XIITKR','TKR','151610169','12-248-076-5','Pentin Alamsyah','XII','R1','2','hs076','ps076','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('77','XIITKR','TKR','151610134','12-248-077-4','Sobri Saputra','XII','R1','2','hs077','ps077','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('78','XIITKR','TKR','151610135','12-248-078-3','Sukendar','XII','R1','2','hs078','ps078','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('79','XIITKR','TKR','151610120','12-248-079-2','Teguh Nur Sidik','XII','R1','2','hs079','ps079','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('80','XIITKR','TKR','151610136','12-248-080-9','Tubagus M. Al-Fajri','XII','R1','2','hs080','ps080','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('81','XIITKR','TKR','151610166','12-248-081-8','Wahyu Pratama','XII','R1','2','hs081','ps081','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('82','XIITKR','TKR','151610172','12-248-082-7','Wahyudin AZ.','XII','R1','2','hs082','ps082','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('83','XIITKR','TKR','151610138','12-248-083-6','Wiro Sugianto','XII','R1','2','hs083','ps083','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('84','XIITKR','TKR','151610121','12-248-084-5','Yogi Priyogo','XII','R1','2','hs084','ps084','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('85','XIITKR','TKR','151610139','12-248-085-4','Yuda Saputra','XII','R1','2','hs085','ps085','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('86','XIITKR','TKR','151610140','12-248-086-3','Yuwanda Musyaddir','XII','R1','2','hs086','ps086','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('87','XIITKJ','TKJ','151610001','12-248-087-2','Anggi Gian Sapitri','XII','R1','2','hs087','ps087','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('88','XIITKJ','TKJ','151610002','12-248-088-9','Cindy Apriana','XII','R1','2','hs088','ps088','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('89','XIITKJ','TKJ','151610003','12-248-089-8','Dwi Lestari','XII','R1','2','hs089','ps089','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('90','XIITKJ','TKJ','151610004','12-248-090-7','Ebih','XII','R1','2','hs090','ps090','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('91','XIITKJ','TKJ','151610005','12-248-091-6','Elis Saeti Nuraeni','XII','R1','3','hs091','ps091','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('92','XIITKJ','TKJ','151610006','12-248-092-5','Euis Susilawati','XII','R1','3','hs092','ps092','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('93','XIITKJ','TKJ','151610007','12-248-093-4','Fahmi arni','XII','R1','3','hs093','ps093','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('94','XIITKJ','TKJ','151610008','12-248-094-3','Fitri Widiasari','XII','R1','3','hs094','ps094','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('95','XIITKJ','TKJ','151610009','12-248-095-2','Gaby Cantika Oktavia','XII','R1','3','hs095','ps095','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('96','XIITKJ','TKJ','151610010','12-248-096-9','Haena Hermawati Yuningsih','XII','R1','3','hs096','ps096','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('97','XIITKJ','TKJ','151610011','12-248-097-8','Karlina','XII','R1','3','hs097','ps097','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('98','XIITKJ','TKJ','151610012','12-248-098-7','Kurniawati','XII','R1','3','hs098','ps098','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('99','XIITKJ','TKJ','151610013','12-248-099-6','Ladina al zannah chandra','XII','R1','3','hs099','ps099','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('100','XIITKJ','TKJ','151610014','12-248-100-5','Laras Ayu Asmanih','XII','R1','3','hs100','ps100','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('101','XIITKJ','TKJ','151610015','12-248-101-4','Lastri Septriani','XII','R1','3','hs101','ps101','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('102','XIITKJ','TKJ','151610016','12-248-102-3','Lisah Fitri Kurnia','XII','R1','3','hs102','ps102','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('103','XIITKJ','TKJ','151610018','12-248-103-2','Lutfi Wisti Nandasari','XII','R2','3','hs103','ps103','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('104','XIITKJ','TKJ','151610019','12-248-104-9','Maya Karmanih','XII','R2','3','hs104','ps104','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('105','XIITKJ','TKJ','151610020','12-248-105-8','Mayang Sari','XII','R2','3','hs105','ps105','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('106','XIITKJ','TKJ','151610021','12-248-106-7','Mayang Sari Wati','XII','R2','3','hs106','ps106','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('107','XIITKJ','TKJ','151610022','12-248-107-6','Megawati','XII','R2','1','hs107','ps107','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('108','XIITKJ','TKJ','151610023','12-248-108-5','Narsih Agus Priyanti','XII','R2','1','hs108','ps108','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('109','XIITKJ','TKJ','151610024','12-248-109-4','Nuraina','XII','R2','1','hs109','ps109','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('110','XIITKJ','TKJ','151610025','12-248-110-3','Pita Kaputri','XII','R2','1','hs110','ps110','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('111','XIITKJ','TKJ','151610026','12-248-111-2','Putri Ayu Lestari','XII','R2','1','hs111','ps111','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('112','XIITKJ','TKJ','151610027','12-248-112-9','Putri Hagita','XII','R2','1','hs112','ps112','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('113','XIITKJ','TKJ','151610028','12-248-113-8','Rasti','XII','R2','1','hs113','ps113','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('114','XIITKJ','TKJ','151610029','12-248-114-7','Rizky Khofifah','XII','R2','1','hs114','ps114','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('115','XIITKJ','TKJ','151610030','12-248-115-6','Sahroni','XII','R2','1','hs115','ps115','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('116','XIITKJ','TKJ','151610031','12-248-116-5','Samah Maesaroh','XII','R2','1','hs116','ps116','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('117','XIITKJ','TKJ','151610032','12-248-117-4','Sarmila Febyola Putri','XII','R2','1','hs117','ps117','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('118','XIITKJ','TKJ','151610033','12-248-118-3','Silpi Damayanti','XII','R2','1','hs118','ps118','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('119','XIITKJ','TKJ','151610034','12-248-119-2','Siti Kartini','XII','R2','1','hs119','ps119','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('120','XIITKJ','TKJ','151610035','12-248-120-9','Siti Masitoh','XII','R2','1','hs120','ps120','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('121','XIITKJ','TKJ','151610036','12-248-121-8','Suci Selawati','XII','R2','2','hs121','ps121','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('122','XIITKJ','TKJ','151610037','12-248-122-7','Tania Pratika','XII','R2','2','hs122','ps122','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('123','XIITKJ','TKJ','151610038','12-248-123-6','Tarsimah D.','XII','R2','2','hs123','ps123','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('124','XIITKJ','TKJ','151610039','12-248-124-5','Trisna Shalamshah','XII','R2','2','hs124','ps124','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
INSERT INTO `siswa` VALUES ('125','XIITKJ','TKJ','151610040','12-248-125-4','Yoga Maulana Atmaja','XII','R2','2','hs125','ps125','','SR01',NULL,NULL,NULL,'islam',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `soal`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `soal`;
CREATE TABLE `soal` (
  `id_soal` int(11) NOT NULL AUTO_INCREMENT,
  `id_mapel` int(11) NOT NULL,
  `nomor` int(5) DEFAULT NULL,
  `soal` longtext DEFAULT NULL,
  `jenis` int(1) DEFAULT NULL,
  `pilA` longtext DEFAULT NULL,
  `pilB` longtext DEFAULT NULL,
  `pilC` longtext DEFAULT NULL,
  `pilD` longtext DEFAULT NULL,
  `pilE` longtext DEFAULT NULL,
  `jawaban` varchar(1) DEFAULT NULL,
  `file` mediumtext DEFAULT NULL,
  `file1` mediumtext DEFAULT NULL,
  `fileA` mediumtext DEFAULT NULL,
  `fileB` mediumtext DEFAULT NULL,
  `fileC` mediumtext DEFAULT NULL,
  `fileD` mediumtext DEFAULT NULL,
  `fileE` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id_soal`)
) ENGINE=InnoDB AUTO_INCREMENT=269 DEFAULT CHARSET=utf8;
INSERT INTO `soal` VALUES   ('1','5','1','<p>Masalah yang sering terjadi pada monitor adalah ukuran layar yang tidak sesuai dengan keinginan kita. Pada windows 7, dapt dilakukan pengaturan dengan cara&hellip;<br />A.klik kanan pada desktop &gt;&gt; screen resolution<br />B.klik kanan pada desktop &gt;&gt; settings &gt;&gt; screen resolution<br />C.klik kanan pada desktop &gt;&gt; properties &gt;&gt; setting<br />D.klik kanan pada desktop &gt;&gt; setting &gt;&gt; properties &gt;&gt; screen resolution<br />E.properties &gt;&gt; setting &gt;&gt; screen resolution</p>','1','','','','','','A','','','','','','','');
INSERT INTO `soal` VALUES ('2','5','2','<p>Ketika melakukan proses upgrade atau mengganti prosesor, yang perlu diperhatikan pada motherboard adalah&hellip;<br />A.Pendingin prosesor<br />B.Tipe socket<br />C.Jumlah usb terpasang<br />D.Jumlah memori terpasang<br />E.Jumlah expansion slot</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('3','5','3','<p>Prosedur yang dilakukan jika monitor tidak menyala :<br />i.Pastikan tombol ON/OFF dalam kondisi baik<br />ii.Cek kabel power yang ke outlet listrik<br />iii.Ganti kabel power<br />iv.Cek kabel video<br />v.Ganti monitor<br />Urutan yang benar adalah&hellip;<br />A.ii, i, iii, iv, v<br />B.ii, i, iii, v, iv<br />C.ii, i, v, iv, iii<br />D.i, ii, iii, v, iv<br />E.i, ii, iii, iv, v</p>','1','','','','','','E','','','','','','','');
INSERT INTO `soal` VALUES ('4','5','4','<p>untuk melakukan perawatan PC menggunakan disk cleanup yang ada pada windows, file-file yang tidak diperlukan dapat dihapus dengan cara&hellip;<br />A.accessories &gt;&gt; system tools &gt;&gt; start &gt;&gt; disk cleanup<br />B.system tools &gt;&gt; start &gt;&gt; accessories &gt;&gt; disk cleanup<br />C.start &gt;&gt; system tools &gt;&gt; accessories &gt;&gt; disk cleanup<br />D.system tools &gt;&gt; accessories &gt;&gt; start &gt;&gt; disk cleanup<br />E.start &gt;&gt; accessories &gt;&gt; system tools &gt;&gt; disk cleanup</p>','1','','','','','','E','','','','','','','');
INSERT INTO `soal` VALUES ('5','5','5','<p>Jika&nbsp; komputer cepat panas, sering hang dan reboot sendiri, tindakan korektif yang perlu kita lakukan adalah pada&hellip;<br />A.Cek kipas angin atau fan<br />B.Motherboard<br />C.Power supply<br />D.Prosesor<br />E.RAM</p>','1','','','','','','A','','','','','','','');
INSERT INTO `soal` VALUES ('6','5','6','<p>Sebuah komputer memiliki RAM sebesar 1 GB. Jika komputer tersebut akan di instalasi sistem operasi linux, maka swap yang dipasang sebesar&hellip;<br />A.1 GB<br />B.1.5 GB<br />C.2 GB<br />D.2.5 GB<br />E.3 GB</p>','1','','','','','','C','','','','','','','');
INSERT INTO `soal` VALUES ('7','5','7','<p>Yang membedakan paket software free dengan paket berbayar adalah&hellip;<br />A.Pada paket berbayar, ada permintaan memasukkan serial number untuk autentikasi<br />B.Pada paket berbayar, dapat dipastikan kapasitas space besar<br />C.Pada paket free, dapat dipastikan kapasitas space besar<br />D.Pada paket free, ada permintaan memasukkan serial number untuk autentikasi<br />E.Pada paket berbayar, tidak dibatasi waktu penggunannya</p>','1','','','','','','A','','','','','','','');
INSERT INTO `soal` VALUES ('8','5','8','<p>.Topologi jaringan yang menggunakan terminal pada ujung nodenya adalah<br />A.Mesh<br />B.Bus<br />C.Star<br />D.Perr to peer<br />E.Token ring</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('9','5','9','<p>Diketahui ip address 172.172.17.7/27. Jumlah host tiap subnet adalah<br />A.24<br />B.26<br />C.28<br />D.30<br />E.32</p>','1','','','','','','D','','','','','','','');
INSERT INTO `soal` VALUES ('10','5','10','<p>Untuk menghubungkan komputer dengan switch digunakan kabel utp dengan susunan<br />A.Rollover<br />B.Straight<br />C.Serial<br />D.Crossover<br />E.DTE</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('11','5','11','<p>Perangkat WAN yang diletakkan di sisi pelanggan atau end user adalah&hellip;<br />A.DCE<br />B.CPE<br />C.DPT<br />D.ARP<br />E.DTE</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('12','5','12','<p>Untuk menterjemahkan ip address ke dalam nama domain dibutuhkan&hellip;<br />A.DHCP server<br />B.DNS server<br />C.FTP server<br />D.Proxy server<br />E.Web server</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('13','5','13','<p>Collision detection merupakan metode yang digunakan pada jaringan untuk mendeteksi&hellip;<br />A.Penyusupan data<br />B.Penerimaan data<br />C.Pengiriman<br />D.Kerusakan data<br />E.Taransmisi data</p>','1','','','','','','E','','','','','','','');
INSERT INTO `soal` VALUES ('14','5','14','<p>.Perangkat WAN yang berfungsi mengirim dan menerima informasi tentang layer network dinamakan&hellip;<br />A.Hub<br />B.LAN card<br />C.Router<br />D.Switch<br />E.VLAN</p>','1','','','','','','C','','','','','','','');
INSERT INTO `soal` VALUES ('15','5','15','<p>Keamanan yang digunakan pada jaringan wi-fi adalah&hellip;<br />A.Disable DHCP<br />B.NAT<br />C.Antivirus<br />D.Hide SSID<br />E.Broadcast SSID</p>','1','','','','','','D','','','','','','','');
INSERT INTO `soal` VALUES ('16','5','16','<p>nameserver dalam linux&nbsp; mempunyai arti&hellip;<br />A.Disable DHCP<br />B.NAT<br />C.DNS server<br />D.Ip address<br />E.Broadcast SSID</p>','1','','','','','','C','','','','','','','');
INSERT INTO `soal` VALUES ('17','5','17','<p>.Perintah apt-get&nbsp; update mempunyai tujuan&hellip;<br />A.Memperbaharui daftar client<br />B.Memperbaharui daftar host<br />C.Memperbaharui daftar repository<br />D.Memperbaharui daftar instalasi<br />E.Memperbaharui system linux</p>','1','','','','','','C','','','','','','','');
INSERT INTO `soal` VALUES ('18','5','18','<p>Untuk mengetahui apakah dns server sudah berfungsi atau belum bisa di cek dengan perintah<br />A.nslookup&nbsp; ipclient<br />B.nslookup&nbsp; namaserver<br />C.nslookup&nbsp; admin<br />D.nslookup&nbsp; emailadmin<br />E.nslookup</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('19','5','19','<p>Berikut adalah contoh dari CMS, kecuali<br />A.Owncloud<br />B.Joomla<br />C.Drupal<br />D.Moodle<br />E.Squirrelmail</p>','1','','','','','','E','','','','','','','');
INSERT INTO `soal` VALUES ('20','5','20','<p>MTA dalam email server berfungsi sebagai&hellip;</p>\r\n<p>A.client</p>\r\n<p>B.user</p>\r\n<p>C.server</p>\r\n<p>D.agent</p>\r\n<p>E.host</p>','1','','','','','','C','','','','','','','');
INSERT INTO `soal` VALUES ('21','5','21','<p>Untuk mendeteksi apakah hubungan komputer dengan jaringan sudah berjalan dengan baik,<br />digunkaan perintah&hellip;<br />A.Command prompt<br />B.Host name<br />C.Physical address<br />D.Ping<br />E.Primary dns</p>','1','','','','','','D','','','','','','','');
INSERT INTO `soal` VALUES ('22','5','22','<p>Yang membedakan secara fisik terlihat antara NIC jenis PCI dan PCI express adalah<br />A.Jumlah pin<br />B.Kecepatan transfer data<br />C.Warna lampu indikator<br />D.Teknologi yang digunakan<br />E.Jenis konektor yang digunakan</p>','1','','','','','','A','','','','','','','');
INSERT INTO `soal` VALUES ('23','5','23','<p>Diketahui sebuah jaringan mempunyai ip address 192.168.4.18/28. Ip networknya adalah&hellip;<br />A.192.168.4.15<br />B.192.168.4.16<br />C.192.168.4.17<br />D.192.168.4.31<br />E.192.168.4.32</p>','1','','','','','','E','','','','','','','');
INSERT INTO `soal` VALUES ('24','5','24','<p>Yang dimaksud cross talk dalam kabel coaxial adalah&hellip;<br />A.Data dikirim melalui jalur utama<br />B.Perlindungan dari medan listrik dan fase signal<br />C.Pelindung logam dalam kabel<br />D.Perlindungan dari petir, motor dan sistem radio<br />E.Pengiriman scara silang</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('25','5','25','<p>Memilih cdrom, harddisk, nfs, ftp atau http dalam melakukan instalasi sistem operasi jaringan linux merupakan langkah pemilihan&hellip;<br />A.Versi linux<br />B.Jenis sistem operasi<br />C.Mode instalasi<br />D.Koneksi jaringan<br />E.bahasa</p>','1','','','','','','C','','','','','','','');
INSERT INTO `soal` VALUES ('26','5','26','<p>Partisi yang pertama kali dipasang dalam instalasi sistem operasi linux adalah&hellip;<br />A./swap, /root<br />B./root, /opt<br />C./root, /home<br />D./home, /opt<br />E./boot, /root</p>','1','','','','','','A','','','','','','','');
INSERT INTO `soal` VALUES ('27','5','27','<p>Perintah untuk membuat user di linux adalah&hellip;<br />A.useradd<br />B.userdel<br />C.groupadd<br />D.groupdel<br />E.passwd</p>','1','','','','','','A','','','','','','','');
INSERT INTO `soal` VALUES ('28','5','28','<p>Cara untuk mengupgrade member server menjadi domain controller dalam windows server adalah&hellip;<br />A.cdpromo<br />B.dcpromo<br />C.nslookup<br />D.ping<br />E.dhcp</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('29','5','29','<p>Layer pada OSI yang bertugas mentransmisikan ulang terhadap paket data yang hilang di tengah jalan adalah&hellip;<br />A.application<br />B.network<br />C.presentation<br />D.session<br />E.transport</p>','1','','','','','','E','','','','','','','');
INSERT INTO `soal` VALUES ('30','5','30','<p>Gangguan&nbsp; yang disebabkan oleh tidak berjalannya aplikasi di wireless, konflik ip address, proses proxy server pada server. Dikelompokkan dalam gangguan&hellip;<br />A.Brainware<br />B.Hardware<br />C.Pemasok daya<br />D.Software<br />E.User</p>','1','','','','','','D','','','','','','','');
INSERT INTO `soal` VALUES ('31','5','31','<p>Contoh MUA dalam email server adalah<br />A.Postfix<br />B.Dovecot<br />C.Imap<br />D.Pop3<br />E.Squirrelmail</p>','1','','','','','','E','','','','','','','');
INSERT INTO `soal` VALUES ('32','5','32','<p>.Port dari SMTP dalam email server adalah<br />A.21<br />B.25<br />C.80<br />D.143<br />E.443</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('33','5','33','<p>Port dari IMAP dalam email server adalah<br />A.21<br />B.22<br />C.25<br />D.80<br />E.143</p>','1','','','','','','C','','','','','','','');
INSERT INTO `soal` VALUES ('34','5','34','<p>Port dari SMTP dalam email server adalah<br />A.21<br />B.22<br />C.25<br />D.80<br />E.143</p>','1','','','','','','E','','','','','','','');
INSERT INTO `soal` VALUES ('35','5','35','<p>Untuk mentransfer file dalam skala jaringan local saja, bisa dengan menggunakan<br />A.ftp<br />B.samba<br />C.dns<br />D.web<br />E.proxy</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('36','5','36','<p>Agar user ftp yang tidak terdaftar tidak bisa mengakses server ftp, maka user apakah yang harus dinonaktifkan?<br />A.ftp<br />B.authenticated<br />C.anonymous<br />D.ubuntu<br />E.smkdt</p>','1','','','','','','C','','','','','','','');
INSERT INTO `soal` VALUES ('37','5','37','<p>Agar lancard pertama dan lancard kedua bisa berkomunikasi maka yang harus diaktifkan adalah&hellip;<br />A.NAT<br />B.Iptables<br />C.Ip forward<br />D.Ip versi 6<br />E.Redirect</p>','1','','','','','','B','','','','','','','');
INSERT INTO `soal` VALUES ('38','5','38','<p>Paket data yang keluar dari server telah mengalami proses<br />A.Redirect<br />B.Masquerade<br />C.Prerouting<br />D.Postrouting<br />E.Drop</p>','1','','','','','','D','','','','','','','');
INSERT INTO `soal` VALUES ('39','5','39','<p>Daftar pengguna server proxy diatur melalui fitur&hellip;<br />A.ACL<br />B.http_access<br />C.allow<br />D.accept<br />E.deny</p>','1','','','','','','A','','','','','','','');
INSERT INTO `soal` VALUES ('40','5','40','<p>Untuk mengaktifkan directory swap dari proxy squid, maka yang harus dilakukan adalah&hellip;<br />A.service squid3 restart<br />B.nano&nbsp; /etc/squid3/squid.conf<br />C.squid3&nbsp; -z<br />D.squid3&nbsp; -k&nbsp; reconfigure<br />E.squid3</p>','1','','','','','','C','','','','','','','');
INSERT INTO `soal` VALUES ('166','5','1','<p>Contoh soal no 1</p>','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('167','5','2','<p>Soal no 2</p>','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('168','5','3','<p>soal no 3</p>','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('169','5','4','<p>soal no 4</p>','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('170','5','5','<p>soal no 5</p>','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('177','23','1','Urang deungeun katarik ku kasenian sunda.<br />Kecap &ldquo;dengeun&rdquo; ngandung harti &hellip;?','1','Asing','Dulur','Babaturan','Masarakat sunda','Tokoh masarakat','A','','','','','','','');
INSERT INTO `soal` VALUES ('178','23','2','Sakeudeung deui urang bakalan &ldquo;milang Kala&rdquo; PGRI.<br />&ldquo;Milang kala&rdquo; sarua hartina jeung &hellip;?','1','Hajatan','Pesta','Ulang Tahun','Peringatan','Ngitung Bulan','C','','','','','','','');
INSERT INTO `soal` VALUES ('179','23','3','Tokoh seniman sunda nu mahir dina maen Kacapi, nyaeta','1','Mang Udjo','Mang Duyeh','Mang Asep Snandar','Kang Adun','Mang Koko','E','','','','','','','');
INSERT INTO `soal` VALUES ('180','23','4','Karajaan Hastina Pura di pimpin ku Raja ...?','1','Bima','Yudhistira','Sadewa','Nakula','Arjuna','B','','','','','','','');
INSERT INTO `soal` VALUES ('181','23','5','Kasenian jeung budaya urang teh kudu di &hellip;. Sangkan lestari.','1','Rawat','Dipintonkeun','Pikacinta jeung di mumule','Dijual','Di dagangkeun','C','','','','','','','');
INSERT INTO `soal` VALUES ('182','23','6','Latar tempat carita pondok &ldquo; Nu Munggaran di Tangkuban Parahau&rdquo;, nyaeta&hellip;?','1','Padesaan','Kota','Pagunungan','Sakola','Lapangan','A','','','','','','','');
INSERT INTO `soal` VALUES ('183','23','7','Dina carita pawayangan anu jadi symbol kajahatan ti pihak &hellip; ?','1','Pandawa','Batara Kresna','Arjuna','Bima','Kurawa','E','','','','','','','');
INSERT INTO `soal` VALUES ('184','23','8','Ide carita carita pondok &ldquo;Nu Munggaran di Tangkuban Parahu&rdquo; nyaeta&hellip;?','1','Gunung Tangkuban parahu','Sasakala tangkuban parahu','Jalan ka Tangkuban parahu','Liburan Sakola ka tangkuban parahu','Karcis asup ka tangkuban parahu','D','','','','','','','');
INSERT INTO `soal` VALUES ('185','23','9','Wayang wong dimaenkeun/palakuna nyaeta ku&hellip;','1','Jelma','Boneka kai','Boneka Kain','Boneka kulit','Bantuan sorotan lampu','A','','','','','','','');
INSERT INTO `soal` VALUES ('186','23','10','Carita Lutung kasarung asalna ti wewengkon ...?','1','Betawi','Jawa','Sumatra','Sunda','Kalimantan','D','','','','','','','');
INSERT INTO `soal` VALUES ('187','23','11','Ciri-ciri Novel Dewasa nyaeta&hellip;?','1','Nyaritakeun masalah jalma Barudak','Nyaritakeun masalah Dewasa','Palaku utamana jalma Rumaja','Palaku Utamana Barudak','Masalah na pabaliut','B','','','','','','','');
INSERT INTO `soal` VALUES ('188','23','12','Mangrupakeun hiji pintonan kasenian nu mangrupa boneka tina kai nu dimaenkeun ku dalang, nyaeta &hellip;?','1','Wayang Golek','Drama','Sinetron','Ludruk','OVJ','A','','','','','','','');
INSERT INTO `soal` VALUES ('189','23','13','Suasana Hate lamun urang maca Carpon &ldquo;Nu munggaran di Tangkuban Parahu&rdquo; nyaeta...?','1','Bungah jeung sedih','Ambek jeung bungah','Bangga jeung Ambek','Sedih jeung Bangga','Karunya Pisan','A','','','','','','','');
INSERT INTO `soal` VALUES ('190','23','14','Bahasa anu dipake dina beware nyaeta &hellip;?','1','Gaul','Baku','Biasa/loma','Kasar','Nyunda','C','','','','','','','');
INSERT INTO `soal` VALUES ('191','23','15','Hiji kagiatan komunikasi nu geus ilahar lumangsung di masyarakat nyaeta sok disebut &hellip;?','1','Ngobrol','Wawancara','Biantara','Pidato','Ceramah','A','','','','','','','');
INSERT INTO `soal` VALUES ('192','23','16','Novel barudak ngabogaan ciri-ciri :','1','Nyaritakeun masalah jalma Dewasa','Nyaritakeun masalah barudak','Palaku utamana jalma Dewasa','Palaku Utamana Remaja','Masalah na pabaliut','B','','','','','','','');
INSERT INTO `soal` VALUES ('193','23','17','Urang Deungeun katarik ____________ seni Sunda.<br />Kecap anu merenah pikeun ngelengkepan kalimah diluhur nyaeta :','1','Diajar','Nagarasa','Sanajan','Tatabeuhan','Reueus','A','','','','','','','');
INSERT INTO `soal` VALUES ('194','23','18','Tujuan diayakeunana beware nyaeta,Iwal &hellip;','1','Iklan','Pengumuman','Propaganda','Promosi','Pangajak','A','','','','','','','');
INSERT INTO `soal` VALUES ('195','23','19','Naon anu dimaksdu &ldquo;saba budaya&rdquo; &hellip;?','1','Darmawisata','Wisata budaya','Wisata kuliner','Piknik','Wisata sejarah','B','','','','','','','');
INSERT INTO `soal` VALUES ('196','23','20','Salah sahiji conto kasenian has daerah Bekasi nyaeta &hellip;?','1','Sisingaan','Tari Blantek','Barongsai','Kudalumping','Tari saman','B','','','','','','','');
INSERT INTO `soal` VALUES ('197','23','21','Awewe nu sok juru kawih/tukang kawih dina wayang golek sebut &hellip;?','1','Dalang','Nayaga','Aktris','Aktor','Sinden','E','','','','','','','');
INSERT INTO `soal` VALUES ('198','23','22','&ldquo;ng- + kumbah&rdquo; kecap kumbah ditambah rarangken jadi ...?','1','Ngarumbah','Dikumbah','ngumbah-ngumbah','Ngumbah','Ngu-mbah','D','','','','','','','');
INSERT INTO `soal` VALUES ('199','23','23','Unggal poe. Kecap unggal poe ngandung harti :','1','Tiap bulan','Tiap hari','Tiap tahun','Tiap Minggu','Sapopoe','B','','','','','','','');
INSERT INTO `soal` VALUES ('200','23','24','Naon anu dimaksdu &ldquo;Wisata Kuliner&rdquo; &hellip;?','1','Wisata kadaharan','Wisata ka daerah','Wisata ka laut','Wisata balanja acesoris','Wisata balanja','A','','','','','','','');
INSERT INTO `soal` VALUES ('201','23','25','Bubuka carita dina naskah drama disebutna . . .?','1','Analog','Monolog','Dialog','Epilog','Prolog','E','','','','','','','');
INSERT INTO `soal` VALUES ('202','23','26','Naon wae nu sok aya dina biografi tokoh &hellip;?','1','Harga buku','Ngaran jeung tempat lahir','Judul buku','Jumlah buku','Halaman Buku','B','','','','','','','');
INSERT INTO `soal` VALUES ('203','23','27','Suasana hate lamun urang maca kawih/tembang bubuy bulan nyaeta :','1','Cinta','Sedih','Bungah','Bangga','Teuparuguh hate','B','','','','','','','');
INSERT INTO `soal` VALUES ('204','23','28','Kecap &ldquo;nu ngalangkung&rdquo;. Ngandung harti &hellip;?','1','Nu kamari','Nu datang','Manehna','Nu ngaliwat','Saha eta','D','','','','','','','');
INSERT INTO `soal` VALUES ('205','23','29','Novel anu terkenal jeung sukses di jieun film karya hanung bramantiyo, nyaeta :','1','Ayat-ayat cinta','Ketika cinta bertasbih','Siti Nurbaya','Keong emas','Bawang Merah dan putih','A','','','','','','','');
INSERT INTO `soal` VALUES ('206','23','30','Dina rapat sok dibahas waragadna ti mana.Kecap &ldquo;waragad&rdquo; ngandung harti ?','1','Kontrak','Biaya','Duit','Ongkos','Sewa','B','','','','','','','');
INSERT INTO `soal` VALUES ('207','23','31','Hadirin anu ku sim kuring dipihormat, langkung ti payun sim kuring ngahaturkeun nuhun wireh saderek sadayana parantos kersa sumping ngaluuhan ieu rapat.Kalimat di luhur kaasup kana:','1','Salam bubuka rapat','Nepikeun eusi rapat','Bubuka rapat','Panutup rapat','Eusi rapat','C','','','','','','','');
INSERT INTO `soal` VALUES ('208','23','32','&ldquo;patok&rdquo; asal kecapna tina...?','1','Maratok','Atok','Matok','Dipatok','Diparatok','C','','','','','','','');
INSERT INTO `soal` VALUES ('209','23','33','Naon nu disebut kalimah lengkap &hellip;?','1','Kawengku ku Subjek jeung objek','Kawengku ku Subjek Jejer Objek','Kawengku ku Subjek jejer objek jeung katerangan','Kawengku ku Subjek jeung katerangan','Kawengku ku Katerangan jeung objek','C','','','','','','','');
INSERT INTO `soal` VALUES ('210','23','34','Dihandap ieu mangrupakeun bagian-bagian tina Nyarita dina rapat, nyaeta. Kecuali &hellip;?','1','Tatahar Rapat','Bubuka Rapat','Baca Al-quran','Ngucapkeun salam','Medar Materi','A','','','','','','','');
INSERT INTO `soal` VALUES ('211','23','35','Pangnyaahna sadunya, pangbageurna sadunya<br /> Iwal anjeun<br /> Rumpaka kawih di luhur judulna &hellip;.?','1','Bubuy Bulan','Duh Manis','Situ Ciburuy','Anjeun','Cinta','D','','','','','','','');
INSERT INTO `soal` VALUES ('212','23','36','Aya sabaraha padalisan kawih/tembang bubuy bulan &hellip;?','1','10','16','13','12','15','B','','','','','','','');
INSERT INTO `soal` VALUES ('213','23','37','Nu kaasup kana bubuka rapat nyaeta. Kecuali&hellip;?','1','Rapat ditutup ku doa','Assalamualaikum','Sampurasun','Wilujeng siang','Wilujeng enjing','A','','','','','','','');
INSERT INTO `soal` VALUES ('214','23','38','Paguneman anu patempas-tempas dina naskah drama disebutna &hellip;?','1','Epilog','Analog','Monolog','Prolog','Dialog','D','','','','','','','');
INSERT INTO `soal` VALUES ('215','23','39','Nu kaasup kana tatahar rapat nyaeta. . . ?','1','Jumlah honor MC','Harga Konsumsi','Saha wae nu rek diondang','Jumlah nu hadir','Absen','C','','','','','','','');
INSERT INTO `soal` VALUES ('216','23','40','Dihandap ieu conto biografi jalma anu sukses, nyaeta :','1','Khairul Tanjung &ldquo;Si Anak Singkong&rdquo;','Si Kabayan saba kota','Malin Kundang','Siti Nurbaya','Lutung kasarung','A','','','','','','','');
INSERT INTO `soal` VALUES ('219','25','1','Partisi yang pertama kali dipasang dalam instalasi sistem operasi Linux adalah ….','1','/root , /opt','/root , /home','/home, /opt','/boot , /root','/swap , /root','E','','','','','','','');
INSERT INTO `soal` VALUES ('220','25','2','Jika komputer pada saat POST mengeluarkan bunyi 1 beep panjang dan 3 beep pendek, berarti ....','1','Kerusakan di modul DRAM parity','Kerusakan di bagian VGA','Problem di memori','PC dalam keadaan baik','Kerusakan di modul memori atau memori video','C','gambar4.jpg','','gambar1.png','gambar1.png','gambar1.png','gambar1.png','gambar1.png');
INSERT INTO `soal` VALUES ('221','25','3','Nama service untuk memberikan IP secara otomatis adalah…','1','POP3','Apache','DHCP3','Bind9','Squid','C','','','','','','','');
INSERT INTO `soal` VALUES ('222','25','4','Keuntungan menggunakan media transmisi jaringan tanpa kabel / Wireless adalah....','1','Boros Kabel','Biaya peralatan dan peripherial relatif mahal','Kemampuan transfer data lebih kecil dari jaringan kabel','Keamanan data masih belum terjamin karena masih dimungkinkan dilakukan penyadapan','Teknologi wireles memungkinkan untuk mengakses internet lebih murah dibanding dengan sistem dial up atau leased line','E','','','','','','','');
INSERT INTO `soal` VALUES ('223','25','5','Terjadinya tabrakan pengiriman data pada suatu jaringan komputer dikenal dengan istilah…','1','Collision','Fusion','Broken','Attacking','Explode','A','','','','','','','');
INSERT INTO `soal` VALUES ('224','25','6','Dua software yang digunakan untuk boot loader adalah.....','1','GRUB dan FIFO','GRUB dan LIFO','GRUB dan LILO','LIFO dan SWAP','LILO dan SWAP','C','','','','','','','');
INSERT INTO `soal` VALUES ('225','25','7','Kemampuan sistem operasi untuk menjalankan berbagai perintah dalam waktu bersamaan disebut.....','1','Multi user','Pipelining','Threading','Multitasking','Management','D','','','','','','','');
INSERT INTO `soal` VALUES ('226','25','8','Tipe file yang digunakan oleh linux secara umum adalah …','1','INF','FAT','FAT32','NTFS','EXT3','E','','','','','','','');
INSERT INTO `soal` VALUES ('227','25','9','Sistem file yang disediakan oleh Windows XP dalam format hardisk adalah :','1','FAT dan System','NTFS dan FAT','System dan NTFS','System dan DOS','DOS dan FAT','B','','','','','','','');
INSERT INTO `soal` VALUES ('228','25','10','Perintah append firewall di linux yang memperbolehkan akses service web http adalah…','1','# iptables -A goodtcp -p TCP -m state -state ESTABLISHED, RELATED, j ACCEPTED','# iptables -A goodtcp -p TCP -syn -j ACCEPT','# iptables -A INPUT -p UDP -s 0/0 -dport 53 -j ACCEPT','# iptables -A INPUT -P TCP -s 0/0 -dport 80 -j ACCEPT','# iptables -I INPUT -s $BAD_IP/32 -j DROP','D','','','','','','','');
INSERT INTO `soal` VALUES ('229','25','11','apt-get install postfix salah  satu  tahapan untuk konfigurasi …','1','DNS Server','MySql server','Database server','SSH server','Webmail server','E','','','','','','','');
INSERT INTO `soal` VALUES ('230','25','12','Jika diketahui IP address 204.15.15.7 netmask 255.255.255.128, berapa jumlah host yang dapat digunakan untuk jaringan tersebut …','1','62','126','128','256','512','B','','','','','','','');
INSERT INTO `soal` VALUES ('231','25','13','Suatu jaringan local dengan ip address 193.17.17.6/27, IP broadcastnya adalah…','1','193.17.17.0','193.17.17.31','193.17.17.51','193.17.17.224','255255255224','B','','','','','','','');
INSERT INTO `soal` VALUES ('232','25','14','Kerusakan yang sering terjadi pada keyboard jika mencul tulisan di layar Keyboard \"error or no keyboard present\" Maksud dari kalimat itu adalah....','1','Tombol keyboard macet saat ditekan','Keyboard meminta untuk dibersihkan','Port keyboard pada motherboard rusak','Keyboard tidak terdeteksi oleh PC','Kabel keyboard putus','D','','','','','','','');
INSERT INTO `soal` VALUES ('233','25','15','Alat yang digunakan sebagai pengaman CPU terhadap lonjakan tegangan jala-jala listrik maupun listrik yang tiba-tiba padam adalah ….','1','UPS','Power supply','Adaptor','Generator','Kontaktor','A','','','','','','','');
INSERT INTO `soal` VALUES ('234','25','16','Perintah linux untuk mengarahkan dari port http ke port proxy adalah…','1','iptables -t nat -D PREROUTING -s 192.168.55.0/24 -p tcp --dport 80 -j REDIRECT --to-ports 3128','iptables -t nat -A PREROUTING -s 192.168.55.0/24 -m tcp --dport 80 -j REDIRECT --to-ports 3128','iptables -t nat -A PREROUTING -s 192.168.55.0/24 -p tcp --dport 80 -j REDIRECT --to-ports 3128','iptables -s nat -A PREROUTING -s 192.168.55.0/24 -p tcp --dport 80 -j REDIRECT --to-ports 3128','iptables -t nat -A PREROUTING -s 192.168.55.0/24 -d tcp --dport 80 -j REDIRECT --to-ports 3128','C','','','','','','','');
INSERT INTO `soal` VALUES ('235','25','17','Utilitas berupa program cadangan yang pertama kali ditulis oleh Igor Romanenko, digunakan untuk pembuangan data sebuah database atau kumpulan database, disebut…','1','MySQLDump','Backup Physic','Backup offline','Backup Logika','Backup online','A','','','','','','','');
INSERT INTO `soal` VALUES ('236','25','18','Mengambil datatabase dalam bentuk fisik, untuk database yang menggunakan Appserv secara fisik data disimpan pada folder C:\\Appserv\\Mysql\\data\\, disebut','1','Backup logika','Backup Physic','Backup offline','MysqlBackup','Backup online','B','','','','','','','');
INSERT INTO `soal` VALUES ('237','25','19','Untuk melakukan perawatan PC menggunakan Disk Cleanup yang ada pada Windows, file-file yang tidak diperlukan,dapat dihapus dengan cara ….','1','start > accessories > system tools > disk cleanup','accessories > system tools > start > disk cleanup','system tools > start > accessories > disk cleanup','start > system tools > accessories > disk cleanup','system tools > accessories > start > disk clean','A','','','','','','','');
INSERT INTO `soal` VALUES ('238','25','20','Untuk menghubungkan komputer dengan Komputer digunakan kabel UTP dengan susunan ....','1','rollover','straight','serial','crossover','DTE','D','','','','','','','');
INSERT INTO `soal` VALUES ('239','25','21','Hasil konversi dari bilangan biner 101011 ke bilangan decimal adalah…','1','31','34','37','40','43','E','','','','','','','');
INSERT INTO `soal` VALUES ('240','25','22','Salah satu jenis printer yang menggunakan metode hentakan jarum pada pita disebut …','1','Printer inkjet','Printer laserjet','Printer dotmatrix','Printer bubblejet','Plotter','C','','','','','','','');
INSERT INTO `soal` VALUES ('241','25','23','Apabila dari perintah ping muncul keterangan \"Request timed out\" berarti…','1','Hubungan kedua komputer berjalan secara normal.','Hubungan kedua komputer terputus','Topologi jaringan tidak sesuai','Internet tidak terhubung','Masalah pada server','B','','','','','','','');
INSERT INTO `soal` VALUES ('242','25','24','Rumus dari gerbang logika AND adalah …','1','Y = A * B','Y = A / B','Y = A + B','A = B','B = A','A','','','','','','','');
INSERT INTO `soal` VALUES ('243','25','25','VARCHAR dan CHAR (M) merupakan kolom MySQL tipe….','1','Numeric','Waktu','Kosong','String','Tanggal','D','','','','','','','');
INSERT INTO `soal` VALUES ('244','25','26','Urut-urutan 7 layer (dimulai dari layer 1) dalam model Open System Interconnection adalah sebagai berikut :','1','Physical, Session, Network, Transport, Data Link, Presentation, Application','Application, Network, Session, Transport, Presentation, Data Link, Physical','Physical, Presentation, Network, Transport, Session, Data Link, Application','Physical, Data Link, Network, Transport, Session, Presentation, Application','Application, Presentation, Session, Transport, Network, Data Link, Physical','D','','','','','','','');
INSERT INTO `soal` VALUES ('245','25','27','Fungsi kecil dari router yang gunanya menggandakan IP address sehingga perangkat-perangkat yang ada di belakangnya bisa mengakses jaringan Internet adalah….','1','TCP/IP','NAT','Gateway','Router','Brigde','B','','','','','','','');
INSERT INTO `soal` VALUES ('246','25','28','Perangkat yang berfungsi mengatur pemilihan jalur terbaik untuk dilewati paket data dikenal sebagai …','1','Switch','Router','Web server','Proxy server','Name server','B','','','','','','','');
INSERT INTO `soal` VALUES ('247','25','29','Komputer yang bertugas menyimpan informasi halaman web yang pernah diakses sebelumnya adalah …','1','Router','Web server','Proxy server','Name server','Database server','C','','','','','','','');
INSERT INTO `soal` VALUES ('248','25','30','Apabila suatu peripheral belum terinstal drivernya, pada device manager akan tampil symbol ….','1','Tanda seru (!) warna kuning','Tanda X warna merah','Tanda seru (!) warna merah','Tanda tanya (?) warna kuning','Tanda tanya (?) warna merah','D','','','','','','','');
INSERT INTO `soal` VALUES ('249','25','31','Gangguan yang  disebabkan oleh tidak berjalannya aplikasi di wireless, konflik IP (Internet Protocol) pada proses proxy server pada server dikelompokkan dalam gangguan ….','1','brainware','hardware','pemasok daya','software','user','D','','','','','','','');
INSERT INTO `soal` VALUES ('250','25','32','Kombinasi pengkabelan straight pada jaringan komputer yang sesuai dengan standart internasional  adalah...','1','White orange - orange - white green - blue - white blue - green - white brown - brown','White orange - orange - white green - green - white blue - blue - white brown - brown','White green - green - white orange - blue - white blue - orange - white brown - brown','White orange - orange - white green - green - white blue - blue - white brown - brown','Orange - white orange - green - white green - white blue - blue - white brown - brown','A','','','','','','','');
INSERT INTO `soal` VALUES ('251','25','33','Teknik yang digunakan untuk melindungi jaringan, dengan menyaring membatasi atau bahkan menolak koneksi adalah …','1','Proxy','Firewall','IP filter','Mac Filter','Firewire','B','','','','','','','');
INSERT INTO `soal` VALUES ('252','25','34','Berapa kecepatan akses data pada access point yang memiliki standar kode IEEE 802.11b …','1','11Mb/s','54Mb/s','108Mb/s','216Mb/s','432Mb/s','A','','','','','','','');
INSERT INTO `soal` VALUES ('253','25','35','Yang membedakan paket software free dengan paket berbayar adalah ….','1','pada paket berbayar, ada permintaan memasukkan serial number untuk autentikasi','pada paket berbayar, dapat dipastikan kapasitas space besar','pada paket free, dapat dipastikan kapasitas space kecil','pada paket free, ada permintaan memasukkan serial number untuk autentikasi','pada paket berbayar, tidak dibatasi waktu penggunaannya','A','','','','','','','');
INSERT INTO `soal` VALUES ('254','25','36','Penulisan IP Address 10.208.15.240 dalam bentuk binary ditulis sebagai berikut …','1','1.0101101E+27','1.0101101E+27','1.0101101E+27','1.0101101E+27','1.0101101E+27','C','','','','','','','');
INSERT INTO `soal` VALUES ('255','25','37','Sebuah komputer memiliki RAM sebesar 1,0 GB. Jika komputer tersebut akan diinstalasi sistem operasi Linux, swap yang dipasang sebesar ….','1','1.0 GB','1.5 GB','2.0 GB','2.5 GB','3.0 GB','A','','','','','','','');
INSERT INTO `soal` VALUES ('256','25','38','Batasan waktu agar paket data tidak mengambang di jaringan disebut.....','1','Request Time Out','Time to Live','Time to Leave','Data Pending','Repply for All','B','','','','','','','');
INSERT INTO `soal` VALUES ('257','25','39','Signal merewati 2 arah dengan satu kabel, kemungkinan terjadi collision (tabrakan data atau tercampurnya data) besar, adalah kelemahan dari kabel jenis.....','1','Coaxial','UTP','STP','Twisted','Unshielded','A','','','','','','','');
INSERT INTO `soal` VALUES ('258','25','40','Pada gambar dibawah komputer klien tidak dapat mengakses intenet melalui wireless, tetapi komputer yang terhubung melalui kabel dapat bisa terhubung ke internet, sebabnya adalah...','1','Subnetmask klien salah','WEP key klien salah','Alamat IP klien salah','Default gateway klien salah','IP internal router salah','D','','','','','','','');
INSERT INTO `soal` VALUES ('259','25','1','Diketahui IP Address 192.168.9.10/29 .\na. Tuliskan netmask nya dalam bentuk decimal\nb. Tuliskan Broadcast ID nya','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('260','25','2','Ubahlah nilai berikut kedalam bentuk biner! :\na. Tuliskan netmask nya dalam bentuk decimal\nb. Tuliskan Broadcast ID nya','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('261','25','3','Sebutkan 3 fungsi dari layer Aplikasi dalam lapisan OSI ?','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('262','25','4','Apa yang dimaksud dengan jaringan Client - Server?','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('263','25','5','Sebutkan 3 kelemahan Topologi Star?','2','','','','','','','','','','','','','');
INSERT INTO `soal` VALUES ('264','26','1','<p>latihan soal esai</p>','2',NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('265','26','2','<p>soal 2</p>','2',NULL,NULL,NULL,NULL,NULL,NULL,'26_2_E1.png','',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('266','26','3','<p>soal no 3</p>','2',NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('267','26','4','<p>soal no 4</p>','2',NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `soal` VALUES ('268','26','5','<p>soal no 5</p>','2',NULL,NULL,NULL,NULL,NULL,NULL,'','',NULL,NULL,NULL,NULL,NULL);

/*---------------------------------------------------------------
  TABLE: `token`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `token`;
CREATE TABLE `token` (
  `id_token` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(6) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `masa_berlaku` time NOT NULL,
  PRIMARY KEY (`id_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
INSERT INTO `token` VALUES   ('1','DFUXRL','2020-03-01 16:17:02','00:15:00');

/*---------------------------------------------------------------
  TABLE: `ujian`
  ---------------------------------------------------------------*/
DROP TABLE IF EXISTS `ujian`;
CREATE TABLE `ujian` (
  `id_ujian` int(5) NOT NULL AUTO_INCREMENT,
  `kode_nama` varchar(255) DEFAULT '0',
  `id_pk` varchar(255) NOT NULL,
  `id_guru` int(5) NOT NULL,
  `id_mapel` int(5) NOT NULL,
  `kode_ujian` varchar(30) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `jml_soal` int(5) NOT NULL,
  `jml_esai` int(5) NOT NULL,
  `bobot_pg` int(5) NOT NULL,
  `opsi` int(1) NOT NULL,
  `bobot_esai` int(5) NOT NULL,
  `tampil_pg` int(5) NOT NULL,
  `tampil_esai` int(5) NOT NULL,
  `lama_ujian` int(5) NOT NULL,
  `tgl_ujian` datetime NOT NULL,
  `tgl_selesai` datetime NOT NULL,
  `waktu_ujian` time DEFAULT NULL,
  `selesai_ujian` time DEFAULT NULL,
  `level` varchar(5) NOT NULL,
  `kelas` varchar(255) NOT NULL,
  `sesi` varchar(1) DEFAULT NULL,
  `acak` int(1) NOT NULL,
  `token` int(1) NOT NULL,
  `status` int(1) DEFAULT NULL,
  `hasil` int(1) DEFAULT NULL,
  `kkm` varchar(128) DEFAULT NULL,
  `ulang` int(2) DEFAULT NULL,
  `soal_agama` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_ujian`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
INSERT INTO `ujian` VALUES   ('23','BINDO_A_XII','a:1:{i:0;s:5:\"semua\";}','228','23','PH','BAHASA INDONESIA','40','0','100','5','0','40','0','60','2020-03-08 20:00:00','2020-03-08 21:00:00','20:00:00',NULL,'XII','a:1:{i:0;s:5:\"semua\";}','1','1','0','1','1','75','1','');
INSERT INTO `ujian` VALUES ('24','SR02','a:1:{i:0;s:5:\"semua\";}','228','25','PH','BAHASA INDONESIA','40','0','100','4','0','40','0','60','2020-03-08 21:00:00','2020-03-08 22:00:00','21:00:00',NULL,'semua','a:1:{i:0;s:5:\"semua\";}','1','1','0','1','0','75','0','');
INSERT INTO `ujian` VALUES ('25','ESAI','a:1:{i:0;s:5:\"semua\";}','228','26','PH','BAHASA INGGRIS','0','5','0','3','100','0','5','10','2020-03-09 09:00:00','2020-03-09 10:00:00','09:00:00',NULL,'X','a:1:{i:0;s:5:\"semua\";}','1','1','0','1','1','75','0','');
