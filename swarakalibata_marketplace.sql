/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 100411
Source Host           : localhost:3306
Source Database       : swarakalibata_marketplace

Target Server Type    : MYSQL
Target Server Version : 100411
File Encoding         : 65001

Date: 2020-08-06 09:47:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL AUTO_INCREMENT,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_agenda`)
) ENGINE=MyISAM AUTO_INCREMENT=70 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES ('64', 'Elton John Greatest Hits Tour', 'elton-john-greatest-hits-tour', '<p>November ini,&nbsp; Indonesia akan disuguhkan salah satu konser megah dari legenda musik dunia yaitu Elton John. Penampilan Elton John yang pertama kalinya di Indonesia akan berlangsung pada 17 November 2012, di&nbsp; Sentul International Convention Center, Bogor yang lokasinya tidak begitu jauh dari Jakarta.<br />\r\n<br />\r\nKonser Elton John ini merupakan bagian dari tur dunianya yang bertajuk &ldquo;Greatest Hits Tour&rdquo; dan akan dimulai pada awal November dari Latvia sampai ke Australia. Elton John akan membawa band lamanya yang terdiri dari Davey Johnstone, Nigel Olsson, Robert Birch, Kim Bullard dan John Mahon, dan empat backing vocal yaitu Rose&nbsp; Batu (Sly dan The Family Stone), Lisa Bank, Tata Vega, dan Jean Witherspoon.</p>\r\n', 'Sentul International Convention Center', 'Robby Prihandaya', '', '2012-11-17', '2012-11-17', '2012-08-20', '02:00:00 - 13:30:00', '89', 'admin');
INSERT INTO `agenda` VALUES ('62', 'Maroon Live in Jakarta 2012', 'maroon-live-in-jakarta-2012', 'Maroon 5 akan kembali menghibur penggemar Jakarta mereka dengan sebuah konser pada 5 Oktober 2012 di Istora Senayan, Jakarta. Ini akan menjadi penampilan kedua mereka di tanah air setelah tampil pada konser sold out 27 April 2011 lalu. Grup musik beraliran pop rock yang berasal dari Los Angeles, California Amerika Serikat. Rencananya menggelar konsernya pada 5 Oktober 2012, di Istora Senayan, Jakarta. Java Musikindo selaku promotor telah mengumumkan pembagian kelas serta harga tiket konser. Band yang digawangi oleh Adam Levine (vokal/gitar), Jesse Carmichael (keyboard/gitar),Mickey Madden (bass), James Valentine (gitar), Matt Flynn (drum) ini menggelar konser di Jakarta sebagai bagian dari promo album barunya, Overexposed, yang dirilis Juni lalu.\r\n', 'Istora Senayan Jakarta', 'Muhammad Arsenio', '', '2012-10-05', '2012-10-05', '2012-08-19', '20:00:00 - Selesai', '25', 'admin');
INSERT INTO `agenda` VALUES ('63', 'Festival Musik Bambu Nusa', 'festival-musik-bambu-nusantara-2012', 'Bambu Nusantara ke-6 tahun ini akan digelar di Jakarta Convention Center (JCC), di Jalan Jenderal Gatot Subroto, Jakarta, pada 1 - 2 September 2012. Acara tersebut akan menghadirkan beraneka kreasi berbahan bambu dan tampilnya beragam seni dari bambu. Selain suguhan musik etnik berpadu dengan musik modern, dalam Acara ini juga akan turut diisi dengan pameran, seminar, merchandise, kuliner, dan fashion yang dipadu padankan dengan karya berbahan bambu.<br />\r\n', 'Jakarta Convention Center (JCC), Jakarta', 'Dewiit Safitri', '', '2012-09-01', '2012-09-02', '2012-08-20', '09:00:00 - 21:00:00', '42', 'admin');

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album` (
  `id_album` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_album`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of album
-- ----------------------------
INSERT INTO `album` VALUES ('30', 'Konser Kantata Barock 2018 berlangsung Dramatis', 'konser-kantata-barock-2018-berlangsung-dramatis', '<p>Para macan tua yang digawangi Iwan Fals, Setiawan Djody dan Sawung Jabo di Stadion Gelora Bung Karno, Jakarta, Jumat (30/12) malam. Kantata kembali membawakan lagu-lagu legendarisnya setelah 21 tahun vakum dari dunia musik.</p>\r\n\r\n<div style=\"background-color:#ffffff; border:medium none; color:#000000; overflow:hidden; text-align:left; text-decoration:none\">&nbsp;</div>\r\n', 'konser.png', 'Y', '40', '2012-08-20', '09:12:06', 'Senin', 'admin');
INSERT INTO `album` VALUES ('31', 'Asunt in anim uis aute irure dolor in reprehenderit', 'asunt-in-anim-uis-aute-irure-dolor-in-reprehenderit', '<p>Asunt in anim uis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum. Allamco laboris nisi ut aliquip ex ea commodo consequat. Aser velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in anim id est laborum.</p>\r\n', 'maxresdefault.jpg', 'Y', '10', '2012-08-20', '09:40:01', 'Senin', 'admin');
INSERT INTO `album` VALUES ('28', 'Murah Meriah belanja puas di Pasar Asemka', 'murah-meriah-belanja-puas-di-pasar-asemka', '<p>Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.</p>\r\n', 'Murah-Meriah.jpg', 'Y', '63', '2012-08-18', '23:14:05', 'Sabtu', 'admin');
INSERT INTO `album` VALUES ('29', 'Karpet Raksasa dari Bunga mendapatkan rekor muri', 'karpet-raksasa-dari-bunga-mendapatkan-rekor-muri', '<p>Belgia sedang memperingati peristiwa tahunan &quot;La Fete De La Fleur&quot; atau pesta bunga di bulan Agustus. Ahli bunga merancang karpet raksasa dari bunga di depan Grand Place di Brussel. Karpet ini dibuat menggunakan 700 ribu bunga.</p>\r\n', 'karpet.jpg', 'Y', '119', '2012-08-19', '03:02:27', 'Minggu', 'admin');
INSERT INTO `album` VALUES ('51', 'Jalan-jalan bersama pemenang quiz online swarakalibata', 'jalanjalan-bersama-pemenang-quiz-online-swarakalibata', '<p>Israel pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.</p>\r\n', 'quiz.jpg', 'Y', '1', '2018-04-21', '22:55:11', 'Sabtu', 'admin');

-- ----------------------------
-- Table structure for background
-- ----------------------------
DROP TABLE IF EXISTS `background`;
CREATE TABLE `background` (
  `id_background` int(5) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(255) NOT NULL,
  PRIMARY KEY (`id_background`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of background
-- ----------------------------
INSERT INTO `background` VALUES ('1', 'green');

-- ----------------------------
-- Table structure for banner
-- ----------------------------
DROP TABLE IF EXISTS `banner`;
CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_banner`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of banner
-- ----------------------------
INSERT INTO `banner` VALUES ('19', 'Private Training Web Development', 'https://phpmu.com', '', '2017-05-21');
INSERT INTO `banner` VALUES ('20', 'Kursus Web Programming Online', 'https://phpmu.com', '', '2017-05-21');
INSERT INTO `banner` VALUES ('21', 'Komunitas Belajar web Programming', 'https://phpmu.com', '', '2017-05-21');
INSERT INTO `banner` VALUES ('22', 'Jasa Pembuatan Website Murah', 'https://phpmu.com', '', '2017-05-21');
INSERT INTO `banner` VALUES ('23', 'Komunitas Â Pecinta CMS Lokomedia', 'https://phpmu.com', '', '2017-05-21');

-- ----------------------------
-- Table structure for berita
-- ----------------------------
DROP TABLE IF EXISTS `berita`;
CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL AUTO_INCREMENT,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sub_judul` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_berita`)
) ENGINE=MyISAM AUTO_INCREMENT=686 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of berita
-- ----------------------------
INSERT INTO `berita` VALUES ('601', '40', 'admin', 'Es Teler, Sejarahmu Dulu dan Kini bagaimana cerita', '', '', 'es-teler-sejarahmu-dulu-dan-kini-bagaimana-cerita', 'N', 'N', 'N', '<p>Es Teler adalah minuman es berisi potongan buah alpukat, kelapa muda, nangka matang, dan santan kelapa encer dengan pemanis berupa sirup. Es yang dipakai bisa berupa es serut atau es batu.<br />\r\n<br />\r\nVariasi lain es teler berisi cincau, kolang-kaling, dan pacar china, potongan buah apel, pepaya, sawo, melon, roti, dan agar-agar, hingga es teler menjadi sulit dibedakan dengan es campur.<br />\r\n<br />\r\nEs Teler adalah jenis Kuliner yang murni &quot;Fresh from Nature&quot;, Tanpa diolah, hanya dipotong dan dibersihkan, lalu di beri kuah rasa sesuai selera dan di minum/makan dingin. Sehingga kandungan Gizi yang terdapat dalam buah yang dipakai otomatis masih baik. Es Teler --&gt; recomended deh sebagai makanan penutup dibanding makanan penutup olahan.<br />\r\n<br />\r\n<strong>Sejarah Es Teler</strong><br />\r\n<br />\r\nEs teler diciptakan Tukiman Darmowijono, pedagang es campur dengan gerobak di Jalan Semarang Jakarta Pusat pada tahun 1980-an. Es campur kreasi Tukiman begitu enak sehingga anak-anak muda yang meminumnya mengaku keenakan seperti &quot;teler&quot; akibat mengkonsumsi narkoba. Es kelapa muda bercampur alpukat yang dijual Tukiman di Jalan Semarang kemudian dikenal sebagai &quot;es teler.&quot;<br />\r\n<br />\r\nKepopuleran es yang bikin teler makin mencuat berkat promosi dari mulut ke mulut dan liputan media massa. Pembeli yang datang bermobil menimbulkan antrian parkir mobil yang dirasakan penduduk Jalan Semarang dan sekitarnya sebagai pengganggu ketenangan. Es teler Tukiman harus pindah ke Jalan Pegangsaan Barat dan kemudian ke dalam kompleks bioskop Megaria. Kedai es teler Tukiman di kompleks bioskop Megaria sekarang bernama kedai ayam bakar dan es teler Sari Mulia Asli.<br />\r\n<br />\r\nWaralaba nasional Es Teler 77 Juara Indonesia didirikan Sukyatno Nugroho, setelah sang mertua bernama Ny Murniati Widjaja menjuarai lomba es teler nasional di tahun 1982. Gerai Es Teler 77 yang pertama terdapat di pertokoan Duta Merlin, Harmoni, Jakarta Pusat. Di gerai Es Teler 77 juga tersedia berbagai makanan pendamping seperti mi bakso dan nasi goreng. Di luar negeri, gerai Es Teler 77 terdapat di Australia, Malaysia, dan Singapura.</p>\r\n', '', 'Minggu', '2019-03-22', '07:56:41', 'es-teler.jpg', '31', '', 'Y');
INSERT INTO `berita` VALUES ('598', '40', 'admin', 'Laksa Betawi yang Menggugah Selera', '', '', 'laksa-betawi-yang-menggugah-selera', 'N', 'N', 'N', 'Makanan khas betawi yang satu ini memang sudah agak jarang bisa ditemui. Namun bukan berarti punah. Di beberapa lokasi tertentu, anda masih bisa menemukan Laksa betawi. Bagi anda yang belum mengetahui apa itu Laksa Betawi, Laksa betawi adalah Penganan berjenis mie yang diberi bumbu. Laksa Betawi memiliki kuah berwarna kekuningan. Campuran udang rebon yang ada dalam kuah laksa, membuat rasanya menjadi segar dan di padu aroma khas udang.<br />\r\n<br />\r\nSelain itu, Makanan ini menggunakan Ketupat. Isi dari ketupat laksa betawi adalah irisan ketupat, telur, kemangi, tauge. kucai, bihun, perkedel, dan bawang goreng, serta kuahnya yang kental dengan taburan udang kering. Namun ada yang bilang bahwa Bihun dan perkedel hanya variasi tambahan dari laksa, bukan bawaan asli nya.<br />\r\n<br />\r\nCara lain untuk menikmati Laksa adalah menggunakan Semur betawi. Paduan rasa manis pada semur, tentu nya akan menambah rasa gurih di lidah. Namun hal ini bukan suatu keharusan. Tergantung selera masing-masing.<br />\r\n<br />\r\nCara mengolah Laksa Betawi<br />\r\n<br />\r\nMengolah laksa betawi susah-susah gampang. Bumbunya sederhana, terdiri dari kunyit, lengkuas, sereh, daun salam, daun jeruk, jahe, jintan, lada, temu kunci, serta dua kilogram udang rebon. Semua bumbu dihaluskan dengan lumpang lalu ditumis dan dicampur dengan santan cair.<br />\r\n<br />\r\nBumbu baru ditambahkan dengan santan kental. Proses ini dilakukan sampai tiga kali. Sejak dahulu hingga sekarang. Dengan proses yang agak rumit, tidak aneh kalau makanan ini jadi agak langka. Orang maunya langsung jadi tanpa memikirkan cara pembuatannya.<br />\r\n<br />\r\n', '', 'Kamis', '2019-02-25', '02:13:20', '', '14', 'kuliner', 'Y');
INSERT INTO `berita` VALUES ('599', '40', 'admin', 'Semur, Aslinya dari Belanda', '', '', 'semur-aslinya-dari-belanda', 'N', 'N', 'N', 'Jangan merasa tidak terima jika dikatakan bahwa semur adalah hidangan Belanda. Sebab, di balik semur memang ada riwayat nusantara, bukti bagaimana silang budaya terjadi antara Indonesia dan Eropa, demikian menurut ahli kajian budaya Dr phil Lily Tjahjandari.<br />\r\n<br />\r\nPercaya tidak, Indonesia ternyata sudah meramu berbagai makanan dengan berbagai jenis rempah sejak abad pertama. Hal ini terjadi karena posisi Indonesia terletak di tengah jalur perdagangan dunia.<br />\r\n<br />\r\nKekayaan rempah Indonesia ini lalu mengundang berbagai bangsa untuk datang dan mengeksplorasi citarasa rempah. Diawali dengan kedatangan pedagang India pada abad 1-7, dan diikuti oleh pedagang China dan Arab. Perdagangan rempah kemudian membuka jalan ekspansi masif bangsa Eropa pada abad 16-19. Mereka menjelajah wilayah Indonesia untuk menemukan rempah-rempah, dan memulai terjadinya interaksi budaya kuliner antara Eropa dan Indonesia.<br />\r\n<br />\r\n&quot;Sebelumnya, penguat rasa makanan Eropa hanya terbatas pada tomat, ceri, bawang bombai, madu, atau wine,&quot; ungkap Lily, yang juga Manajer Penelitian dan Pengabdian Masyarakat Fakultas Ilmu Pengetahuan Budaya Universitas Indonesia. Orang Eropa lalu mendapatkan inspirasi untuk menggunakan berbagai rempah Asia untuk mengolah makanan Eropa.<br />\r\n<br />\r\nNah, ketika keahlian meramu bumbu khas Indonesia seperti lada, kayu manis, jahe, kemiri, cengkeh itu berpadu dengan teknik memasak bangsa Eropa, hadirlah hidangan unik seperti semur. Semur sendiri asalnya dari bahasa Belanda, smoor, yang artinya masakan daging yang direbus dengan tomat dan bawang secara perlahan.<br />\r\n<br />\r\n&quot;Ketika itu, orang Eropa yang bisa memasak dengan rempah-rempah dianggap sebagai kalangan aristokrat. Hidangan semur ini diterima dengan baik oleh lidah kaum priyayi Belanda, dan menjadi menu rijsttafel,&quot; kata Lily, saat talkshow bertema &quot;Semur, Turun-Temurun Menghangatkan Hati Keluarga Indonesia&quot; di Restoran Warung Daun, Kebayoran Baru, Jakarta Selatan, beberapa waktu lalu.<br />\r\n<br />\r\nRijstaffel merupakan konsep penyajian makanan lengkap ala restoran di Eropa, yang diawali dengan hidangan pembuka, hidangan utama, dan hidangan penutup. Namun hidangan yang disajikan bukan hidangan Eropa, melainkan menu Indonesia dimana nasi sebagai makanan utama dinikmati dengan lauk-pauk.<br />\r\n<br />\r\nSebenarnya, semur itu sendiri bukan makanan asli Belanda. Semur, menurut pakar kuliner Chef Ragil Imam Wibowo, merupakan persepsi bangsa Indonesia dari hidangan tradisional Belanda yang bernama hachee. Hachee merupakan hidangan daging rebus yang dipotong-potong, kadang-kadang juga menggunakan ikan, burung, dan sayuran. Bumbu dasarnya adalah bawang dan rasa asam (biasanya didapat dari cuka atau wine). Cengkeh dan daun salam lalu ditambahkan ke dalam kuah kaldunya yang kental.<br />\r\n<br />\r\nHachee kelak menjadi trigger untuk hidangan semur. Dalam versi Indonesia, semur ini menggunakan bumbu bawang merah, bawang putih, dengan tambahan berbagai rempah lain untuk menguatkan rasa, seperti ketumbar, pala, lada, cengkeh, dan kayu manis. Semur lalu menjadi istimewa karena menggunakan kecap sebagai penguat rasa manis yang legit, dan memberi warna coklat yang menggugah selera.<br />\r\n<br />\r\n&quot;Kecap itu idenya ketika orang Indonesia berimajinasi bagaimana membuat warna coklatnya. Pada hachee, warna coklat didapat dari brownstock, yaitu kaldu dari tulang sapi yang dibakar. Orang Indonesia lalu mencari, apa yang kira-kira bisa memberi warna dan rasa yang diinginkan,&quot; ujar Chef Ragil dalam acara yang sama.<br />\r\n<br />\r\nSemur kemudian melekat menjadi tradisi bangsa Indonesia., dan menjadi menu favorit setiap keluarga Indonesia. Menu ini hadir dengan inovasi bumbu dan topping yang beraneka ragam. Jika awalnya semur identik dengan daging sapi, Anda bisa menemukan semur daging kambing, ayam, telur, tahu, tempe, terong, dan bahkan ikan. Dan semuanya lezat!<br />\r\n<br />\r\n<br />\r\n', '', 'Minggu', '2019-02-11', '02:17:45', '', '19', 'kuliner', 'Y');
INSERT INTO `berita` VALUES ('608', '19', 'admin', 'Bos Amazon Temukan Mesin Apollo 11', '', 'http://www.youtube.com/embed/mxMiN9iYlkQ', 'bos-amazon-temukan-mesin-apollo-11', 'N', 'N', 'N', '<p>Jeff Bezos, pendiri retailer online terbesar Amazon, mengumumkan bahwa ia dan timnya telah menemukan 5 mesin Apollo 11 yang jatuh pada tahun 1969 di Samudera Atlantik.<br />\r\n<br />\r\nKini, Jeff Bezos merencanakan untuk mengangkat satu atau dua dari mesin tersebut ke permukaan untuk kemudian dipamerkan di Museum Penerbangan di kampung halamannya, Seattle. Sebelumnya, Jeff Bezos akan meminta izin terlebih dahulu kepada Nasa selaku pemilik dari Apollo 11.<br />\r\n<br />\r\nSeluruh biaya yang diperlukan dalam ekspedisi dan pengangkatan mesin Apollo 11 akan ditanggung oleh Jeff Bezos sendiri. Sementara itu, Nasa menyatakan akan menunggu kabar lebih lanjut tentang penemuan oleh tim Jeff Bezos tersebut.<br />\r\n<br />\r\nMesin berkekuatan 32 juta tenaga kuda (hp) yang mampu membakar 6.000 pon kerosin dan oksigen cair per detik tersebut telah membawa Apollo 11 mendarat dengan sukses di bulan pada tahun 1969. Namun dalam perjalanan kembali ke bumi, mesin tersebut terbakar hingga terjatuh di Samudera Atlantik dan belum ditemukan hingga akhirnya Jeff Bezos mengumumkan berita ini.</p>\r\n', '', 'Minggu', '2018-04-22', '07:45:00', 'bos_amazone.jpg', '675', 'internasional', 'Y');
INSERT INTO `berita` VALUES ('611', '21', 'admin', 'Duel Swiss di Semifinal Cincinnati Masters', 'Tenis Cincinnati Masters 2012', '', 'duel-swiss-di-semifinal-cincinnati-masters', 'N', 'N', 'N', 'Cincinnati - Dua petenis asal Swiss berhasil mengempaskan lawan-lawannya dan akan bertemu di semifinal Cincinnati Masters. Stanislas Wawrinka sukses membungkam petenis Kanada, Milos Raonic, sementara Roger Federer berhasil menumbangkan Mardy Fish.<br />\r\n&nbsp;<br />\r\nWawrinka mengalahkan Raonic dengan pertarungan sengit. Bahkan sebelumnya, petenis 27 tahun tersebut sempat tertinggal di set pertama. Pada set awal tersebut, Wawrinka takluk 2-6.<br />\r\n&nbsp;<br />\r\nNamun pada set kedua, Wawrinka mampu mengendalikan permainan, dia mampu mengembalikan dengan baik pukulan keras dari Raonic. Hingga akhirnya sukses merebut set kedua ini dengan skor 7-6.<br />\r\n&nbsp;<br />\r\nSetelah berhasil menyamakan keadaan, Wawrinka terus mendominasi dan mengakhiri perlawanan Raonic dengan skor akhir di set ketiga 6-4. &ldquo;Saya bermain hebat setelah menjalani dua bulan yang menyulitkan,&rdquo; ujar Wawrinka, seperti disitat Yahoo Sports, Sabtu (18/8/2012).<br />\r\n&nbsp;<br />\r\nNantinya di babak semifinal, Wawrinka bakal menghadapi rekan senegaranya, Federer yang menghentikan langkah Fish dengan skor 6-3 7-6. Dengan gugurnya Fish atas Federer, maka tak ada satu pun petenis Amerika yang berpeluang menjadi juara di kandang sendiri.<br />\r\n', 'Stanislas Wawrinka.\r\n', 'Minggu', '2012-08-19', '05:22:25', '', '16', 'olahraga', 'Y');
INSERT INTO `berita` VALUES ('612', '19', 'admin', 'Google Pakai Motorola untuk Gugat Apple', '', '', 'google-pakai-motorola-untuk-gugat-apple', 'N', 'N', 'N', 'Jakarta - Perang gugatan antara para produsen smartphone belum menunjukkan tanda berakhir. Yang terbaru, Motorola menuding Apple melanggar tujuh patennya.<br />\r\n<br />\r\nVendor ponsel yang diakuisisi Google pun meminta pihak berwewenang untuk memblokir impor iPhone, iPad dan komputer Mac. Perangkat-perangkat tersebut diminta dilarang beredar di Amerika Serikat.<br />\r\n<br />\r\nKomplain Motorola didaftarkan ke lembaga International Trade Comission (ITC). Paten yang dipermasalahkan terkait location reminders, notifikasi email, pemutar video dan sebagainya.<br />\r\n<br />\r\n&quot;Kami ingin menyelesaikan persoalan paten tersebut, namun ketidakmauan Apple untuk melisensinya membuat kami tidak punya pilihan selain mempertahankan inovasi kami,&quot; demikian pernyataan Motorola yang TerasJakarta kutip dari DigitalTrends, Minggu (19/8/2012).<br />\r\n<br />\r\nHal ini dinilai sebagai perang antara Google dan Apple, dengan Google menggunakan paten Motorola untuk menyerang Apple. Terlebih lagi, Apple banyak memperkarakan vendor Android seperti Samsung dan juga Motorola sendiri.\r\n', '', 'Senin', '2012-08-20', '04:49:48', '', '15', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('614', '22', 'admin', 'Zuckerberg akan Berhenti Pimpin Facebook?', 'Buntut Anjloknya di Bursa Saham', '', 'zuckerberg-akan-berhenti-pimpin-facebook', 'N', 'N', 'Y', '<p>Jakarta - Harga saham Facebook terus terjun bebas. Rekor harga terendah terjadi baru-baru ini senilai USD 19,06 dari harga awalnya USD 38. Buruknya performa saham Facebook ini memunculkan spekulasi bahwa Mark Zuckerberg tidak seharusnya terus memimpin Facebook sebagai CEO.<br />\r\n<br />\r\nSeorang analis industri menilai bahwa Zuckerberg yang dikenal dengan dandanan kasualnya bisa fokus pada urusan teknologi di Facebook. Sedangkan bisnis Facebook dipegang oleh orang yang benar-benar kompeten.<br />\r\n<br />\r\n&quot;Saya pikir ada rasa kurang percaya terhadap kemampuannya untuk menjalankan korporasi,&quot; kata Andre Stoltman, pengacara sekuritas di New York yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\n&quot;Zuckerberg, dipandang dari sisi manapun memang adalah orang yang jenius. Akan tetapi Anda seharusnya memiliki chief executive yang dewasa dan lebih berpengalaman dalam menjalankan perusahaan tersebut,&quot; imbuhnya.<br />\r\n<br />\r\nNamun demikian, Zuckerberg tetap punya dukungan untuk terus memimpin Facebook. Patrik Moorhead, analis di Moor Insights &amp; Strategy, menyatakan masih terlalu awal untuk membicarakan kemungkinan pergantian CEO Facebook.<br />\r\n<br />\r\n&quot;Dia telah menyediakan visi yang diperlukan Facebook untuk menjadi sebesar sekarang dan mereka tetap akan membutuhkan dia sebagai pemandu. Zuckerberg harus tetap ada di posisi top sekarang,&quot; kata Patrik.<br />\r\n<br />\r\nKarten Weide selaku analis di IDC menyatakan pula bahwa Zuckerberg tidak akan memberi kesempatan pada orang lain untuk memimpin perusahaan yang didirikannya itu.<br />\r\n<br />\r\n&quot;Mark Zuckerberg tidak akan lengser dalam waktu dekat. Dia adalah pria dalam sebuah misi, yaitu ingin memaksa dunia, jika perlu, agar lebih terbuka. Dan sebagai pria dalam sebuah misi, dia tidak mengutamakan soal bisnis,&quot; demikian pendapat Karten.</p>\r\n', 'Mark Zuckerberg', 'Minggu', '2018-04-22', '07:52:08', 'facebook-mark-zuckerberg.jpg', '39', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('610', '21', 'admin', 'Max Biaggi Bantah ke Ducati Musim Depan ', '', '', 'max-biaggi-bantah-ke-ducati-musim-depan-', 'N', 'N', 'Y', 'Roma- Mantan pembalap MotoGP Max Biaggi tengah menikmati kariernya di World Super Bike (WSBK). Terlebih, pencapaiannya di musim ini cukup membuatnya bahagia.<br />\r\n<br />\r\nBiaggi masih memimpin di puncak klasemen WSBK musim ini dengan 272 poin. Hasil ini membuatnya semakin bersemangat untuk menorehkan lagi prestasi juara seperti yang ditorehkannya pada 2010.<br />\r\n<br />\r\nSituasi seperti itu, semakin membuat The Roman Emperor, julukan Biaggi, nyaman membela timnya Aprilia. Makanya, saat disinggung masalah isu kepindahannya ke Ducati musim depan, Biaggi buru-buru membantah. Dia menegaskan ingin mengakhiri kariernya bersama Aprilia.<br />\r\n<br />\r\nSetelah empat tahun melanglang buana di ajang MotoGP dengan prestasi terbaik menjadi runner-up pada musim pertamanya bersama Yamaha, Biaggi memutuskan hengkang pada 2005. Dua tahun berikutnya, pembalap kelahiran Juni 1971 ini terjun ke arena WSBK.<br />\r\n<br />\r\nSebelum berlabuh di Aprilia, Biaggi lebih dulu bergabung dengan Suzuki di tahun pertamanya, dan setahun berikutnya ke Ducati sebelum akhirnya melompat ke Aprilia pada 2009.\r\n', 'Max Biaggi.\r\n', 'Minggu', '2012-08-19', '05:13:20', '', '18', 'olahraga', 'Y');
INSERT INTO `berita` VALUES ('615', '21', 'admin', 'Foto Panas Beredar Lagi, Nikita Mirzani Syok', '', '', 'foto-panas-beredar-lagi-nikita-mirzani-syok', 'N', 'N', 'Y', '<p>Jakarta - Nama Nikita Mirzani memang sedang naik daun belakangan ini. Dengan keberaniannya dalam menampilkan lekuk tubuhnya di beberapa film yang diperaninya, dirinya pun sempat didaulat dengan predikat sebagai salah satu artis hot tanah air.<br />\r\n<br />\r\nNamun, keberaniannya tersebut ternyata harus seiring dengan pil pahit yang ditelannya. Beberapa waktu lalu, foto topless dirinya sempat beredar luas di dunia maya. Dan kini, kembali foto-foto yang memperlihatkan kenekatannya di depan kamera dipertontonkan.<br />\r\n<br />\r\nDalam foto-foto ini, Nikita hanya menutupi payudaranya dengan jari ataupun rambutnya, tanpa mengenakan sehelai baju pun. Saat dikonfirmasi, Nikita mengaku syok.<br />\r\n<br />\r\n&quot;Gue syok. Gak tahu mau ngomong apa lagi. Itu foto emang udah lama banget,&quot; tuturnya, Rabu (15/8).<br />\r\n<br />\r\nArtis yang sempat mengisi program Kakek Kakek Narsis di Trans TV ini belum mau memberikan konfirmasi lebih. Dirinya masih mencari ketenangan atas musibah yang menimpanya untuk ke sekian kali.<br />\r\n<br />\r\n&quot;Gak bisa mikir. Mau ngomong apa. Kasih nafas dulu, kasih gue ketenangan. Ya Tuhan, ada aja musibah menimpa hidup gue. Pokoknya maaf gak bisa ngomong banyak,&quot; tukasnya.</p>\r\n', 'Nikita Mirzani ', 'Minggu', '2018-04-22', '07:59:50', 'nikita-mirzani.jpg', '17', 'selebritis,hiburan', 'Y');
INSERT INTO `berita` VALUES ('613', '19', 'admin', 'Lenovo Yakin Kalahkan Microsoft Surface', '', '', 'lenovo-yakin-kalahkan-microsoft-surface', 'N', 'N', 'N', 'Jakarta - Microsoft akan menjual tablet produksi sendiri yang bernama Surface. Beberapa mitra produsen PC kabarnya tak senang dengan kehadiran Surface yang dianggap sebagai pesaing. Namun Lenovo percaya diri tablet buatannya akan mampu mengalahkan Surface.<br />\r\n<br />\r\n&quot;Microsoft memang kuat di software, namun saya tidak percaya mereka bisa menyediakan hardware terbaik di dunia. Sedangkan Lenovo bisa,&quot; klaim CEO Lenovo, Yang Yuanqing.<br />\r\n<br />\r\n&quot;Meskipun kami tidak suka Microsoft membuat hardware, namun meskipun mereka memulai bisnis hardware ini, kami pikir itu hanya berarti satu kompetitor bertambah lagi,&quot; imbuhnya, yang TerasJakarta kutip dari ComputerWorld, Minggu (19/8/2012).<br />\r\n<br />\r\nSebelumnya, kehadiran Microsoft Surface mendapat perlawanan dari Acer. Vendor komputer asal Taiwan itu menyatakan bahwa kedatangan Surface akan berdampak negatif bagi ekosistem industri PC.<br />\r\n<br />\r\nDi masa lalu, Microsoft memang selalu bermitra dengan vendor PC untuk membuat komputer berbasis sistem operasi Windows. Namun untuk Windows 8, mereka memutuskan membuat tablet PC sendiri.<br />\r\n<br />\r\nBahkan, ada kabar yang beredar bahwa Surface akan dijual hanya USD 199. Jika benar, bisa jadi Surface sukses besar mengingat harganya yang sangat terjangkau. Kabarnya, Surface akan dipasarkan sekitar bulan Oktober mendatang, bersamaan dengan perkenalan resmi OS Windows 8.\r\n', '', 'Senin', '2012-08-20', '04:53:44', '', '17', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('617', '23', 'admin', '\"Expendables 2\" Impian Jean Claude Van Damme', '', 'http://www.youtube.com/embed/7rkdTcQLwZ4', 'expendables-2-impian-jean-claude-van-damme', 'N', 'N', 'N', 'Peran dalam Expendables 2 telah lama diinginkan oleh Jean-Claude Van Damme. Pasalnya aktor laga yang satu ini punya impian untuk bermain bersama Arnold Schwarzenegger, Sylvester Stallone dan Bruce Willis.<br />\r\n<br />\r\nVan Damme yang memerankan si jahat Jean Vilain dalam Expendables 2 mengungkap kepada PostMedia bahwa kesempatan yang didapat untuk bermain bersama kedua aktor idamannya itu sangatlah berharga.<br />\r\n<br />\r\n&quot;Aku selalu berharap untuk bisa membuat film bersama salah satu dari mereka. Kini aku bermain film bersama keduanya,&quot; ungkapnya. Ahli bela diri asal Belgia ini juga mengaku kagum dengan dedikasi Stallone dalam membuat film laga spektakuler ini (Expendables).<br />\r\n<br />\r\n&quot;Aku melihat pria dengan usia lebih dari 60 dan ia masih bisa menikmati apa yang ia lakukan. Aku bahagia kembali, ia (Stallone) membuatku cinta kepada film lagi,&quot; komentarnya.<br />\r\n<br />\r\nSeperti filmnya yang pertama, The Expendables 2 sudah pasti menyajikan baku hantam, adegan tembak-menembak yang intens, serta ledakan di mana-mana. Itulah alasan mengapa The Expendables 2 dibuat, supaya adrenalin penonton terpacu.\r\n', 'Jean-Claude Van Damme.\r\n', 'Senin', '2012-08-20', '05:47:30', '', '23', 'film,hiburan', 'Y');
INSERT INTO `berita` VALUES ('616', '21', 'admin', 'Nyanyikan Anti Putin, Personel Pussy Riot Dibui', '', '', 'nyanyikan-anti-putin-personel-pussy-riot-dibui', 'N', 'N', 'N', '<p>Rusia - Pengadilan Rusia memvonis penjara dua tahun personel band Pussy Riot karena menyanyikan lagu anti Presiden Vladimir Putin.<br />\r\n<br />\r\nPengadilan menetapkan tiga anggota band itu bersalah melakukan &#39;hooliganisme&#39; dengan motivasi agama.<br />\r\n&nbsp;<br />\r\nHakim Marina Syrova mengatakan para anggota band &quot;secara berhati-hati merencanakan&quot; nyanyian mereka tanggal 21 Februari lalu di dalam katedral di Moskow. &quot;Tolokonnikova, Alyokhina dan Samutsevich melakukan &quot;hooliganisme&quot; -- dengan kata lain pelanggaran berat ketertiban umum,&quot; kata Syrova.<br />\r\n<br />\r\n&quot;Pengadilan menyatakan mereka bersalah. Pengadilan meraih putusan berdasarkan kesaksian terdakwa sendiri dan bukti lain,&quot; tambahnya.<br />\r\n<br />\r\nJaksa menuntut hukuman tiga tahun penjara atas tiga anggota band itu.<br />\r\n<br />\r\nPara pendukung band itu melakukan protes di sejumlah tempat di Moskow.&nbsp; Keamanan ketat pun diterapkan dan sejumlah jalan ditutup.<br />\r\n<br />\r\nPussy Riot mengecam kasus tersebut yang mereka katakan diorganisir Putin.<br />\r\n<br />\r\n<strong>Buat Marah Gereja</strong><br />\r\n<br />\r\nSejumah selebriti termasuk bintang pop Amerika, Madonna, menyerukan agar mereka dibebaskan.<br />\r\n<br />\r\nKetiga anggota band itu mengatakan &quot;doa punk&quot; mereka adalah tindak politik untuk memprotes gereja ortodoks Rusia yang mendukung Presiden Putin.<br />\r\n<br />\r\nDalam penampilan seronok mereka di dekat altar mereka meminta Bunda Maria untuk &quot;menggeser Putin&quot;.<br />\r\n<br />\r\nNyanyian mereka membuat marah gereja Ortodoks dan ketua gereka Kirill menyebutkan penampilan itu sama saja dengan penghujatan agama. Namun sejumlah warga Rusia menganggap kasus itu sebagai upaya pemerintah membungkam kritikan.</p>\r\n', 'Pussy Riot', 'Minggu', '2018-04-22', '07:58:55', 'anti_putin.jpg', '17', 'hiburan', 'Y');
INSERT INTO `berita` VALUES ('619', '31', 'admin', '4 Alasan Kenapa Memaafkan Penting Bagi Kesehatan', '', '', '4-alasan-kenapa-memaafkan-penting-bagi-kesehatan', 'N', 'N', 'N', 'Jakarta - Memaafkan bukan berarti melupakan, tapi memberi kesempatan kepada diri sendiri untuk menghapus rasa kesal dan dendam terhadap orang lain. Dengan demikian, rasa marah dan tekanan yang mengganggu emosi pun dapat diredakan. Akibatnya, pikiran jadi lebih tenang dan jauh dari stres. Sejatinya, tak hanya itu saja manfaat kesehatan dari memaafkan orang lain.<br />\r\n<br />\r\nSecara ilmiah, memaafkan kesalahan orang lain dapat bermanfaat baik bagi kesehatan fisik maupun mental. Secara sosial, memaafkan orang lain merupakan wujud kebesaran jiwa dan perilaku yang dianggap baik. Ada banyak manfaat kesehatan dari memaafkan orang lain seperti dilansir Mayo Clinic dan Telegraph, Minggu (19/8/2012) antara lain:<br />\r\n<br />\r\n<strong>1. Terhindar dari Penyakit Tekanan Darah Tinggi</strong><br />\r\nPara peneliti dari University of California, San Diego menemukan bahwa orang-orang yang bisa melepaskan kemarahannya dan memaafkan kesalahan orang lain cenderung lebih rendah risikonya mengalami lonjakan tekanan darah.<br />\r\n<br />\r\nPeneliti meminta lebih dari 200 relawan untuk memikirkan saat temannya menyinggung perasaan. Setengah dari kelompok diperintahkan untuk berpikir mengapa hal tersebut bisa membuatnya marah, sedangkan yang lainnya didorong untuk memaafkan kesalahan tersebut. Peneliti menemukan bahwa orang yang marah mengalami peningkatan tekanan darah lebih besar dibanding orang yang pemaaf.<br />\r\n<strong><br />\r\n2. Terhindar dari Risiko Penyalahgunaan Obat dan Alkohol</strong><br />\r\nSejumlah penelitian telah membuktikan bahwa rasa benci, dendam dan permusuhan dapat memicu tekanan darah tinggi. Stres muncul ketika perasaan kecewa atau tersakiti. Memaafkan adalah sebuah proses perdamaian dengan diri sendiri. Seseorang yang memberi maaf justru akan merasa lebih rileks untuk menerima kondisinya.<br />\r\n<br />\r\nDengan kondisi mental yang lebih rileks, seseorang juga akan terhindar dari risiko penyalahgunaan alkohol dan obat terlarang. Risiko tersebut umumnya dihadapi oleh para pendendam yang membutuhkan jalan pintas untuk lepas dari beban emosi negatifnya.<br />\r\n<br />\r\n<strong>3. Menurunkan Risiko Serangan Jantung</strong><br />\r\nPara ilmuwan membuktikan bahwa permintaan maaf yang ditujukan pada seseorang bisa meningkatkan kesehatan jantungnya. Orang yang mengalami perlakuan kasar akan mengalami peningkatan tekanan darah yang dapat memicu serangan jantung atau stroke. Namun ketika mendengarkan kata &#39;maaf&#39;, tekanan darah akan menurun kembali.<br />\r\n<br />\r\nTekanan darah yang diukur dalam penelitian adalah tekanan darah diastolik, yaitu tekanan dalam darah antara detak jantung atau tekanan dalam arteri-arteri ketika jantung istirahat setelah kontraksi. Jika terlalu tinggi atau terjadi untuk waktu yang lama, dapat meningkatkan kemungkinan stroke atau serangan jantung.<br />\r\n<br />\r\n<strong>4. Jauh dari Stres dan Depresi</strong><br />\r\nSebuah penelitian yang dimuat Personality and Social Psychology Bulletin menemukan bahwa memafkan secara positif dapat mengurangi gejala depresi. Tak hanya itu, memaafkan akan mengembalikan pikiran positif, dan memperbaiki hubungan. Selain itu, memaafkan juga berkaitan dengan perilaku positif lain seperti sifat dermawan, murah hati dan tidak mudah tertekan.<br />\r\n', '', 'Sabtu', '2012-11-17', '08:14:51', '', '23', 'kesehatan', 'Y');
INSERT INTO `berita` VALUES ('625', '41', 'admin', 'Effendi Ghazali: Putaran Kedua Pilkada DKI Ketat', '', '', 'effendi-ghazali-putaran-kedua-pilkada-dki-ketat', 'N', 'Y', 'N', '<p>Jakata - Pengamat politik dari Universitas Indonesia, Effendi Ghazali, mengungkapkan pada putaran kedua pemilihan kepala daerah (Pilkada) pada September mendatang, akan terjadi persaingan ketat antara pasangan Joko Widodo-Basuki T Purnaka dengan pasangan Fauzi Bowo-Nachrowi Ramli.<br />\r\n<br />\r\n&ldquo;Kami telah mengadakan survey internal, dan hasilnya, akan terjadi persaingan ketat antara Pak Jokowi dan Pak Fauzi Bowo. Tidak seperti hasil sebelumnya yang memang jauh jarak perolehannya,&rdquo; ujarnya ditemui di acara open house yang diadakan Gubernur Fauzi Bowo, di rumah dinasnya Jalan Taman Suropati No. 7, Jakarta Pusat, Minggu (19/08/2012).<br />\r\n<br />\r\nMeski demikian, Effendi urung menyebutkan nilai dari survey yang dilakukan oleh pihaknya, mengingat masih ada margin eror yang besar dari 450 responden yang dilakukan survey. &ldquo;Siapa yang lebih unggul, belum bisa saya kasih tahu sekarang, karena survey kami agak besar margin errornya,&rdquo; jelasnya.<br />\r\n<br />\r\nMenyinggung maraknya penggunaan isu SARA yang terjadi selama bulan ramadhan kemarin, Effendi angkat bicara. Menurutnya, penggunaan isu SARA yang dilakukan oleh pihak-pihak tertentu sudah menimbulkan dampak yang besar, baik di kalangan masyarakat bawah maupun untuk calon pasangan. &ldquo;Itu jelas ada dampaknya. Bahkan pengaruhnya cukup besar untuk pilkada putaran kedua nanti,&rdquo; tandasnya.</p>\r\n', 'Joko Widodo (kiri), Fauzi Bowo (kanan)', 'Minggu', '2018-04-22', '07:41:04', 'efendi_gazali.jpg', '0', 'metropolitan', 'Y');
INSERT INTO `berita` VALUES ('624', '41', 'admin', 'Tuntut THR, Ratusan Pekerja Transjakarta Mogok', '', '', 'tuntut-thr-ratusan-pekerja-transjakarta-mogok', 'N', 'N', 'N', '<p>Jakarta - Ratusan pekerja bus koridor I (Blok M-Kota) dan X (Cililitan-Tanjung Priok) mogok bekerja. pramudi, teknisi, dan petugas keamanan menuntut kenaikan upah dan pembayaran Tunjangan Hari Raya (THR). Mereka di depan Pool Pinang Ranti, Jalan Raya Pondok Gede, Pinang Ranti, Makassar, Jakarta Timur, sambil berorasi membentangkan spanduk bertemakan agar PT Jakarta Expres Trans (JET) membayar THR.<br />\r\n<br />\r\nMenurut&nbsp; pramudi Bus TransJakarta Koridor I, Maya, pihaknya terpaksa melakukan mogok operasi karena pihak perusahaan tidak membayarkan kewajibannya memberikan THR.<br />\r\n<br />\r\n&quot;Sementara, anak-anak sudah menunggu di rumah ingin jalan-jalan ke mal untuk beli baju Lebaran,&quot; ujarnya kepada wartawan, Senin (13/08/2012).<br />\r\n<br />\r\nSedangkan Abdul Chakim berharap, selain memberikan THR perusahaan PT JET juga menaikan upah. Pasalnya, untuk Pramudi yang di bawah manajeman PT JET upahnya bervariasi mulai dari Rp2,4 juta-Rp2,8 juta. Sedangkan pramudi yang berada di bawah manajemen gajinya mencapai Rp5,3 juta.<br />\r\n<br />\r\n&quot;THR kami segera terbayar dan gaji kami dinaikkan sejajar dengan pramudi dari koridor lainnya,&quot; imbuhnya.<br />\r\n<br />\r\nHingga bubar aksi berjalan berdamai, pihak perusahaan berjanji akan membayarka THR dan menaikan upah para pekerja bus Transjakarta.</p>\r\n', '', 'Minggu', '2018-04-22', '07:42:01', 'bus-transjakarta.jpg', '0', 'metropolitan', 'Y');
INSERT INTO `berita` VALUES ('622', '31', 'admin', 'Orang Beriman Kondisi Fisik n Mentalnya Lebih Sehat', '', '', 'orang-beriman-kondisi-fisik-n-mentalnya-lebih-sehat', 'N', 'N', 'N', '<p>Orang yang beriman disayang Tuhan, mungkin itulah sebabnya kemudian orang yang beriman juga memiliki kondisi kesehatan yang baik. Nyatanya, berbagai penelitian menunjukkan bahwa orang-orang yang memiliki keyakinan dan keimanan yang teguh juga memiliki kondisi fisik yang lebih prima.<br /> <br /> \"Keyakinan terhadap agama bisa mengurangi stres, depresi, dan meningkatkan kualitas hidup,\" kata Dr Harold G. Koenig, profesor psikiatri dan ilmu perilaku di Duke University Medical Center seperti dilansir Medpagetoday.com, Minggu (19/8/2012).<br /> <br /> Data sebuah penelitian yang dimuat American Journal of Health Promotion tahun 2005 menyimpulkan bahwa orang yang banyak berdoa lebih banyak mendapat manfaat kesehatan dengan cara menerapkan perilaku yang sehat, menjalankan antisipasi terhadap penyakit dan lebih puas terhadap pelayanan kesehatan.<br /> <br /> Sebuah penelitian tahun 2006 yang dimuat British Medical Journal juga menemukan bahwa kehadiran dalam sebuah acara keagamaan ternyata berkaitan dengan penurunan risiko penyakit menular.<br /> <br /> Menurut Koenig, adanya keyakinan beragama dan kegiatan spiritual berhubungan dengan risiko penyakit atau gangguan kesehatan yang lebih rendah, misalnya stres, penyakit kardiovaskular, tekanan darah, reaktivitas kardiovaskular, gangguan metabolisme serta dapat menjamin keberhasilan operasi jantung. Namun di sisi lain, Koenig juga memperingatkan bahwa cara kerja Tuhan ini tidak dapat diukur dengan cara dan metode apapun.<br /> <br /> \"Saya percaya bahwa doa efektif, tapi tidak berfungsi secara ilmiah dan tidak dapat diprediksi. Tidak ada alasan ilmiah atau teologis atas setiap efek dari keyakinan yang dapat dipelajari atau didokumentasi, seolah-olah Tuhan adalah bagian dari alam semesta yang dapat diprediksi. Ilmu pengetahuan tidak dirancang untuk membuktikan hal-hal yang supranatural,\" kata Koenig.<br /> <br /> Selain itu, keyakinan terhadap agama juga telah dikaitkan dengan umur panjang, perkembangan penyakit kognitif yang lebih lambat dan penuaan yang sehat. Senada dengan Koenig, dr Robert A. Hummer, profesor sosiologi di University of Texas di Austin yang berfokus pada hubungan antara agama dan rendahnya risiko kematian juga memiliki pendapat yang sama.<br /> <br /> Hummer merujuk sebuah penelitian yang melacak beberapa orang berusia 51 - 61 tahun selama 8 tahun untuk mendokumentasikan tingkat ketahanan hidupnya. Penelitian tersebut menemukan bahwa peserta yang tidak menghadiri acara keagamaan sama sekali memiliki kemungkinan 64 persen lebih tinggi mengalami kematian dibandingkan orang yang sering beribadah.</p>', '', 'Senin', '2012-08-20', '08:51:08', '', '27', 'kesehatan', 'Y');
INSERT INTO `berita` VALUES ('644', '41', 'admin', 'Banjir Jakarta Paling banyak Dicari di Google', 'Jakarta Darurat Banjir', '', 'banjir-jakarta-paling-banyak-dicari-di-google', 'N', 'Y', 'N', '<p>Jakarta - Banjir yang mengguyur Jakarta beberapa hari lalu membuat sejumlah lokasi di ibukota banjir. Internet, jadi media yang digunakan warga Jakarta untuk mencari tahu informasi terkini seputar banjir. &nbsp;</p>\r\n\r\n<p>Dalam laporan Pencarian Terhangat Google Indonesia sepanjang 11 - 17 Januari 2013, kata kunci &quot;Banjir di Jakarta&quot; adalah yang paling banyak dimasukkan dalam mesin pencari Google.</p>\r\n\r\n<p>Tak hanya mesin pencari, beberapa platform milik Google juga digunakan untuk memberi informasi seputar banjir. Ada Google Crisis Response, yang menyajikan informasi lokasi-lokasi banjir di Jakarta. Bahkan, layanan ini juga memperlihatkan kondisi lalu lintas yang macet akibat banjir.</p>\r\n\r\n<p>Di dalam Google Crisis Response juga terdapat beberapa nomor telepon penting dari lembaga pemerintah DKI Jakarta maupun swadaya masyarakat, yang dapat dihubungi oleh warga untuk mendapat bantuan dan evakuasi.</p>\r\n\r\n<p>Selain layanan Google, jejaring sosial Twitter juga banyak digunakan untuk mencari informasi terkini. Beberapa akun Twitter yang memberi informasi banjir antara lain @TMCPoldaMetro dan @LewatMana.</p>\r\n\r\n<p>Situs web pemberi informasi lalu lintas LewatMana.com juga laris dikunjungi dalam sepekan ini. LewatMana memperlihatkan kondisi lalu lintas dan gambar dari CCTV. Ia menduduki peringkat 10 Pencarian Terhangat Google Indonesia pada 11 - 17 Januari 2013.</p>\r\n\r\n<p>Dalam sepekan ini, warga juga ingin tahu soal perkiraan cuaca dengan memasukkan kata kunci BMKG di mesin pencari Google. BMKG (Badan Meteorologi Klimatologi dan Geofisika) masuk ke posisi 9 sebagai topik yang paling dicari di Google Indonesia pekan ini. (Sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:40:05', 'anis_mengatasi_banjir.jpg', '0', 'nasional', 'Y');
INSERT INTO `berita` VALUES ('645', '39', 'admin', 'Korban dan Pelaku Pemerkosaan parah', 'Seleksi Calon Hakim Agung', '', 'korban-dan-pelaku-pemerkosaan-parah', 'N', 'N', 'Y', '<p>Calon hakim agung Muhammad Daming Sanusi menyatakan, hukuman mati tidak layak diberlakukan bagi pelaku pemerkosaan. Penjelasannya soal ini mengundang tawa sejumlah anggota Komisi III saat berlangsung fit and proper test hakim agung di Komisi III DPR pada Senin (14/1/2013) ini.</p>\r\n\r\n<p>&quot;Bagaimana menurut Anda, apabila kasus perkosaan ini dibuat menjadi hukuman mati?&quot; tanya anggota Komisi III dari Fraksi PAN, Andi Azhar, ketika itu kepada Daming.</p>\r\n\r\n<p>Daming menjawab, &quot;Yang diperkosa dengan yang memerkosa ini sama-sama menikmati. Jadi, harus pikir-pikir terhadap hukuman mati.&quot;</p>\r\n\r\n<p>Jawaban Daming ini pun langsung mengundang tawa, tetapi tidak sedikit yang mencibir pernyataannya. Dijumpai seusai menjalani fit and proper test, Daming berdalih bahwa pernyataannya itu hanya untuk mencairkan suasana.</p>\r\n\r\n<p>&quot;Kita tadi terlalu tegang, jadi supaya tidak terlalu tegang,&quot; imbuhnya.</p>\r\n\r\n<p>Menurut Daming, hukuman mati harus dipertimbangkan baik-baik. Ia beralasan, dirinya belum memberikan jawaban tegas apakah ia mendukung atau tidak penerapan hukuman mati bagi pelaku pemerkosaan. &quot;Tentu kita harus pertimbangkan baik-baik kasus tertentu, seperti narkoba, korupsi, saya setuju. Tapi untuk kasus pemerkosan, harus dipertimbangkan dulu. Tadi saya belum memberikan jawaban yang tegas,&quot; kata Daming.</p>\r\n\r\n<p>Menanggapi pernyataan itu, anggota Komisi III lain dari Fraksi Partai Demokrat, Himmatul Aliya Setiawati, menilai candaan Daming sangat tidak pantas.</p>\r\n\r\n<p>&quot;Saya kira candaannya tidak pas. Saya setuju ada hukuman mati ya,&quot; ucap Aliya.</p>\r\n\r\n<p>Meski menganggap tak pantas, ia menilai jawaban Daming sudah memenuhi kriteria yang diharapkan dari seorang hakim agung. &quot;Dari Fraksi Gerindra menyatakan tidak akan memilih, tapi kalau saya sih soal memilih kita lihat nilai-nilai keseluruhannya,&quot; tutur Aliya. (Sumber: kompas.com</p>\r\n', '', 'Minggu', '2018-06-03', '15:37:13', 'perkosaan.jpg', '1', 'hukum', 'Y');
INSERT INTO `berita` VALUES ('602', '41', 'admin', 'La Nyalla Kembalikan Riedl Jadi Pelatih Timnas', '', '', 'la-nyalla-kembalikan-riedl-jadi-pelatih-timnas', 'Y', 'N', 'N', '<p>Jakarta - Jakarta - Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.<br />\r\n<br />\r\nPria asal Austria itu sebelumnya pernah menukangi Timnas, namun dipecat pada 13 Juli 2011 akibat kisruh ditubuh PSSI. Dengan penunjukan itu, berarti Riedl akan kembali jadi peramu permainan skuad &#39;Pasukan Garuda&#39; jelang Piala AFF di Malaysia, November mendatang.<br />\r\n<br />\r\nMenurut Acting Sekjen PSSI Tigor Shalom Boboy,&nbsp; Riedl ditunjuk oleh Direktur Teknik Timnas Benny Dollo yang sebelumnya diberi mandat oleh PSSI&nbsp; Rabu (8/8/2012) lalu.<br />\r\n<br />\r\n&quot;Benny Dollo telah memberikan rekomendasinya terkait posisi pelatih kepala tim nasional senior kepada Exco PSSI melalui Ketua Umum La Nyalla Mahmud Mattalitti. Posisi pelatih kepala tim nasional senior yg direkomendasikan oleh Benny Dollo selaku Direktur Teknik adalah Alfred Riedl,&quot; ujar Tigor melalui rilis yang diterima INILAH.COM, Kamis (16/8/2012).<br />\r\n<br />\r\nTigor mengungkapkan bahwa Riedl sudah menyatakan kesediaannya terhadap penunjukannya sebagai pelatih kepala tim nasional senior. Pria 62 tahun itu akan&nbsp; tiba di Indonesia pada akhir Agustus 2012.<br />\r\n<br />\r\nSetelah itu, Riedl akan langsung menyusun nama-nama siapa saja yang akan masuk dalam tim besutannya.<br />\r\n<br />\r\n&quot;Susunan Managemen dan Official serta pemain Tim Nasional akan diumumkan pasca lebaran menunggu konfirmasi pelatih kepala Alfred Riedl,&quot; tukas Tigor.<br />\r\n<br />\r\nSebelumnya, pihak PSSI KLB pimpinan La Nyalla menyatakan membentuk Timnas sendiri setelah mandegnya pertemuan Joint Committee PSSI. Menurut pihak La Nyalla, seharusnya pembentukan Timnas dibahas di komite bersama tersebut melibatkan dua belah pihak, antara kubu Djohar Arifin dengan pihaknya.<br />\r\n<br />\r\nPiala AFF akan diselenggarakan 22 November hingga 22 Desember 2012 dengan tuan rumah Malaysia dan Thailand. Indonesia akan bermain di Grup B yang bertempat di Malaysia bersama Malaysia, Singapura dan Runner Up babak penyisihan.</p>\r\n', '', 'Minggu', '2018-04-22', '07:44:01', 'la_nyalla.JPG', '0', 'bola,olahraga', 'Y');
INSERT INTO `berita` VALUES ('603', '19', 'admin', '4 Teknologi yang Bakal Bertahan Sampai 2030', '', '', '4-teknologi-yang-bakal-bertahan-sampai-2030', 'Y', 'Y', 'N', 'Perkembangan teknologi telah mengantarkan berbagai perangkat yang lebih kecil, cepat dan tangguh ke dalam genggaman tangan. Ada juga yang telah ditinggalkan atau digantikan teknologi lain, seperti sebuah floppy disk. &nbsp;<br />\r\nSelain teknologi yang ditiggalkan, ada juga beberapa teknologi yang diprediksi akan tetap bertahan sampai puluhan tahun ke depan. Seperti dilansir Live Science, Sabtu (18/8/2012), berikut empat teknologi yang diprediksi akan bertahan sampai 2030.<br />\r\n<br />\r\n<strong>1. Papan Ketik QWERTY</strong><br />\r\nTeknologi untuk melakukan input telah semakin banyak, ada voice recognition, handwriting recognition dan gesture control. Ini diperkiraka akan semakin akurat dan populer dalam dua dekade ke depan. Namun, sampai nanti ditemukan cara input teks menggunakan kendali pikiran, metode mengetik akan tetap sebuah metode menyusun teks yang paling akurat.<br />\r\nKehadiran papan ketik di tablet dan telefon genggam memang semakin terancam, namun layout QWERTY yang sejak dulu digunakan akan terus hidup.<br />\r\n<br />\r\n<strong>2. PC</strong><br />\r\nBeberapa orang berpendapat kita sedang memasuki zaman pasca PC. Pasalnya kini orang semakin sering menghabiskan waktu menggunakan smartphone dan tablet ketimbang menggunakan komputer desktop tradisional berbasis Windows atau Mac.<br />\r\nNamun di sisi lain, ketika sudah waktunya menggarap pekerjaan yang benar-benar serius, terutama yang melibatkan multitasking, PC masih merupakan perangkat yang&nbsp; paling bisa diandalkan.<br />\r\n&nbsp;<br />\r\nPada 2030, ukuran serta bentuk PC mungkin akan berubah. Beberapa orang bahkan berpendapat bahwa dengan adanya prosesor berotak empat, telefon genggam dan tablet menjelma menjadi PC. Tetap saja, apapun faktor yang mempengaruhi, pengguna yang fokus pada produktivitas akan membutuhkan sebuah komputer utama dengan kemampuan proses yang tinggi dan sanggup multitasking.<br />\r\n&nbsp;<br />\r\n<strong>3. USB Ports</strong><br />\r\nSekarang telah lebih dari 15 tahun sejak USB pertama kali diperkenalkan dan kita akan sulit membayangkan hidup tanpa USB. Ini hampir menjadi sebuah standar untuk membuat Anda bisa menransfer data dan menghubungkan dengan berbagai hal seperti papan ketik atau harddisk eksternal. Beberapa orang berpendapat bahwa standar seperti Thunderbolt dari Intel akan menandingi USB, tapi mereka tidak memiliki dasar instalasi untuk menandingi USB. Standar ini diprediksi akan semakin berkembang ke depannya.<br />\r\n<strong><br />\r\n4. Uang Tunai</strong><br />\r\nAda beberapa perdebatan mengenai apakah kartu kredit dan debit akan sepenuhnya digantikan oleh sistem pembayaran mobile dalam beberapa tahun ke depan. Walau bagaimanapun, uang tunai tampaknya akan tetap dibawa meski pada 2030.<br />\r\n&nbsp;<br />\r\nPasalnya di era informasi ini, membayar dengan uang tunai adalah cara terbaik untuk membuat pembelian yang Anda lakukan tetap anonim dan pribadi. Selain itu, uang kertas memiliki perlindungan terbaik dalam melawan pencuri indentitas karena orang yang menerima pembayaran tidak harus mengetahui nama Anda.\r\n', '', 'Sabtu', '2012-11-17', '03:27:34', '', '21', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('604', '19', 'admin', 'Usai China, Indonesia Tuan Rumah Miss World 2013', '', '', 'usai-china-indonesia-tuan-rumah-miss-world-2013', 'Y', 'N', 'N', 'Masyarakat Indonesia pantas bahagia dua kali lipat saat penyelenggaraan final Miss World 2012. Bukan saja prestasi Ines Putri yang masuk dalam jajaran 15 besar, tetapi Indonesia juga diumumkan menjadi lokasi penyelenggaraan Miss World 2013.<br />\r\n&nbsp;<br />\r\nAjang Miss World 2012 di Ordos, Mongolia, China, berlangsung sukses. Diikuti 116 finalis dari seantero dunia, Miss World yang diselenggarakan ke-62 tahun ini akhirnya mendaulat Wenxia Yu sebagai Miss World 2012.<br />\r\n<br />\r\nSelama setahun, wakil dari Republik Rakyat China ini akan berkeliling dunia dan menjalankan misi sosial dalam program yang dikemas secara baik bernama Beauty with a Purpose.<br />\r\n<br />\r\nAdapun masa tugas terakhir dari pemilik tinggi badan 177 sentimeter ini akan dilakukan saat penyelenggaraan Miss World 2013 di Indonesia. Dan, kepastian soal lokasi penyelenggaraan Miss World dilakukan secara simbolis saat malam final Miss World 2012. Saat itu, Nana Putra, Managing Director MNC Group menerima bendera Miss World.<br />\r\n<br />\r\nRencananya, Miss World 2013 diselenggarakan September dengan mengambil lokasi karantina di Bali. Sementara itu, Jakarta sebagai Ibu Kota Indonesia dipilih menjadi lokasi malam final Miss World 2013.<br />\r\n<br />\r\n&ldquo;Jakarta akan menjadi tuan rumah malam final Miss World 2013. Namun tepatnya di mana lokasi tersebut, kami belum bisa memastikan,&rdquo; tutur Kanti Mirdiati kepada Okezone di Blacksteer Lounge, Belleza Shopping Arcades, Permata Hijau, Jakarta, belum lama ini.<br />\r\n<br />\r\nProject Director Miss Indonesia &amp; Managing Director RCTI ini pun menjelaskan alasan Jakarta dipilih sebagai lokasi malam final Miss World 2013.<br />\r\n<br />\r\n&ldquo;Ini merupakan bagian dari upaya memperkenalkan Jakarta dan Indonesia sendiri ke mata dunia. Kebanyakan orang luar negeri tahu Bali, tapi tidak tahu kalau Bali ada di Indonesia. Mereka mengira bahwa Bali itu sebuah negara,&rdquo; ucap wanita ramah ini.\r\n', '', 'Minggu', '2012-08-19', '03:37:05', '', '26', 'internasional', 'Y');
INSERT INTO `berita` VALUES ('605', '39', 'admin', 'Memalukan! Bu Guru di AS Bercinta dengan 4 Muridnya ', 'Didakwa Penyimpangan Seks', '', 'memalukan-bu-guru-di-as-bercinta-dengan-4-muridnya-', 'Y', 'N', 'N', '<p>Texas - Memalukan! Seorang guru SMA di Amerika Serikat diadili karena berhubungan seks dengan empat muridnya sementara murid kelima merekam aksi mesum tersebut.<br />\r\n<br />\r\nWanita bernama Brittni Colleps tersebut dikenai sejumlah dakwaan, termasuk seks menyimpang dan hubungan tidak pantas antara pendidik dan pelajar.<br />\r\n<br />\r\nWanita berumur 28 tahun itu tadinya merupakan guru Bahasa Inggris di SMA Fort Worth, Texas. Di persidangan yang digelar hari ini seperti dilansir MyFoxDFW.com, Kamis (16/8/2012), terungkap bahwa terdakwa yang telah memiliki tiga anak itu, menggunakan pesan-pesan SMS untuk mendekati kelima pelajar putra tersebut.<br />\r\n<br />\r\nSalah seorang remaja mengaku, dia dan Colleps berkirim 100 SMS dalam satu hari saat musim semi pada tahun 2010. Pesan-pesan itu kemudian kian menjadi-jadi sehingga akhirnya mereka sepakat untuk bertemu guna bercinta.<br />\r\n<br />\r\n&quot;Dia (Colleps) bilang dia mendambakan... bahwa saya punya sesuatu yang dia inginkan,&quot; kata remaja tersebut.<br />\r\n<br />\r\nDiungkapkan remaja laki-laki tersebut, dalam satu kesempatan, empat remaja berhubungan intim dengan bu guru yang telah dipecat tersebut. Para remaja tersebut sebenarnya sudah bisa digolongkan dewasa, namun hukum melindungi para pelajar dari hubungan dengan seseorang yang jabatannya lebih tinggi, dalam hal ini guru.<br />\r\n<br />\r\nSeorang remaja lainnya merekam adegan seks tersebut dengan video telepon genggamnya. Video tersebut diputar di persidangan.<br />\r\n<br />\r\nJika terbukti bersalah, Colleps terancam hukuman penjara maksimum 20 tahun. Suaminya, Christopher Colleps, seorang tentara AS, telah menegaskan bahwa dirinya akan terus mendukung istrinya dan bahwa mereka akan tetap mempertahankan rumah tangga mereka.</p>\r\n', 'Brittni Colleps (foto:abc)', 'Minggu', '2018-04-22', '07:24:45', 'hinaislam.jpg', '0', 'internasional', 'Y');
INSERT INTO `berita` VALUES ('606', '42', 'admin', 'Astagfirullah, Festival Wine Digelar di Halaman Masjid ', '', '', 'astagfirullah-festival-wine-digelar-di-halaman-masjid-', 'N', 'N', 'N', '<p>Beer El-Sabe - Kelompok Muslim menyatakan kemarahannya atas rencana penyelenggaraan Festival Wine di kota Beer el-Sabe, Israel. Kemarahan karena, penyelenggaraan akan dilaksanakan di halaman luar sebuah bangunan bekas masjid kuno di wilayah tersebut.<br />\r\n<br />\r\nMenurut laporan media Israel, Gerakan Islam di Israel mengatakan festival ini merupakan &quot;dosa tak termaafkan&quot;. Festival juga dianggap sebagai pukulan keras bagi umat Muslim di sana Sebab menurut kelompok Muslim tersebut, publisitas festival anggur merupakan penghinaan terhadap sensitivitas Muslim. Seperti diketahui Islam melarang konsumsi alkohol.<br />\r\n<br />\r\nFestival &quot;Salut Wine dan Beer Festival&quot; ke enam ini rencananya akan diselenggarakan di pelataran sebuah bangunan bekas masjid di Beer el-Sabe, pada 5-6 September. Festival akan menampilkan minuman beralkohol dari sekitar 30 pabrik dan perkebunan anggur di seluruh negeri.<br />\r\n<br />\r\nPusat Hukum untuk Hak Minoritas Arab di Israel, Kamis (16/8) lalu, mengirimkan surat pada Jaksa Agung, Menteri Kebudayaan dan Olahraga Israel serta Kotamadya Beer el-Sabe. Mereka menuntut agar festival Wine di wilayah tersebut dibatalkan. &quot; Penggunaan pelataran Masjid untuk festival minuman beralkohol adalah sesuatu yang sensitif. Sebab Islam melarang konsumsi alkohol dan tak sesuai dengan penggunaan masjid untuk beribadah,&quot; tulis organisasi tersebut dalam surat ke Jaksa Aram Mahameed.<br />\r\n<br />\r\nSurat juga menambahkan, Festival Wine melanggar keputusan Mahkamah Agung Israel yang keluar Juni 2011 lalu. Dalam keputusan tersebut memerintahkan masjid untuk diubah menjadi museum sejarah dan kebudayaan Islam.<br />\r\n<br />\r\nMasjid yang dibangun pada Era Usmani pada 1906 ini sempat menjadi tempat ibadah hingga 1948. Kemudian berubah menjadi penjara dan pengadilan hingga 1952. Lalu dari 1953-1991 dibuka sebagai Museum Tanah Negeb. Pada 2002 sempat ada sebuah petisi yang meminta masjid untuk dibuka kembali sebagai tempat ibadah.</p>\r\n', '', 'Minggu', '2018-04-22', '07:54:00', 'wine.png', '32', '', 'Y');
INSERT INTO `berita` VALUES ('607', '39', 'admin', 'Moskow Larang Parade Gay Selama 100 Tahun', '', '', 'moskow-larang-parade-gay-selama-100-tahun', 'Y', 'Y', 'N', '<p>Pengadilan di Moskow mengukuhkan keputusan untuk melarang parade homoseksual untuk seratus tahun ke depan.<br />\r\n<br />\r\nLangkah ini dilakukan menyusul upaya pegiat hak homoseksual Rusia, Nikolay Alexeyev untuk membatalkan keputusan pemerintah kota melarang parade.<br />\r\n<br />\r\nIa meminta hak melakukan parade selama 100 tahun ke depan.<br />\r\n<br />\r\nAlexeyev juga menentang larangan kota St Petersburgh untuk menyebarkan &quot;propaganda homoseksual.&quot;</p>\r\n\r\n<p>Mahkamah hak asasi Eropa telah meminta pemerintah Rusia untuk membayar kerugian kepada Alexeyev.</p>\r\n\r\n<p>Alexeyev mengatakan Jumat (17/08) ia akan kembali ke Mahkamah Eropa untuk meminta agar menetapkan bahwa larangan itu tidak adil.</p>\r\n\r\n<p>Pemerintah kota Moskow menyatakan parade gay akan menimbulkan risiko gangguan ketertiban umum.</p>\r\n\r\n<p>Pemkot juga mengatakan sebagian besar warga Moskow menentang kegiatan itu.</p>\r\n\r\n<p>Bulan September lalu, Dewan Eropa -pengawasan HAM di Eropa- akan meneliti tanggapan Rusia atas keputusan Mahkamah Eropa sebelumnya tentang hak gay, menurut media Rusia.</p>\r\n\r\n<p>Bulan Oktober 2010, Mahkamah Eropa mengatakan Rusia melakukan diskriminasi terhadap Alexeyev karena orientasi seksualnya.</p>\r\n\r\n<p>Mahkamah saat itu menangani larangan Moskow atas parade gay antara tahun 2006-2008.</p>\r\n', 'Nikolay Alexeye. ', 'Minggu', '2018-04-22', '07:20:38', 'moscow.jpg', '5', 'internasional', 'Y');
INSERT INTO `berita` VALUES ('597', '44', 'admin', 'Pasar Tiban Kalibata Selalu Ramai Pengunjung', '', '', 'pasar-tiban-kalibata-selalu-ramai-pengunjung', 'Y', 'Y', 'N', 'Jakarta - Pasar tiban, atau pasar musiman, istilah untuk menjelaskan pasar yang musiman, tidak punya tempat menetap. Ada juga istilah pasar malam, pasar tumpah atau pasar kaget. Biasanya pasar ini mengambil waktu tertentu misalnya: bulan puasa, atau hari tertentu yang libur. Pasar tiban di Kalibata &lsquo;buka&rsquo; tiap hari minggu.<br />\r\n<br />\r\nBermacam-macam barang dijajakan, mulai dari pakaian, mainan anak-anak, sepatu, tas, tanaman hias, jajan pasar, peralatan rumah tanggga, sprei, parfum, buku dan majalah bekas, pigura, dll. Semua dengan harga murah. Pasar ini mengambil tempat sepanjang jalan dari menuju Stasiun Kalibata sampai depan STEKPI, samping periumahan DPR RI Kalibata.<br />\r\n<br />\r\nPasar ini awalnya tidak begitu ramai. Waktu itu setiap hari minggu di danau Taman Makam pahlawan (TMP) Kalibata banyak orang yang melakukan olah raga pagi. Muda-mudi paling banyak. Hukum ekonomi berjalan, di mana ada keramaian selalu ada yang menggunakan peluang. Maka ada orang jualan bubur ayam, lontong sayur, ketoprak dan lainnya. Mengambil tempat sempit di depan gerbang parkir TMP.<br />\r\n<br />\r\nLama-lama ada yang berjualan pakaian, mainan, poster, dan lainnya. Semakin banyak yang berjualan dan mengambil tempat di sepanjang jalan depan TMP. Di sini mulai ada masalah, kemacetan. Mungkin karena pengunjung semakin banyak, membuat kemacetan, pasar &lsquo;dipindah&rsquo; ke dalam. Hingga sekarang. Sebenarnya tidak tahu dipindah atau pindah sendiri, mungkin pihak berwenang berprinsip, yang penting tidak mebuat jalan macet.<br />\r\n<br />\r\nJadilah seperti sekarang, pasar tiban menjadi hiburan sendiri untuk warga Kalibata, Pancoran, Pasar minggu dan sekitarnya. Tempatnya yang relatif jauh dari jalan raya, masih hijau, memang enak buat jalan-jalan. Setelah lelah jalan-jalan melihat-lihat barang, tersedia berbagai warung yang meyediakan berbagai menu, tinggal pilih: Nasi uduk, lontong sayur, nasi rames, mendowan, bubur ayam, pecel lele, warung Padang, warung Sunda. Juga minuman, ada es tebu, Es Teh, es buah.<br />\r\n<br />\r\nPenasaran, sempatkan hari muingggu ke Kalibata. Tersedia angkutan dari berbagai arah: Dari Blok M, naik Kopaja 57, Dari Cililitan kopaja 57/ Metrimini 64, dari Kampung melayu dan Pasar Minggu naik M16, dari Manggarai naik Metromini 62. Jangan lupa ajak keluarga, sekalian makan bersama di hari Minggu.<br />\r\n', '', 'Minggu', '2012-08-19', '01:54:07', '', '30', 'wisata', 'Y');
INSERT INTO `berita` VALUES ('627', '40', 'admin', 'Nikmatnya Bubur Ayam Cikini', '', '', 'nikmatnya-bubur-ayam-cikini', 'N', 'N', 'N', 'Jakarta - Jika Anda pecinta kuliner Bubur, pasti sudah mengenal Bubur Cikini H. Sulaiman. Bubur yang satu ini memang terbilang populer di Jakarta. Kabarnya bubur ini didirikan sejak tahun 1980-an. Bisa bertahan sampai sekarang tentu merupakan jaminan tersendiri. Kualitas rasa adalah modal utama sebuah usaha kuliner selalu diterima konsumen. Bubur Cikini H. Sulaiman memiliki hal tersebut.<br />\r\n<br />\r\nDahulu Bubur Cikini H. Sulaiman bisa dijumpai di tenda kaki lima. Jam operasional juga dimulai sekitar jam 6 sore hari. Namun kini Bubur Cikini H. Sulaiman telah memiliki tempat permanen yang lebih nyaman. Jam operasional juga berubah. Kini Bubur Cikini juga bisa dinikmati di pagi hari. Bagi yang suka menu bubur untuk sarapan, jangan sampai melewatkan Bubur Cikini.<br />\r\n<br />\r\nSoal menu, Bubur Cikini H. Sulaiman tentu menyajikan menu bubur sebagai sajian utama. Menu yang bisa dicicipi antara lain Bubur Ayam Biasa, Bubur Ayam Telur, Nasi Goreng Ayam, Nasi Goreng Otokwok, Mie Goreng/Rebus, Telur Goreng, Empal Gentong Nasi/Lontong, Ati Ampela, aneka minuman dan masih banyak lagi lainnya. Jika Ingin menikmati empal Gentong Nasi/Lontong harus datang di hari Sabtu atau Minggu sebab menu tersebut tidak tersedia setiap harinya.<br />\r\n<br />\r\nSoal harga memang fluktuatif. Bisa berubah kapanpun. Tetapi sebagai deskripsi harga, seporsi Bubur Ayam Biasa bisa dinikmati dengan harga Rp.13.000 per porsi, menu Bubur Telur juga di harga yang sama. Untuk Nasi Goreng Ayam bisa dinikmati dengan membayar Rp.15.000, sedangkan Nasi Goreng Otokwok bisa dinikmati dengan harga Rp,17.000. Bagi yang menyukai menu Empal Gentong Nasi/Lontong bisa dicicipi dengan membayar Rp.20.000 per porsi. Cukup murah!\r\n', '', 'Selasa', '2012-08-21', '13:55:20', '', '32', 'kuliner', 'Y');
INSERT INTO `berita` VALUES ('628', '40', 'admin', 'Soto Betawi H. Husein sangat enak sekali', '', '', 'soto-betawi-h-husein', 'N', 'N', 'N', 'Indonesia sangat kaya akan khazanah kuliner. Masing-masing wilayah mempunyai makanan yang khas. Meskipun sama jenisnya, namun rasa dan racikannya berbeda.<br />\r\nSama seperti daerah-daerah lain di Indonesia, masyarakat Betawi juga mempunyai makanan khas yaitu soto Betawi. Salah satu yang terkenal adalah soto Betawi Haji Husein yang ada di kawasan Minangkabau, Manggarai, Jakarta Selatan. Di tempat seluas 5 x 10 meter, Bang Husein, 57; panggilan akrabnya, membuka usahanya dari pukul 07.00 WIB hingga dagangannya habis. Usaha ini telah dirintisnya sejak tahun 1989. Sebelum membuka usaha sendiri, ia terlebih dahulu belajar dari pamannya sejak tahun 1970-an.<br />\r\n<br />\r\nSaya sudah mulai ikut usaha sejak Kelas 4 SD. Waktu itu ikut Uwak (panggilan paman-Red) jualan sate, tongseng, sama soto, kata Bang Husein. Bapak empat orang anak ini mengaku memilih soto karena lebih praktis, selain itu ia ingin melestarikan makanan asli Betawi.<br />\r\nYang membedakan soto Betawi Haji Husein dengan soto di daerah lainnya adalah proses pengolahan isi sotonya. Olahan daging sapi yang berupa daging, jeroan, dan kikil terlebih dahulu direbus; baru kemudian digoreng. Yang hampir sama biasanya soto Makassar, cuma biasanya dagingnya direbus saja, nggak digoreng, ujar pria kelahiran Jakarta ini.<br />\r\nDalam sehari Bang Husein biasa menyediakan 50 Kg olahan daging sapi yang terdiri dari daging, jeroan, dan kikil. Mulai pukul 03.00 WIB ia merebus semuanya hingga pukul 06.00 WIB. Menurutnya proses merebus membutuhkan waktu yang cukup lama. Bumbu yang digunakan untuk kuah sotonya hanya terdiri dari rempah-rempah biasa yang banyak dijual di pasar. Bahan-bahan itu kemudian diracik sedemikian rupa sehingga mempunyai rasa yang khas. Kuah soto Betawi umumnya kental karena menggunakan santan. Dalam sehari ia bisa menghabiskan berpuluh butir kelapa tua untuk diolah menjadi santan.<br />\r\n<br />\r\nSetiap hari warungnya selalu ramai dikunjungi orang. Biasanya mereka datang pada saat jam istirahat makan siang. Penikmat soto Haji Husein berasal dari berbagai kalangan. Mulai dari yang berkantong tipis sampai yang berkantong tebal. Demikian lakunya, tidak jarang pelanggannya harus antre menunggu pelanggan lain yang sedang makan.<br />\r\nTempatnya yang terletak persis di pinggir jalan terkadang tidak muat menampung sepeda motor dan mobil yang dikendarai para pelanggannya. Tak jarang pula orang-orang kantoran datang jauh-jauh hanya untuk merasakan kenikmatan sotonya.<br />\r\n<br />\r\nMelihat banyaknya pengunjung yang datang, bisa dipastikan rasanya pastilah menggugah selera. Dalam sehari Bang Husein mengaku bisa menghabiskan lebih kurang 100 porsi. Untuk satu porsinya ia hargai Rp16.000, itu sudah termasuk nasi. Omzet per-bulannya bisa mencapai lebih kurang Rp20 juta. Ke-12 orang karyawan kini membantunya melayani pelanggan setiap hari. Waktu awal buka mah cuma berdua. Sekarang pegawainya nggak pernah berubah, ungkapnya. Di antara karyawannya ada dua anak lelakinya yang ikut membantu.<br />\r\nUsaha ini merupakan usaha keluarga turun-temurun. Bang Husein merupakan generasi keempat. Sebelum di tempatnya saat ini ia sempat merasakan berjualan keliling menggunakan pikulan.<br />\r\n<br />\r\nUang Rp400.000 menjadi modal awal usahanya. Dulu uang segitu besar, bisa buat beli semua, katanya. Usaha ini dijalaninya mulai dari bawah sekali. Bahan-bahan sotonya didapatkan dengan cara mengutang. Ia juga harus membayar sewa tempat.<br />\r\nSaat ini dengan omzet besar ia tidak perlu lagi mengutang. Bahkan sejak tahun 2000 tempatnyapun sudah menjadi milik pribadi. Asal ada kemauan, semua pasti bisa. Yang penting jangan pernah bosan kalau usaha, ujarnya. Untuk mempertahankan cita-rasa agar tidak berubah, Bang Husein selalu memerhatikan takaran komposisinya. Hal inilah yang menjadi salah satu daya tarik pengunjung untuk kembali karena rasa tidak berubah-ubah.<br />\r\n<br />\r\nMeski sudah menjadi pemilik, kakek dua orang cucu ini masih melayani sendiri para pelanggannya. Ia tidak canggung berbaur dengan karyawan lainnya. Ini juga menjadi salah satu trik untuk menarik pelanggannya. Terkadang para pelanggan yang seumurnya apabila dilayani olehnya akan merasa senang. Menurut mereka liat muka kita aja udah enak, makanan nomer dua, katanya sambil tertawa. Pertemuan seperti ini seperti sebuah nostalgia baginya.<br />\r\nSemua jerih payahnya telah membuahkan hasil yang cukup membanggakan baginya. Dari hasilnya berjualan ia sudah bisa pergi haji dan membiayai anak-anaknya sekolah. Ia juga sudah memberangkatkan dua karyawannya untuk menunaikan ibadah haji. Soto Betawi Bang Husein buka dari Senin sampai Minggu. Khusus hari Jumat ia sengaja tidak membuka warungnya untuk ibadah sholat Jumat. Pada bulan Ramadhan ia juga menutup usahanya sebulan penuh.<br />\r\n<br />\r\nInilah Bang Husein, usahanya dijalani secara seimbang dengan ibadah. Ia juga tidak sungkan membagi rahasia dapurnya. Rezeki mah ada aja, udah ada yang ngatur. Selain usaha juga jangan lupa berdoa, ujarnya.\r\n', '', 'Selasa', '2012-08-21', '14:35:48', '', '23', 'kuliner', 'Y');
INSERT INTO `berita` VALUES ('629', '31', 'admin', 'Cokelat Hitam Turunkan Tekanan Darah', '', '', 'cokelat-hitam-turunkan-tekanan-darah', 'N', 'N', 'N', '<p>Cokelat hitam sudah lama diketahui manfaatnya bagi kesehatan. Hasil analisa terhadap 20 studi menunjukkan, konsumsi cokelat hitam setiap hari akan menurunkan tekanan darah.<br />\r\n<br />\r\nPenelitian yang dilakukan The Cochrane Group melaporkan, zat aktif dalam cokelat bermanfaat untuk membuat pembuluh darah lebih rileks. Akibatnya, tekanan darah pun turun.<br />\r\n<br />\r\nZat aktif yang punya efek positif tersebut adalah flavonol, yang di dalam tubuh akan menghasilkan zat kimia oksida nitrat dan membuat pembuluh darah lemas sehingga darah lebih lancar bersirkulasi.<br />\r\n<br />\r\nAnalisis yang dibuat tersebut mengombinasikan beberapa penelitian sebelumnya untuk mengetahui ada tidaknya efek cokelat bagi tekanan darah. Cokelat hitam yang dikonsumsi partisipan dalam penelitian itu cukup banyak, antara 3 gram sampai 105 gram setiap hari.<br />\r\n<br />\r\nNamun penurunan tekanan darah yang dihasilkan tidak terlalu besar, hanya 2-3 mmHg. Akan tetapi penelitian hanya dilakukan selama dua minggu sehingga tidak diketahui dampaknya dalam jangka panjang.<br />\r\n<br />\r\n&quot;Meski kami belum mendapat bukti adanya efek jangka panjang penurunan tekanan darah, tetapi penurunan sedikit dalam jangka pendek ini mungkin dalam jangka panjang bisa berkontribusi pada penurunan risiko penyakit jantung,&quot; kata Karin Ried, dari National Institute of Integrative Medicine di Melbourne, Australia.<br />\r\n<br />\r\nTekanan darah tinggi cukup banyak diderita dan diperkirakan menjadi penyebab terbanyak stroke dan penyakit jantung.<br />\r\n<br />\r\nBila Anda ingin mendapatkan manfaat dari cokelat hitam, sebaiknya pastikan produk yang dibeli mengandung cokelat dalam jumlah tinggi karena kebanyakan produk di pasaran lebih banyak kandungan gula dan lemaknya.<br />\r\n<br />\r\nSelain cokelat, kacang, aprikot, blackberries, dan apel juga mengandung flavonol meski kadarnya lebih rendah daripada cokelat.</p>\r\n', '', 'Minggu', '2018-04-22', '07:34:00', 'coklat-hitam.jpg', '0', 'kesehatan', 'Y');
INSERT INTO `berita` VALUES ('630', '19', 'admin', 'Bos Yahoo Bajak 2 Karyawan Google tahun 2018', '', '', 'bos-yahoo-bajak-2-karyawan-google-tahun-2018', 'N', 'N', 'N', '<p>Marissa Mayer, sang CEO Yahoo kembali memperkuat &#39;pasukannya&#39;. Pernah bernaung di bawah bendera Google, Mayer pun membajak dua karyawan dari kantor terdahulunya tersebut.<br />\r\n<br />\r\nWanita yang diangkat menjadi CEO perusahaan internet pada bulan Juli lalu ini telah mempekerjakan mantan<em> Product Marketing Manager</em> Google yang bernama Andrew Schulte. Ia kini menjadi kepala staff di tubuh Yahoo.<br />\r\n<br />\r\nSchulte bergabung dengan Google pada tahun 2007. Ia sempat menangani kampanye marketing Google+. Penegasan kepindahan dirinya ia tuliskan di akun Twitter maupun profil LinkedInnya.<br />\r\n<br />\r\nSebelum Schulte, Mayer sudah membajak Anne Espiritu di mana duluanya bekerja sebagai<em> consumer technology PR </em>di Google, demikian dikutip dari <em>Cnet</em>, Senin (20/8/2012).<br />\r\n<br />\r\nMayer memang tengah sibuk menata struktur manajemen Yahoo. Perusahaan ini kabarnya juga tengah berburu <em>Chief Operating Officer </em>(COO) dengan pengalaman di bidang manajemen finansial dan restrukturisasi perusahaan.</p>\r\n', '', 'Minggu', '2018-04-22', '11:05:22', 'Marissa_Mayer.jpg', '11', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('631', '19', 'admin', 'Perusahaan Besar Sharp Tak Lagi Produksi TV?', '', '', 'perusahaan-besar-sharp-tak-lagi-produksi-tv', 'N', 'N', 'N', '<p>Tokyo - Sharp kabarnya mempertimbangkan untuk lebih fokus memproduksi panel LCD (liquid crsytal display) sehingga perlu menjual sejumlah unit bisnisnya. Perusahaan asal Jepang ini berencana untuk tak lagi merakit TV.<br />\r\n<br />\r\nSharp seperti dilaporkan surat kabar setempat Nikkei, disebut-sebut akan melepas unit bisnis mesin fotokopi dan pendingin ruangan (AC) agar lebih fokus dalam persaingan pasar LCD.<br />\r\n<br />\r\nNamun seperti dilansir Reuters dan dikutip detikINET, Sabtu (18/8/2012), Sharp melalui juru bicaranya menolak laporan tersebut. &quot;Kami mempelajari berbagai pengukuran, namun tidak ada fakta yang mendukung laporan surat kabar Nikke mengenai kemungkinan penjualan operasional utama Sharp,&quot; ujar juru bicara tersebut.<br />\r\n<br />\r\nPerforma perusahaan elektronik ini memang tidak menggembirakan awal bulan ini, dengan harga saham yang merosot pada titik terendahnya dalam 40 tahun terakhir.<br />\r\n<br />\r\nNikkei menyebutkan, sebagai bagian dari upaya pemulihan, Sharp juga akan melakukan spinoff pabriknya di pusat Jepang, yang membuat panel LCD untuk smartphone dan tablet, termasuk untuk komponen iPhone dan iPad Apple.<br />\r\n<br />\r\n&quot;Sharp mungkin saja menerima suntikan investasi dari pabrikan lain dan menjalankan operasional pabrik bersama-sama, seperti yang dilakukan Hon Hai roPrecision asal Taiwan di pabrik Sakai yang berlokasi di prefecture Osaka,&quot; tulis Nikkei.<br />\r\n<br />\r\nSaham Sharp turun 1,14% menjadi 173 yen pada penutupan perdagangan Jumat.</p>\r\n', '', 'Minggu', '2018-04-22', '11:04:06', 'Sharp-Bulding.jpg', '1', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('632', '19', 'admin', 'Kemungkinan Kodak Batal Jual Paten', '', '', 'kemungkinan-kodak-batal-jual-paten', 'N', 'N', 'N', '<p>New York - Kodak berencana menjual sebagian dari paten-patennya guna melindungi perusahaannya dari kebangkrutan. Namun belakangan, sang pionir di dunia fotografi ini menimbang ulang rencana tersebut.<br />\r\n<br />\r\nDilaporkan bahwa Kodak bisa jadi hanya menjual sebagian paten digital imaging yang hendak dilepas, atau malah tidak menjualnya satupun, demikian seperti dikutip detikINET dari AllThingsD, Senin (20/8/2012).<br />\r\n<br />\r\nKabar ini menyusul pemberitaan sebelumnya yang mengatakan bahwa Kodak telah menunda pengumuman hasil penjualan patennya. &quot;Kodak belum mencapai kepastian atau persetujuan untuk menjual portofolio paten digital imagingnya, &quot;ujar Kodak dalam sebuah pernyataan.<br />\r\n<br />\r\nSuara resmi tersebut menyugestikan bahwa lelang paten yang sudah berjalan tidak berjalan sesuai harapan perusahaan yang berbasis di Rochester, New York, Amerika Serikat ini.<br />\r\n<br />\r\nSebuah sumber yang mengetahui hal itu mengatakan bahwa tawaran yang datang untuk portofolio ini hanya berada di bawah angka USD 2 miliar.<br />\r\n<br />\r\nSebelumnya, Wall Street Journal pernah melaporkan bahwa tawaran awal datang dari dua konsorsium, di mana dipimpin oleh perusahaan raksasa, Google dan Apple.<br />\r\n<br />\r\nSeperti diketahui, Kodak berjuang keras menyelematkan &#39;nyawa&#39; perusahaan. Selain menjual sebagian dari 1.100 patennya, Kodak juga telah keluar dari bisnis kamera dan beralih ke digital printing serta penciptaan aplikasi-aplikasi baru di bidang tersebut.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:57:24', 'kodak.jpg', '1', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('633', '31', 'admin', 'Apakah dia mengalami Depresi? Cek Bicaranya', '', '', 'apakah-dia-mengalami-depresi-cek-bicaranya', 'N', 'N', 'N', '<p>Jakarta, Beberapa orang pandai menyembunyikan perasaan, dari luar tampak baik-baik saja meski hatinya menangis tercabik-cabik. Para ilmuwan baru-baru ini berhasil menentukan dengan tepat tingkat keparahan depresi berdasarkan cara berbicara.<br />\r\n<br />\r\nDalam penelitian yang diklaim sebagai yang terbesar di dunia tersebut, para ilmuwan menemukan bahwa cara berbicara susah dipalsukan ketika seseorang sedang depresi. Perubahan cara bicara itu bisa dipakai untuk mengukur tingkat keparahan depresi yang dialami.<br />\r\n<br />\r\nAdam Vogel, kepala Speech Neuroscience Unit di University of Melbourne mengatakan bahwa cara berbicara adalah penanda kesehatan otak yang sangat kuat. Berbagai perubahan yang terjadi pada cara berbicara bisa menunjukkan seberapa bagus otak bekerja.<br />\r\n<br />\r\n&quot;Cara berbicara orang yang sedang depresi berubah dan dipengaruhi oleh terapi yang diberikan, menjadi lebih cepat dengan jeda yang lebih pendek,&quot; kata Vogel dalam laporannya di jurnal Biological Psychiatry seperti dikutip dari Medindia, Selasa (21/8/2012).<br />\r\n<br />\r\nDalam penelitian tersebut, Vogel melakukan pengamatan terhadap 105 pasien yang sedang menjalani terapi untuk menyembuhkan depresi. Beberapa hal yang diamati antara lain waktu, nada dan intonasi bicara yang kemudian dibandingkan dengan hasil pemeriksaan psikologis.<br />\r\n<br />\r\nPara pasien diminta melakukan panggilan telepon ke sebuah mesin penjawab otomatis. Ada yang diminta berbicara apa saja, mengungkapkan perasaan dan sebagian hanya diminta untuk membaca teks supaya tidak perlu repot-reopot memikirkan mau bicara tentang apa.<br />\r\n<br />\r\n&quot;Temuan ini memungkinkan para psikolog jadi lebih fleksibel dalam memeriksa pasien dari jarak jauh, hanya dengan mendengarkan pola dan cara berbicara meski dari lokasi yang sangat jauh atau di kampung-kampung,&quot; kata James Mundt dari Centre for Psychological Consultation di Wisconsin.</p>\r\n', '', 'Minggu', '2018-04-22', '07:33:20', 'depresi.jpg', '0', 'kesehatan', 'Y');
INSERT INTO `berita` VALUES ('634', '31', 'admin', 'Makanan Penyumbang KegemukaN', '', '', 'makanan-penyumbang-kegemukan', 'N', 'N', 'N', '<p>Jakarta - Salah satu faktor yang banyak bikin orang jadi gemuk adalah mengonsumsi makanan yang berlebihan dan salah. Untuk itu ketahui makanan apa saja yang ditemui sehari-hari dan bisa bikin gemuk.<br />\r\n<br />\r\n&quot;Yang paling banyak bikin gemuk adalah makanan dengan kandungan gula murni dan tepung,&quot; ujar dr Pauline Endang, SpGK dari FKUI, Rabu (15/8/2012).<br />\r\n<br />\r\ndr Pauline menjelaskan banyak orang yang kadang tidak suka nasi tapi ia suka mengemil. Namun sayangnya cemilan ini makanan yang manis dengan kadar gula tinggi, kadang ada telur dan menteganya sehingga kalori tinggi.<br />\r\n<br />\r\n&quot;Makanan-makanan ini tidak bikin kenyang, jadi orang yang mengonsumsi bawaannya ia ingin makan terus apalagi jika ditambah dengan makan gorengan yang kandungan lemaknya tinggi,&quot; ungkapnya.<br />\r\n<br />\r\nHal senada juga diungkapkan oleh ahli gizi dr Inge Permadhi, MS, SpGK bahwa makanan tinggi kalori, tinggi gula dan tinggi lemak bisa menyebabkan seseorang mengalami kegemukan.<br />\r\n<br />\r\n&quot;Misalnya makanan berminyak, daging yang ada gajih, mentega, margarin, makanan-makanan ini rasanya enak dan gurih sehingga bikin orang ketagihan,&quot; ujar dr Inge dari Departemen Ilmu Gizi FKUI.<br />\r\n<br />\r\nBerikut ini beberapa makanan yang diketahui bisa menyumbang kegemukan yaitu:<br />\r\n<br />\r\n1. Gorengan, mengandung banyak lemak dan juga kolesterol<br />\r\n2. Martabak, mengandung tinggi gula dan lemak<br />\r\n3. Cake, mengandung tinggi gula dan lemak<br />\r\n4. Minuman manis, mengandung tinggi gula dan kalori<br />\r\n5. Minuman soda, menyebabkan timbunan lemak visceral di perut<br />\r\n6. Kerupuk, mengandung karbohidrat dan kadar lemak yang tinggi<br />\r\n7. Es krim,mengandung tinggi gula dan lemak<br />\r\n8. Daging yang masih ada gajihnya<br />\r\n9. Fast food atau makanan cepat saji, kandungan lemak dan kalorinya tinggi tapi cenderung minim nutrisi<br />\r\n10. Keripik, kandungan lemak dan gula dari keripik ini membuat jumlah kalorinya tinggi serta ditambah dengan tinggi garam<br />\r\n11. Sereal manis, mengandung karbohidrat yang tinggi dan ditambah dengan gula yang bisa memicu penimbunan lemak<br />\r\n12. Krim-krim penambah minuman (Whipped cream), mengandung kadar lemak yang tinggi<br />\r\n<br />\r\n&quot;Kandungan dari bahan makanan ini bila asupannya melebihi kebutuhan tubuh maka akan diubah dan disimpan di dalam sel lemak dan tentu saja membuat seseorang jadi gemuk,&quot; ujar Dr Marini Siregar, MGizi, SpGK dari RS Premier Jatinegara.<br />\r\n<br />\r\nDr Marini menyarankan agar tidak menjadi gemuk yang terpenting adalah keseimbangan antara apa yang dimakan dengan aktivitas fisik yang dilakukan. Jika termasuk orang yang aktivitas fisiknya rendah, asupan makanannya harus disesuaikan tidak boleh terlalu banyak.<br />\r\n<br />\r\n&quot;Jangan lupa mengonsumsi air yang cukup agar metabolisme dalam tubuh berjalan dengan baik, serta sayuran dan buah yang mengandung serat tinggi akan membuat kita merasa lebih kenyang sehingga mengurangi asupan makanan yang lain dan tidak akan terjadi kegemukan,&quot; ujar Dr Marini.</p>\r\n', '', 'Minggu', '2018-04-22', '07:32:21', 'food-388.jpg', '0', 'kesehatan', 'Y');
INSERT INTO `berita` VALUES ('635', '39', 'admin', 'Foto Bugil Pangeran Harry Beredar', '', '', 'foto-bugil-pangeran-harry-beredar', 'N', 'N', 'N', '<p>Las Vegas - Pangeran Harry dari Inggris kembali membuat sensasi. Kali ini TMZ, sebuah situs hiburan Amerika Serikat, merilis foto-foto bugil adik Pangeran William itu, Selasa (21/8/2012).<br />\r\n<br />\r\nMenurut TMZ, foto itu diambil ketika putra kedua Pangeran Charles itu berpesta dengan teman-temannya di kamar hotelnya di Las Vegas, Jumat (18/8/2012).<br />\r\n<br />\r\nMengutip sumbernya, TMZ melaporkan, Harry dan teman-temannya turun ke bar hotel dan bertemu sejumlah perempuan, yang kemudian diundangnya ke kamar suite-nya di hotel itu.<br />\r\n<br />\r\nSuasana pun menjadi liar karena anak-anak muda itu mengadakan permainan biliar. Dalam aturan permainan itu, yang kalah harus melepas pakaian, sampai akhirnya semua peserta bugil.<br />\r\n<br />\r\nBeberapa orang yang hadir di pesta itu memotret kehebohan pesta tersebut. Dalam salah satu foto, tampak Harry dalam keadaan telanjang bulat dengan kedua tangan menutupi alat vitalnya. Sementara itu, foto lainnya menunjukkan Harry memeluk seorang perempuan yang juga terlihat bugil.<br />\r\n<br />\r\nKepada TMZ, Keluarga Kerajaan Inggris mengatakan, &quot;Kami tidak berkomentar tentang foto-foto itu saat ini.&quot;</p>\r\n', '', 'Minggu', '2018-04-22', '08:14:38', 'meghan-markle-dan-pangeran-harry.jpg', '31', 'internasional', 'Y');
INSERT INTO `berita` VALUES ('636', '2', 'admin', 'Hukuman Ganda Korea Diperingan, Greysia/Meiliana Tunggu Nasib', 'Buntut Pertandingan \"Sabun\" di Olimpiade London', '', 'hukuman-ganda-korea-diperingan-greysiameiliana-tunggu-nasib', 'N', 'N', 'N', 'Seoul - Otoritas bulutangkis Korea Selatan, Rabu (22/8) mengurangi hukuman untuk \r\nempat pemain yang diduga sengaja kalah pada pertandingan di Olimpiade \r\nLondon, dari dua tahun menjadi enam bulan setelah terjadi proses \r\nbanding.<br />\r\n&nbsp;&nbsp;&nbsp; &nbsp;<br />\r\nJung Kyung-Eun, Kim Ha-Na, Ha Jung-Eun, dan Kim \r\nMin-Jung dilarang berpartisipasi di kompetisi-kompetisi domestik dan \r\ninternasional selama enam bulan, demikian disampaikan oleh Asosiasi \r\nBulutangkis Korea, Rabu.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKeempat atlet itu berkata mereka \r\nhanya mengikuti perintah pelatih Sung Han-Kook, dan asisten Kim \r\nMoon-Soo. Sebelumnya, hukuman seumur hidup mereka telah dikurangi \r\nmenjadi dua tahun.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nDelapan pebulutangkis ganda putri, dari \r\nKorea Selatan, Indonesia, dan China didiskualifikasi dari Olimpiade \r\nkarena sengaja mengalah agar dapat mengamankan posisi yang lebih \r\nmenguntungkan di babak berikutnya.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nSkandal ini membuat bintang bulutangkis China, Yu Yang, pensiun dari bulutangkis.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nPresiden\r\nFederasi Bulutangkis Dunia, Kang Young-Joong, telah menepis rumor bahwa\r\npublikasi yang buruk dari olahraga ini dapat membahayakan masa depan \r\nbulutangkis di Olimpiade.<br />\r\n&nbsp;&nbsp; &nbsp;<br />\r\nKorea Selatan mendapat satu medali \r\nperunggu dari cabang olahraga bulutangkis di London - itu merupakan \r\npenampilan terburuk sepanjang partisipasi mereka di Olimpiade.<br />\r\n<br />\r\nSementara\r\ndi Indonesia, PBSI akhirnya memutuskan akan menjatuhkan sanksi kepada \r\ndua pemain ganda putri andalannya, Greysia Polii dan Meiliana Jauhari. \r\nSeperti diketahui, Greysia/Meiliana harus didiskualifkasi dari Olimpiade\r\nLondon 2012 karena diduga sengaja mengalah pada penyisihan grup untuk \r\nmenghindari lawan berat di babak perempat final.<br />\r\n&nbsp;<br />\r\nBadminton World\r\nFederation (BWF) memutuskan Greysia/Meiliana dan lawannya, Ha Jung \r\nEun/Kim Min Jung dari Korea didiskualifikasi dari turnamen paling \r\nbergengsi tersebut. Pasangan terkuat dunia asal China, Wang Xiaoli/Yu \r\nYang dan Kim Ha Na/Jung Kyung Eun dari Korea juga terkena \r\ndiskualifikasi.<br />\r\n<br />\r\n&ldquo;Kami tak mau dipengaruhi oleh keputusan yang \r\ndiambil oleh Korea atau China, karena setiap organisasi memiliki \r\nkebijakan masing-masing. Walaupun demikian, kami menghargai IOC dan BWF \r\nyang telah memutuskan bahwa Greysia/Meiliana bersalah, hal ini tidak \r\nboleh terulang lagi kedepannya. PBSI akan memberikan sanksi, namun belum\r\nbisa diumumkan bentuk sankisnya seperti apa&rdquo; ujar Sekjen PBSI, Yacob \r\nRusdianto di Pelatnas Cipayung, Selasa (21/8) sepersti dikutip situs \r\nPBSI.<br />\r\n&nbsp;<br />\r\nSaat ini PBSI masih dalam proses diskusi mengenai sanksi \r\nyang akan diberikan kepada Greysia/Meiliana dan belum ada keputusan \r\nserta pemberitahuan resmi kepada keduanya. Namun ia mengaku telah \r\nbeberapa kali mengadakan pertemuan kekeluargaan bersama kedua pemain \r\nuntuk membicarakan masalah ini dan kemungkinan-kemungkinan yang akan \r\nterjadi.\r\n', 'Suasana pertandingan memalukan itu.\r\n', 'Kamis', '2012-08-23', '01:47:26', '', '24', 'olahraga', 'Y');
INSERT INTO `berita` VALUES ('637', '2', 'admin', 'Zeelenberg: Lorenzo Akan Bangkit melawan di Brno', 'MotoGP', '', 'zeelenberg-lorenzo-akan-bangkit-melawan-di-brno', 'N', 'N', 'N', '<p>London - Setelah harus bekerja keras merebut posisi kedua di Indianapolis, Manajer tim Yamaha, Wilco Zeelenberg, yakin pebalap Jorge Lorenzo akan bangkit di MotoGP seri Ceko.</p>\r\n\r\n<p>Lorenzo diyakini dapat tampil sebagai pemenang untuk menjaga posisi tertinggi di klasemen sementara. &quot;Sirkuit Indianapolis menyulitkan kami saat start. Namun, Sirkuit Brno memiliki lintasan yang halus dan cepat. Saya yakin kami dapat tampil lebih baik di sana,&quot; kata Zeelenberg, London, Rabu (22/8/2012) di London.</p>\r\n\r\n<p>Lorenzo menang di Brno pada musim 2010 tetapi finis keempat di musim 2011. Lorenzo akan berusaha merebut kemenangan keenam pada musim ini di Brno.</p>\r\n\r\n<p>Kemenangan ini penting bagi Lorenzo untuk memastikan langkahnya menjadi juara dunia di musim ini. Jika sampai kalah dari Dani Pedrosa, gelar juara dunia harus ditentukan sampai lomba di akhir musim</p>\r\n', 'Pebalap Yamaha, Jorge Lorenzo, dengan motor Jupiter Z1 di paddock Yamaha. ', 'Minggu', '2018-04-22', '10:57:39', 'jorge-lorenzo.jpg', '1', 'olahraga', 'Y');
INSERT INTO `berita` VALUES ('638', '2', 'admin', 'Tyson Peringatkan Rapper 50 Cent untuk Diam', '', '', 'tyson-peringatkan-rapper-50-cent-untuk-diam', 'N', 'N', 'N', '<p>New York - Mantan juara dunia tinju kelas berat Mike Tyson memperingatkan rapper 50 Cent yang kini bertindak sebagai promotor tinju.<br />\r\n<br />\r\nRapper yang bernama asli Curtis Jackson ini baru saja mendirikan The Money Team (TMT) Promotions bersama petinju legendaris AS lainnya, Floyd Mayweather Jr. TMT bergerak di bidang pertandingan tinju profesional.<br />\r\n<br />\r\nSaat mendirikan perusahaan ini, 50 Cent bermaksud melakukan perubahan mendasar pada olahraga tinju profesional di AS.<br />\r\n<br />\r\nNamun, Tyson yang pernah malang melintang di dunia tinju antara 1985 hingga 2005 ini memperingatkan 50 Cent tentang &quot;kotornya&quot; dunia tinju profesional.<br />\r\n<br />\r\n&quot;Anda harus tahu tentang dunia tinju. Ini merupakan bisnis yang legal, tetapi tidak semua berjalan terbuka,&quot; kata Tyson. &quot;Memang seharusnya bisnis ini dikelola pemerintah.&quot;<br />\r\n<br />\r\n&quot;50 (Cent) adalah seorang bintang rap, penghibur, dan enterpreneur. Namun, ia sama sekali tidak mengerti dunia tinju,&quot; lanjut juara dunia tinju kelas berat 1986-1990 ini.<br />\r\n<br />\r\nMenurut Tyson, pengetahuan tentang tinju diperoleh 50 Cent hanya versi dari Floyd Mayweather.&nbsp; &quot;Begitu dia berkecimpung di dunia ini, ia harus tahu bahwa kawan bisa menjadi lawan,&quot; kata Tyson. &quot;Mereka hanya inginkan uang Anda dan ingin terus menguasai dunia ini.&quot;<br />\r\n<br />\r\n50 Cent mendapatkan izin promotornya di New York pada Juli lalu, dan mendapat izin usahanya di Nevada. Saat ini mereka telah mengikat beberapa petinju potensial, seperti petinju kelas bulu Yuriorkis Gamboa dari Kuba dan Billy Dib dari Australia.</p>\r\n', 'Mike Tyson', 'Minggu', '2018-04-22', '10:56:30', 'mike-tyson.jpg', '2', 'olahraga', 'Y');
INSERT INTO `berita` VALUES ('639', '23', 'admin', 'Hilman Hariwijaya dan Eko Patrio akan Re-cycle Film', '', '', 'hilman-hariwijaya-dan-eko-patrio-akan-recycle-film', 'N', 'N', 'N', '<p>Jakarta - Kabar gembira bagi Anda pecinta novel maupun serial Lupus. Pasalnya, tokoh fiksi rekaan Hilman Wijaya ini akan segera diangkat ke layar lebar oleh rumah produksi eKomando Production.<br />\r\n<br />\r\n&quot;Nanti mau produksi film Lupus, kita re-cycle. Kita mudain lagi,&quot; ujar Eko, pemilik eKomando Production, saat ditemui di kawasan dr Saharjo, Jakarta, Kamis (16/8/2012).<br />\r\n<br />\r\nFilm Lupus diangkat kembali ke layar lebar bukan tanpa alasan. Menurut Eko, tokoh Lupus merupakan anak muda yang konyol tetapi inspiratif. Setiap seri Lupus selalu mengangkat unsur persahabatan. Tak ada nuansa politis atau hal lainnya.<br />\r\n<br />\r\n&quot;Di Lupus ada persahabatan yang abadi, bahu-membahu. Tidak pernah berkaitan dengan masalah politik dan sebagainya. Di sini pure banget yang diangkat pertemanan,&quot; tambah Eko.<br />\r\n<br />\r\nSaat ini skenario sudah rampung dibuat oleh penulisnya, Hilman Hariwijaya. Meski demikian, tokoh Lupus hingga saat ini belum ditentukan. Rencananya, Lupus mulai tayang di bioskop pada Februari 2013, bertepatan dengan Hari Valentine.</p>\r\n', '', 'Minggu', '2018-04-22', '11:11:01', 'eko-patrio.jpg', '0', 'film,hiburan', 'Y');
INSERT INTO `berita` VALUES ('640', '23', 'admin', 'Marvel Umumkan Jadwal Rilis The Avengers 2', '', '', 'marvel-umumkan-jadwal-rilis-the-avengers-2', 'N', 'N', 'N', '<p>Los Angeles - The Avengers is back. Setelah memastikan Joss Whedon bakal kembali berada di balik layar, Marvel juga mengumumkan jadwal penayangan perdana The Avengers 2.<br />\r\n<br />\r\nRencanannya, film kumpulan para superhero ini akan dirilis pada tanggal 1 Mei 2015 mendatang setelah mereka menanyangkan film-film terkaitnya seperti Iron 3, Captain America 2 dan Thor 2.<br />\r\n<br />\r\nMeski belum memiliki judul, Marvel dan Disney sudah siap untuk kembali memproduksi film terlaris ketiga box office sepanjang masa. &quot;Walt Disney telah mengumumkan tanggal perilisan sekuel dari film blockbuster superhero terbesar dan film terlaris ketiga sepanjang masa, The Avengers,&quot; tulisnya dalam rilis yang dilansir Digital Spy.<br />\r\n<br />\r\n&quot;Josh Whedon akan kembali menulis naskah dan menyutradarai sekuel Avengers ini dan akan dirilis pada 1 Mei 2015,&quot; tambah Marvel.<br />\r\n<br />\r\nMenyusul pengumuman tersebut, bisa dipastikan bahwa para bintang The Avengers seperti Robert Downey Jr, Chris Hemsworth dan Chris Evens akan kembali tampil untuk memeriahkan film tersebut.</p>\r\n', 'The Avengers', 'Minggu', '2018-04-22', '00:13:57', 'avangers.jpg', '0', 'film,hiburan', 'Y');
INSERT INTO `berita` VALUES ('641', '23', 'admin', 'Film Dirilis, Dewi Lestari Deg-degan Menunggu Pemutaran', '', 'http://www.youtube.com/embed/QgDWRe1TNRg', 'film-dirilis-dewi-lestari-degdegan-menunggu-pemutaran', 'N', 'N', 'N', '<p>Jakarta -&nbsp; Penulis novel laris &quot;Perahu Kertas&quot;, Dewi Lestari, mengaku tegang menjelang penayangan perdana film Perahu Kertas di bioskop hari ini. &quot;Sangat deg-degan,&quot; kata penulis dengan nama pena Dee itu usai jumpa pembaca novel Perahu Kertas di Gramedia Matraman, Jakarta, Kamis. Film yang diangkat dari novel setebal 456 halaman itu sudah tayang khusus untuk media dan undangan Rabu (8/8/2012) lalu.<br />\r\n<br />\r\n&quot;Kalau yang kemarin kan baru wartawan dan undangan, tetapi kalau sekarang yang dihadapi real judgment (penilaian nyata), sekarang penonton yang menilai. Lama film tayang di bioskop kan ditentukan dari penonton,&quot; kata Dee.<br />\r\n<br />\r\nFilm&nbsp; Perahu Kertas disutradarai oleh Hanung Bramantyo. Artis muda Maudy Ayunda dan Adipati Dolken yang pernah beradu akting di film&nbsp; Malaikat Tanpa Sayap menjadi pemeran utama film tersebut.<br />\r\n<br />\r\nMeskipun ada beberapa adegan film yang berbeda dengan kisah dalam novel namun Dee mengatakan hampir 80 persen jalan cerita film Perahu Kertas&nbsp; sama dengan novel.<br />\r\n<br />\r\n&quot;Kalau ada yang protes itu risiko ya, pasti ada dan buat saya itu wajar. Komparasi pasti terjadi. Tetapi sebagai film, Perahu Kertas solid,&quot; kata ibu dua anak itu.</p>\r\n', '', 'Minggu', '2018-04-22', '00:12:20', 'dewilestari.jpg', '0', 'film,hiburan', 'Y');
INSERT INTO `berita` VALUES ('642', '39', 'admin', 'Israel, Tumor yang Harus Dihancurkan dari Muka Bumi', '', '', 'israel-tumor-yang-harus-dihancurkan-dari-muka-bumi', 'Y', 'N', 'N', '<p>Teheran - Israel adalah &quot;tumor kanker&quot; yang akan segera dihancurkan, kata Presiden Iran, Mahmoud Ahmadinejad, Jumat (17/8/2012), kepada para demonstran yang melakukan protes tahunan terhadap eksistensi negara Yahudi itu.<br />\r\n<br />\r\n&quot;Rezim Zionis dan warga Zionis adalah satu tumor kanker. Kendatipun satu sel dari mereka dikeluarkan dalam satu inci tanah (Palestina), pada masa depan sejarah ini (bagi eksistensi Israel) akan terulang kembali,&quot; katanya dalam satu pidato di Teheran untuk memperingati Hari Quds Iran yang disiarkan langsung televisi negara itu.<br />\r\n<br />\r\n&quot;Negara-negara dari kawasan ini akan segera mengusir kaum Zionis perampas tanah Palestina.... Sebuah Timur Tengah baru pasti dibentuk. Dengan bantuan Allah dan negara-negara kawasan ini, Timur Tengah baru tidak akan ditemukan lagi orang-orang Amerika dan Zionis,&quot; katanya.<br />\r\n<br />\r\nPeringatan itu dilakukan pada saat ketegangan meningkat antara Israel dan Iran menyangkut program nuklir Iran yang disengketakan itu.<br />\r\n<br />\r\nIsrael pekan-pekan belakangan ini meningkatkan ancaman-ancamannya untuk menghancurkan fasilitas-fasilitas nuklir Iran guna mencegah Teheran mampu memproduksi senjata-senjata atom. Iran yang terkena sanksi-sanksi Barat membantah tuduhan itu dan menegaskan bahwa program nuklirnya hanya untuk tujuan damai. Militernya memperingatkan akan menghancurkan Israel jika diserang.<br />\r\n<br />\r\nTelevisi Pemerintah Iran menunjukkan, massa berpawai di bawah sinar matahari yang menyengat di Teheran dan kota-kota lain negara itu untuk memperingati Hari Quds (Jerusalem) yang bertujuan membebaskan kota Jerusalem, yanga akan dijadikan ibu kota negara Palestina masa depan (Israel juga bersikeras untuk menjadikan Jerusalem sebagai ibu kotanya).<br />\r\n<br />\r\nPara pengunjuk rasa membawa bendera-bendera Palestina dan foro-foto pemimpin tertinggi Iran, Ayatollah Ali Khamenei, dan spanduk bertuliskan &quot;Ganyang Israel&quot; dan &quot;Ganyang Amerika&quot;. Satu kelompok orang di Teheran terlihat membakar satu bendera Israel.<br />\r\n<br />\r\nUnjuk rasa itu telah menjadi kegiatan tahunan selama Ramadhan di Iran sejak Revolusi Islam tahun 1979. Para pengunjuk rasa menegaskan antipati Iran terhadap Israel dan sekutunya Amerika Serikat serta mendukung perjuangan rakyat Palestina, yang Khamenei sebut &quot;satu tugas agama.&quot;<br />\r\n<br />\r\nPemimpin tertinggi itu, Rabu, menyebut Israel sebagai &quot;hasil pertumbuhan Zionis gadungan dan palsu&quot; di Timur Tengah yang &quot;akan dilenyapkan&quot;.<br />\r\n<br />\r\nPemimpin Pengawal Revolusi yang berpengaruh, Jenderal Mohammed Ali Jafari, mengemukakan kepada kantor berita Fars, ketika menghadiri unjuk rasa di Teheran itu, bahwa &quot;negara Iran sekarang berada di garis depan perlawanan regional anti-Israel dalam menunjukkan kebenciannya pada Israel.&quot; Ia menambahkan, Iran tetap mempertahankan sikap tegas itu.<br />\r\n<br />\r\nAhmadinejad dalam pidatonya menyatakan, Zionis menimbulkan perang dunia pertama dan kedua, dan &quot;menguasai masalah-masalah dunia, sejak saat itu mereka menguasai Pemerintah AS.&quot;</p>\r\n', '', 'Minggu', '2018-04-22', '07:17:57', 'ahmaddinejad.jpg', '9', 'internasional', 'Y');
INSERT INTO `berita` VALUES ('643', '42', 'admin', 'Fatima Nabil, Presenter TV Berjilbab Pertama di Mesir', '', '', 'fatima-nabil-presenter-tv-berjilbab-pertama-di-mesir', 'N', 'N', 'N', '<p>Kairo - Fatima Nabil mencatat sejarah. Ia menjadi presenter pertama yang berjilbab yang muncul di televisi milik pemerintah Mesir. Dalam balutan jilbab berwarna krem, dan jas hitam Fatima membacakan buletin berita siang, Minggu 2 September 2012.&nbsp;</p>\r\n\r\n<p>&quot;Akhirnya revolusi juga terjadi di televisi milik pemerintah,&quot; kata Nabil. Ia berharap kemunculannya ini diikuti tak hanya presenter berita tapi juga presenter cuaca dan lainnya.</p>\r\n\r\n<p>&quot;Saat ini, standar bukan tergantung pada jilbab, yang sebenarnya merupakan pilihan pribadi setiap perempuan. Tapi lebih pada profesionalitas dan intelektual,&quot; ujarnya.</p>\r\n\r\n<p>Sejak televisi pemerintah ini berdiri tahun 1960, dibawah rejim Presiden Hosni Mubarok, perempuan yang mengenakan jilbab dilarang menjadi presenter. Aturan ini sempat ditentang sejumlah aktivis hak asasi dan kelompok liberal, namun kandas.</p>\r\n\r\n<p>Pemerintah baru yang dipimpin Presiden Mohammed Mursi, mencabut aturan ini. Menteri Informasi Baru Saleh Abdel-Makshoud mengatakan sudah banyak perempuan berjilbab yang muncul sebagai presenter di channel-channel televisi Arab dan internasional. Jadi perubahan ini tak menjadi masalah apalagi saat ini hampir 70% perempuan Mesir mengenakan jilbab.</p>\r\n\r\n<p>Petinggi stasiun televisi tersebut mengatakan munculnya Nabila bisa membangkitkan semangat perempuan lain yang ingin tetap mempertahankan jilbab mereka tanpa harus takut kehilangan pekerjaan. (Sumber: Tempo.co)</p>\r\n', 'Fatima Nabil', 'Minggu', '2018-04-22', '11:10:10', 'fatima_nabil.jpg', '0', 'internasional', 'Y');
INSERT INTO `berita` VALUES ('650', '22', 'admin', 'Roy Suryo Menpora, SBY Dipertanyakan', '', '', 'roy-suryo-menpora-sby-dipertanyakan', 'Y', 'N', 'N', '<p>Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.</p>\r\n\r\n<p>Menurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. &quot;Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,&quot; kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.</p>\r\n\r\n<p>Karena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. &quot;Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,&quot; katanya. (sumber: republika.co.id)</p>\r\n', 'Roy Suryo saat dilantik jadi Menpora', 'Minggu', '2018-04-22', '07:14:42', 'roy_suryo.jpg', '2', '', 'Y');
INSERT INTO `berita` VALUES ('651', '21', 'admin', 'Banjir Jakarta, Kerugian Ekonomi Capai Rp 1 Triliun', 'Jakarta Darurat Banjir', 'http://www.youtube.com/embed/RQMbr4DBqXk', 'banjir-jakarta-kerugian-ekonomi-capai-rp-1-triliun', 'N', 'N', 'Y', '<p>Ketua Asosiasi Pengusaha Indonesia Sofjan Wanandi mengatakan, banjir yang melanda Jakarta sepekan ini telah menimbulkan kerugian ekonomi yang cukup tinggi. Biaya bencana yang ditanggung untuk sekadar menyediakan makan&nbsp; bagi para pengungsi pun mencapai Rp 1 miliar lebih.</p>\r\n\r\n<p>Hal itu disampaikan Sofjan, saat ditemui di area bencana banjir di Penjaringan, Jakarta Utara, Minggu (20/1/2013).</p>\r\n\r\n<p>Sofjan menegaskan, tak bergeraknya roda ekonomi di Jakarta akibat bencana banjir menyebabkan kerugian lebih dari Rp 1 triliun. Aktivitas perdagangan menjadi tidak berjalan, dan kawasan Industri Pulogadung juga ikut lumpuh karena tak memperoleh suplai listrik akibat gardu listrik terendam banjir.</p>\r\n\r\n<p>Negara importir pun, katanya, mulai mempertanyakan kapan Jakarta bisa pulih, karena ini sangat terkait dengan kegiatan ekspor komoditas keluar negeri dari seluruh daerah di Indonesia yang bertumpu di Jakarta.</p>\r\n\r\n<p>&rdquo;Importir itu mulai bertanya-tanya, kapan banjir di Jakarta bisa surut. Kendati mereka saat ini memahami Jakarta sedang dilanda bencana,&rdquo; kata Sofjan. (sumber: kompas.com)</p>\r\n', 'Banjir di daerah Pluit', 'Minggu', '2018-04-22', '07:57:25', 'prediksi-banjir-jakarta.jpg', '13', '', 'Y');
INSERT INTO `berita` VALUES ('652', '22', 'admin', 'Hary Tanoe Mundur dari Partai Nasdem', '', '', 'hary-tanoe-mundur-dari-partai-nasdem', 'N', 'Y', 'N', '<p>\r\nKetua Dewan Pakar DPP Partai Nasional Demokrat (Nasdem) Hary Tanoesoedibjo menyatakan mundur dari keanggotaan Partai Nasdem. Hal itu disampaikannya secara resmi dalam jumpa pers, Senin (21/1/2013), di Jakarta.\r\n</p>\r\n<p>\r\n&quot;Saya menyatakan mundur dalam kapasitas saya sebagai Ketua Dewan Pakar. Mulai hari ini, saya bukan lagi anggota dari Partai Nasdem. Keputusan ini saya lakukan dengan berat hati,&quot; kata Hary.\r\n</p>\r\n<p>\r\nIa menyatakan, sejak bergabung dengan Partai Nasdem pada 9 Oktober 2011, Hary merasa telah melakukan upaya terbaik, baik energi, pikiran, dana, maupun risiko, untuk berpartisipasi membesarkan Partai Nasdem. &quot;Target utamanya lolos verifikasi dan lolos sebagai partai peserta pemilu. Saya merupakan bagian yang ikut meloloskan Nasdem,&quot; kata bos MNC Grup ini.\r\n</p>\r\n<p>\r\n&quot;Keputusan saya ini tidak mengenakkan, tapi pada satu titik saya harus memutuskan ini. Aktivitas politik harus tetap dijalankan. Destiny keterlibatan saya di politik adalah menjadi bagian dari perubahan untuk bangsa Indonesia menjadi lebih baik. Saya ingin ikut andil secara nyata, langsung. Karena bagaimanapun politik menjadi satu bagian ideologi dan bagian dari masa depan kita,&quot; papar Hary.\r\n</p>\r\n<p>\r\nPerpecahan di tubuh Nasdem mulai merebak ketika beredar kabar adanya faksi di dalam partai itu. Dikabarkan, Surya Paloh yang akan menjadi ketua umum partai itu berseberangan dengan faksi Hary Tanoe. Beberapa waktu lalu, kelompok Surya Paloh memecat Sekjen Garda Pemuda Nasional Demokrat (GPND), Saiful Haq.\r\n</p>\r\n<p>\r\nTentang alasannya mundur, Hary mengatakan karena ada perbedaan pendapat dengan Ketua Majelis Tinggi Partai Nasdem Surya Paloh (sumber: kompas.com) \r\n</p>\r\n', 'Hary Tanoe saat memberikan keterangan pers', 'Jumat', '2013-01-25', '00:58:26', '', '14', 'politik', 'Y');
INSERT INTO `berita` VALUES ('653', '41', 'admin', 'Ketika kata Ciyus Terucap dari Mulut Jokowi', '', '', 'ketika-kata-ciyus-terucap-dari-mulut-jokowi', 'N', 'Y', 'N', '<p>Kata <em>ciyus</em> atau serius sering terdengar diucapkan anak-anak zaman sekarang yang sering dijuluki anak baru gede (ABG). Nah, ketika bahasa gaul itu diucapkan oleh Joko Widodo, para pewarta yang bertugas meliput kegiatan Gubernur DKI Jakarta itu tak bisa menahan tawa karena nadanya yang sedikit medok.</p>\r\n\r\n<p>Terhitung sudah dua kali Jokowi melontarkan kata itu kepada wartawan. Pertama, saat Jumat (18/1/2013) malam lalu, ketika Jokowi meninjau perbaikan Tanggul Kanal Banjir Barat (KBB) di Latuharhary, Jakarta Pusat. Seharian raut muka Jokowi begitu serius dan tegang karena pengerjaan tanggul yang masih belum selesai, ditambah hujan deras yang terus mengguyur Ibu Kota. Pendek kata, Jokowi tampak sangat suntuk dan senyum khasnya pun tak terpancar dari dirinya.</p>\r\n\r\n<p>Saat itu, Jokowi menghampiri wartawan yang sudah menunggunya di luar rel kereta api yang terputus. Lantas para wartawan berniat mencairkan suasana dengan melontarkan pertanyaan-pertanyaan konyol kepada Jokowi, seperti &quot;Apabila tanggul selesai, ditandai oleh pemotongan pita di Sency (Senayan City)?&quot;. Mendengar pertanyaan itu, senyum yang hilang dari Jokowi akhirnya muncul kembali.</p>\r\n\r\n<p>Seraya mengernyitkan dahinya, Jokowi bertanya, &quot;Apa itu Sency?&quot; Wartawan pun langsung menjelaskan kalau Sency itu adalah kependekan dari Senayan City. Mengetahui hal tersebut, Jokowi pun tertawa dan mengatakan kalau berbicara hendaknya jangan disingkat-singkat. &quot;Oh, <em>kirain </em>saya sensitif itu maksudnya. <em>Mbok</em>, jangan disingkat-singkat, <em>tho</em>,&quot; kata Jokowi.</p>\r\n\r\n<p>Pembicaraan itu pula yang membuat Jokowi melontarkan kata <em>ciyus</em> dan <em>miapah</em> kepada wartawan. &quot;Kalau <em>ciyus miapah </em>itu apa? Ha-ha-ha,&quot; kata Jokowi yang membuat suasana lokasi tersebut yang awalnya tegang menjadi ramai.</p>\r\n\r\n<p>Kata <em>ciyus </em>kembali diucapkan Jokowi, Selasa (22/1/2013) kemarin, saat berbincang dengan wartawan di Balaikota DKI. Bahasa gaul itu keluar kembali setelah ia ditanya terkait kinerjanya 100 hari.</p>\r\n\r\n<p>Saat itu, Jokowi ditanya masalah Jakarta apa yang membuat Jokowi pusing. Jokowi pun menjawab tak ada persoalan yang membuatnya pusing karena ia telah menghadapi masalah itu sejak ia memimpin Solo selama delapan tahun. Namun, ada satu masa Jokowi mengaku tidak memiliki semangat. &quot;Yaitu kalau pas B sama pas T. Apa itu? Pokoknya pas B sama pas T. <em>Ciyuss</em>,&quot; canda Jokowi yang mengundang tawa para wartawan. (sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:36:47', 'jokowi_ciyus.jpg', '0', 'metropolitan', 'Y');
INSERT INTO `berita` VALUES ('654', '31', 'admin', 'Bahaya Mendiagnosis Penyakit Lewat Internet', '', '', 'bahaya-mendiagnosis-penyakit-lewat-internet', 'N', 'Y', 'N', '<p>Apakah Anda mengunjungi &quot;dokter Google&quot; lebih sering dari dokter di klinik? Anda tidak sendiri. Dalam sebuah survei tahun lalu di Amerika diketahui bahwa 35 persen responden mencocokkan gejala penyakitnya di internet dan mendiagnosis dirinya sendiri.</p>\r\n\r\n<p>Masih menurut survei yang dilakukan The Pew Research Center&#39;s Internet &amp; American Life Project itu, sekitar 41 responden mengatakan diagnosis sendiri itu ternyata dikonfirmasi kebenarannya oleh dokter.</p>\r\n\r\n<p>Tetapi, sekitar satu dari tiga responden mengaku tidak pernah pergi ke dokter untuk mencari opini kedua. Malahan, 18 persen responden mengatakan bahwa upaya mendiagnosis sendiri itu ternyata salah ketika ditanyakan ke dokter.</p>\r\n\r\n<p>Meski survei yang melibatkan 3.000 responden itu sebenarnya dilakukan untuk mengetahui siapa yang mencari informasi kesehatan secara <em>online</em>, tetapi para profesional medis merasa khawatir dengan tren itu.</p>\r\n\r\n<p>&quot;Rata-rata tiap orang mengunjungi empat situs lalu memutuskan ia menderita kanker dan akan segera meninggal. Padahal, di internet banyak informasi yang keliru,&quot; kata Rahul K Khare, dokter unit gawat darurat dari Northwestern Memorial Hospital.</p>\r\n\r\n<p>Menurut Khare, ia sering menemukan pasien yang hidupnya menjadi penuh kecemasan karena mereka merasa menderita penyakit berat setelah mencocokkan gejala yang dirasakannya dengan informasi di internet. (sumber: kompas.com)</p>\r\n', '', 'Minggu', '2018-04-22', '07:29:21', 'Diagnosis-Penyakit.jpg', '0', 'kesehatan', 'Y');
INSERT INTO `berita` VALUES ('655', '19', 'admin', 'Microsoft Update Windows 8.2 Agustus?', '', '', 'microsoft-update-windows-82-agustus', 'N', 'Y', 'Y', '<p>Kebocoran mengenai update OS Windows 8 yang kedua datang menghinggapi Microsoft. Windows 8.1 update 2 direncanakan diperbarui pada Agustus mendatang.<br />\r\n<br />\r\nMelalui sebuah gambar yang diklaim otentik berasal dari Rusia, informasi dari dokumen itu hampir sama dengan rumor yang beredar selama ini.<br />\r\n<br />\r\nSementara itu, update untuk Threshold masih menjadi rumor dan belum diketahui kapan akan dilaksanakan. Microsoft belum mengkonfirmasi apapun terkait gambar bocornya&nbsp;<em>update</em>&nbsp;windows 8.1 update 2 tersebut seperti dilansir&nbsp;<em>Neowin</em>, Senin (21/7/2014).<br />\r\n<br />\r\nBelum diketahui seperti apa detail fitur yang dihadirkan pada Windows 8.2. Sementara Windows 9 dikabarkan memiliki tampilan antarmuka Metro baru.<br />\r\n<br />\r\nSelain itu, terdapat menu start baru dan aplikasi Metro dengan tampilan jendela yang disertakan dalam&nbsp;<em>update&nbsp;</em>tersebut. Konon, Microsoft sedang mempertimbangkan membuat versi gratis dari Windows 9.<br />\r\n<br />\r\nInformasi yang beredar juga menyebutkan bahwa Microsoft sedang bekerja pada Windows Cloud. Menurut WZor, ada tim di Microsoft yang bekerja pada prototype sistem operasi, di mana pengguna bisa mengunduh gratis dan menambahkan fungsionalitas melalui sistem berlangganan.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:55:12', '55Windows-8_2.png', '2', 'internasional,teknologi', 'Y');
INSERT INTO `berita` VALUES ('656', '39', 'admin', 'Usai Bertempur, banyak Tentara Israel Hilang di Jalur Gaza', 'Terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.', 'http://www.youtube.com/embed/hkzpLJjZQbA', 'usai-bertempur-banyak-tentara-israel-hilang-di-jalur-gaza', 'Y', 'Y', 'Y', '<p><strong>YERUSALEM&nbsp;</strong>- Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.<br />\r\n<br />\r\nMelansir&Acirc;&nbsp;<em>Boston Herald</em>, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.<br />\r\n<br />\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.<br />\r\n<br />\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.<br />\r\n<br />\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.<br />\r\n<br />\r\nMengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.<br />\r\n<br />\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.<br />\r\n<br />\r\nMengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israele dan Hamas.</p>\r\n\r\n<p>Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.<br />\r\n<br />\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.</p>\r\n\r\n<p>Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.<br />\r\n<br />\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.</p>\r\n', 'Tentara Israel Bersimbah Darah', 'Jumat', '2018-04-20', '09:51:42', 'tentara_israel_hilang_di_palestina.jpg', '43', 'yahudi,israel,palestina,internasional,hukum,teknologi', 'Y');
INSERT INTO `berita` VALUES ('657', '39', 'admin', 'Unjuk Rasa Anti-Yahudi Dikecam Eropa', '', '', 'unjuk-rasa-antiyahudi-dikecam-eropa', 'N', 'Y', 'Y', '<p><strong>PARIS&nbsp;</strong><span>- Demo anti-Yahudi yang menyeruak di dunia mendapat kecaman dari negara besar di Eropa. Kecaman tersebut datang dari Jerman, Prancis dan Italia.</span><br /><br /><span>Melalui menteri luar negerinya, masing-masing negara mengutuk aksi unjuk rasa yang sering berujung dengan kericuhan dan tindak kekerasan.</span><br /><br /><span>\"Hasutan, permusuhan, serangan terhadap orang-orang Yahudi tidak memiliki tempat di masyarakat kami,\"&nbsp; sebut pernyataan gabungan tiga Menlu tersebut, seperti dikutip dari&nbsp;</span><em>DNA</em><span>, Rabu (23/7/2014).</span><br /><br /><span>Tidak bisa dipungkiri sejak agresi Israel dilancarkan, protes besar terjadi di beberapa negara. Di Prancis, unjuk rasa kelompok Pro-Palestina diakhiri pembakaran di sejumlah objek di depan toko yang dimiliki warga Yahudi.</span><br /><br /><span>Bahkan di negara ini, akibat memanasnya kondisi di Gaza, ketegangan antara kelompok Pro-Palestina dan warga Yahudi di Prancis acap kali terjadi. Prancis sendiri merupakan negara dengan populasi warga Yahudi terbanyak di Eropa.</span><br /><br /><span>Tidak hanya di Prancis, kondisi di Gaza pun jauh lebih buruk. Akibat pertempuran Hamas-Israel jumlah korban, khususnya dari warga sipil Palestina mencapai hampir 600 orang.</span></p>', '', 'Rabu', '2014-07-23', '14:37:32', '', '23', 'internasional,israel,palestina,yahudi', 'Y');
INSERT INTO `berita` VALUES ('658', '39', 'admin', 'Inggris Bela Serangan Roket Hamas ke israel', '', '', 'inggris-bela-serangan-roket-hamas-ke-israel', 'N', 'Y', 'Y', '<p>LONDON - Seorang anggota Parlemen Inggris membela serangan roket yang dilesakkan oleh Hamas ke arah Israel. Namun pembelaannya itu diganjar dengan sanksi indisipliner terhadapnya.</p>\r\n\r\n<p>Anggota Parlemen Inggris dari Partai Liberal Demokrat, David Ward, lewat akun Twitter miliknya menulis pernyataan yang membela serangan roket dari Hamas.</p>\r\n\r\n<p>&quot;The big question is - if I lived in #Gaza would I fire a rocket? - probably yes. &#39;Pertanyaan besar saat ini, apabila saya tinggal di #Gaza apakah saya akan menembakkan roket? mungkin saja iya&#39;,&quot; tulis Ward dalam akun pribadinya, seperti dikutip The Guardian, Rabu (23/7/2014).</p>\r\n\r\n<p>Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.</p>\r\n\r\n<p>Sementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.</p>\r\n\r\n<p>&quot;Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,&quot; ucap pihak Konservatif.</p>\r\n\r\n<p>Ini bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.</p>\r\n', '', 'Minggu', '2018-04-22', '11:15:29', 'hamas_inggris.jpg', '0', 'yahudi,israel,palestina,internasional,hukum', 'Y');
INSERT INTO `berita` VALUES ('659', '39', 'admin', 'Target-Target Serangan Israel di Gaza', '', '', 'targettarget-serangan-israel-di-gaza', 'N', 'Y', 'Y', '<p><strong>GAZA</strong>&nbsp;- Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.<br />\r\n<br />\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.<br />\r\n<br />\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan&nbsp;<em>Associated Press</em>, Rabu (23/7/2014).<br />\r\n<br />\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.<br />\r\n<br />\r\nKementerian Kesehatan Gaza menjelaskan, blokade telah memperburuk kualitas hidup warga yang terluka akibat konflik ini. 136 obat yang diperlukan sudah makin menipis dan diperkirakan akan habis dalam waktu beberapa hari ke depan.<br />\r\n<br />\r\nKantung kekuatan Hamas menjadi target penting yang diincar oleh Israel. Namun serangan terhadap basis kekuatan Hamas tersebut justru lebih sering menimpa warga sipil.<br />\r\n<br />\r\nHingga saat ini lebih dari 630 warga Palestina dilaporkan tewas dalam serangan yang dilakukan Israel ke Gaza. Sementara 30 warga Israel dilakukan turut tewas dalam pertempuran yang sudah berlangsung sekira 15 hari tersebut.</p>\r\n', '', 'Minggu', '2018-04-22', '11:14:45', 'target_israel.jpg', '0', 'yahudi,israel,palestina', 'Y');
INSERT INTO `berita` VALUES ('660', '39', 'admin', 'Hamas Sebut Perdana Mentri Israel Kejam Sama seperti Hitler', '', '', 'hamas-sebut-perdana-mentri-israel-kejam-sama-seperti-hitler', 'N', 'Y', 'Y', '<p><strong>GAZA&nbsp;</strong>- Pernyataan keras disampaikan Hamas kepada Israel. Faksi garis keras Palestina ini menyamakan Perdana Menteri (PM) Israel, Benjamin Netanyahu dengan pemimpin Nazi, Adolf Hitler.<br />\r\n<br />\r\nCercaan Hamas ini disampaikan oleh Juru Bicaranya Osama Hamdan. Menurut Hamdan, pernyataan ini muncul akibat&nbsp; yang dilakukan Israel kepada warga Gaza, sama persis dengan pembantaian warga Yahudi oleh Hitler.<br />\r\n<br />\r\n&quot;PM Israel sudah kehilangan moral dia adalah cerminan dari Hitler dan tentara Nazi,&quot; sebut Hamdan, seperti dikutip dari&nbsp;<em>Times of Israel</em>, Rabu (23/7/2014).<br />\r\n<br />\r\n&quot;Pasukan Israel juga berlaku sama (dengan tentara Nazi) mereka disuruh membunuh warga Palestina jika, ini sama saja dengan yang dilakukan Hitler di abad lalu,&quot; tambah dia.<br />\r\n<br />\r\nPernyataan Hamdan disampaikannya bukan tanpa alasan. Setelah Israel melancarkan agresi ke Gaza, hampir 600 warga Palestina menjadi korban jiwa kekejaman Israel.<br />\r\n<br />\r\nParahnya lagi, korban jiwa dari Palestina kebanyakan adalah bocah dan perempuan. Hal tersebut bertentangan dengan pernyataan PM Israel yang mengatakan, serangan ke Gaza ditujukan untuk menghancurkan Hamas.</p>\r\n', '', 'Minggu', '2018-04-22', '11:13:58', 'hamas.jpg', '1', 'yahudi', 'Y');
INSERT INTO `berita` VALUES ('661', '39', 'admin', 'Banyak Gereja yang Tampung Pengungsi Muslim Palestina', '', '', 'banyak-gereja-yang-tampung-pengungsi-muslim-palestina', 'N', 'Y', 'Y', '<p><strong>GAZA&nbsp;</strong>- Agresi Israel di Gaza meninggalkan duka mendalam bagi warga Palestina. Tidak hanya kehilangan nyawa, warga Palestina yang selamat harus tega melihat rumah mereka porak poranda dihancurkan Israel.<br />\r\n<br />\r\nPenduduk Palestina pun saat ini&nbsp; tinggal di tempat-tempat penampungan sementara. Salah satu tempat penampungan yang ada di Gaza adalah sebuah gereja Orthodoks Yunani, Santo Porphyrius.<br />\r\n<br />\r\nGereja ini menampung hampir 1.000 pengungsi Palestina yang mayoritas bergama Islam. Tidak hanya menyediakan tempat tinggal, Gereja Santo Porphyrius turut memberikan makanan, minuman, selimut, tempat duduk, mainan dan bahkan halaman belakang yang biasa digunakan bocah Palestina bermain sepak bola.<br />\r\n<br />\r\n&quot;Kami membuka gereja untuk menolong warga, ini sudah menjadi tugas gereja dan kami akan membantu mereka sekuat tenaga,&quot; sebut salah satu pengurus gereja, Archbishop Alexios, seperti dikutip dari&nbsp;<em>Arab News</em>, Rabu (23/7/2014).<br />\r\n<br />\r\n&quot;Awalnya ada 600 warga dan sekarang sudah ribuan, kebanyakan dari mereka adalah peremupuan, anak-anak dan orang tua yang kondisinya lemah,&quot; tambah dia.<br />\r\n<br />\r\nGereja Santo Porphyrius memang bukan tempat yang paling aman bagi pengungsi Palestina. Pasalnya, tidak lama setelah para pengungsi berdatangan, roket dari Israel menerjang daerah dekat gereja tersebut.<br />\r\n<br />\r\nNamun hal ini dapat menjadi bukti bagaimana agresi Israel tidak meruntuhkan semangat warga Palestina untuk tetap bersatu dan saling membantu tanpa memandang ras, etnis atau agama.<br />\r\n<br />\r\nSekedar informasi, warga Kristen Palestina merupakan penduduk minoritas. Jumlah mereka hanya sekitar 1.400 jiwa.&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '11:13:08', 'penduduk_palestina_sembunyi_di_gereja.jpg', '1', 'palestina', 'Y');
INSERT INTO `berita` VALUES ('662', '39', 'admin', 'Iran Dorong dan dukung Palestina Terus untuk Melawan Israel', '', '', 'iran-dorong-dan-dukung-palestina-terus-untuk-melawan-israel', 'N', 'Y', 'Y', '<p><strong>TEHERAN&nbsp;</strong>- Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel.<br />\r\n<br />\r\n&quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari&nbsp;<em>IRNA,&nbsp;</em>Kamis (24/7/2014).<br />\r\n<br />\r\nKhamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.<br />\r\n<br />\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.<br />\r\n<br />\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.</p>\r\n', 'Iran Dorong Palestina Terus Lawan Israel', 'Minggu', '2018-04-22', '11:12:16', 'menlu_palestina.jpg', '6', 'palestina', 'Y');
INSERT INTO `berita` VALUES ('664', '23', 'admin', 'Jokowi janji mati-matian akan bela Palestina jika jadi presiden', '', '', 'jokowi-janji-matimatian-akan-bela-palestina-jika-jadi-presiden', 'N', 'Y', 'Y', '<p><strong>Merdeka.com -&nbsp;</strong>Capres&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;kembali menegaskan dukungannya untuk kemerdekaan 100 persen bagi Palestina.&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;berjanji akan mati-matian membela negeri yang dijepit Israel ini.<br />\r\n<br />\r\n&quot;Kita lihat apa yang mereka butuhkan. Mereka butuh tandatangan untuk dukungan ya kita tanda tangan. Mereka butuh diplomasi ya diplomasi. Butuh kedutaan ya kita buka kedutaan,&quot; kata&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;saat bertemu relawan seluruh Jakarta di GOR Yudo, Kelapa Gading, Kamis (26/6).<br />\r\n<br />\r\n&quot;Ini dukungan tanpa reserve,&quot; tegas&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>.<br />\r\n<br />\r\nSebelumnya&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;sudah menyatakan dukungannya pada kemerdekaan Palestina.&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;juga mendukung Palestina menjadi anggota Perserikatan Bangsa-Bangsa (PBB).<br />\r\n<br />\r\n&quot;Saya dan&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/m/muhammad-jusuf-kalla/\">JK</a></strong>&nbsp;mendukung penuh Palestina menjadi negara merdeka dan mendukung penuh Palestina menjadi anggota penuh Dewan Perserikatan Bangsa-Bangsa (PBB),&quot; kata&nbsp;<strong><a href=\"http://profil.merdeka.com/indonesia/j/joko-widodo/\">Jokowi</a></strong>&nbsp;dalam pemaparan visi misi di debat capres di Hotel Holiday Inn, Kemayoran, Jakarta Pusat, Minggu (22/6).</p>\r\n\r\n<p>Bagaimana lontaran-lantaran Gubernur DKI Jakarta ini soal kebebasan Palestina dari tangan Israel. Tentu akan menarik jika kita menyaksikan secara langsung cara diplomasi yang dilakukan tokoh yang dikenal dengan blusukannya ini. Apakah Jokowi akan blusukan juga ke jalur Gaza? Atau hanya diplomasi wacana yang dilakukan para tokoh politik pada umumnya.</p>\r\n\r\n<p><span style=\"color:#c0c0c0\">Sumber :&nbsp;http://www.merdeka.com/peristiwa/jokowi-janji-mati-matian-bela-palestina.html</span></p>\r\n', '', 'Minggu', '2018-04-22', '00:10:47', 'jokowi.jpg', '3', 'nasional', 'Y');
INSERT INTO `berita` VALUES ('665', '23', 'admin', 'Risma berjanji Akan Tolak Tawaran Jadi Menteri apapun yang terjadi', '', '', 'risma-berjanji-akan-tolak-tawaran-jadi-menteri-apapun-yang-terjadi', 'N', 'Y', 'Y', '<h3>&quot;Saya tidak ingin. Saya masih punya janji, saya di Surabaya saja.&quot;</h3>\r\n\r\n<p>Wali Kota Surabaya Tri Rismaharini mengaku tidak tertarik masuk ke dalam kabinet Joko Widodo-Jusuf Kalla.&nbsp;<br />\r\n<br />\r\nRisma mengatakan masih punya janji pada warga Surabaya. Sehingga dia ingin menuntaskan janjinya memimpin Surabaya hingga berakhir.<br />\r\n<br />\r\n&quot;Tidak, tidak. Saya tidak ingin (masuk kabinet). Saya masih punya janji, saya di Surabaya saja,&quot; kata Risma, Kamis 24 Juli 2014.<br />\r\n<br />\r\nHingga saat ini pun Risma mengaku belum mendapatkan tawaran apa pun untuk masuk dalam kabinet Jokowi-JK. Menurut Risma, selama bertemu dengan pimpinan partai, tak ada perbincangan soal kabinet.<br />\r\n<br />\r\nNamun dia menegaskan kalaupun ada tawaran, dia tetap akan menuntaskan janjinya pada masyarakat Surabaya. &quot;Kalau nanti ada yang&nbsp;<em>nawari</em>, ya nanti saja,&quot; ujarnya.<br />\r\n<br />\r\nDi media sosial Facebook muncul polling nama-nama untuk duduk di kabinet Jokowi-JK. Salah satunya Tri Rismaharini. Wali Kota Surabaya itu ditempatkan sebagai Menteri Pendayagunaan Aparatur Negara dan Reformasi Birokrasi.<br />\r\n<br />\r\nPolling itu diakui Jokowi untuk meminta masukan kepada masyarakat terkait siapa-siapa saja yang tepat untuk mengisi kabinetnya lima tahun ke depan.</p>\r\n\r\n<p>Sumber :&nbsp;http://politik.news.viva.co.id/news/read/524505-jabatan-belum-tuntas--risma-akan-tolak-tawaran-jadi-menteri/</p>\r\n', '', 'Minggu', '2018-04-22', '00:09:45', 'Tri-Rismaharin.jpg', '2', 'nasional', 'Y');
INSERT INTO `berita` VALUES ('666', '19', 'admin', 'Pentax Q-S1 Kamera Mirorless Style Retro', '', '', 'pentax-qs1-kamera-mirorless-style-retro', 'N', 'Y', 'N', '<p>Q-S1 ini menawarkan ISO sampai 12,800 dengan kecepatan shutter sampai 1/2000 detik , selain itu kamera kompak ini pun menyertakan sensor gyro untuk mengurangi efek getaran atau goyangan. Kamera kompak retro ini pun mampu merekam video FULL HD dengan kecepatan 30fps dan mendukung 8 lensa yang kompatibel dengan Q-mount.</p>\r\n\r\n<p>Ada juga fungsi efek digital filter sebanyak 17 buah untuk menghasilkan efek bokeh, plus ada tambahan 21 mode adegan/scene serta mode 11 custom image. Layar LCDnya berukuran 3 inci beresolusi 460K dengan teknologi anti pantulan dan mendukung 170 derajat sudut pandang.</p>\r\n\r\n<p>Sayangnya kamera ini masih belum mendukung Wi-Fi yang mulai dibutuhkan untuk kemudahan berbagai foto.</p>\r\n\r\n<p>Q-S1 akan tersedia pada awal September 2014 dengan harga sekitar 500 USD untuk body saja dan 637 USD untuk kit dengan lensa 5-15mm.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:53:46', 'cannon.png', '2', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('667', '19', 'admin', 'Apple iWatch Bakal Dirilis Bulan Depan', '', '', 'apple-iwatch-bakal-dirilis-bulan-depan', 'N', 'Y', 'N', '<p>iWatch yang sudah lama dinanti-nanti oleh banyak pihak bakal secara resmi diluncurkan. Salah satu orang yang punya reputasi bagus dalam membocorkan informasi produk Apple, John Gruber, menyatakan bahwa iWatch akan direlease bulan depan.</p>\r\n\r\n<p>Peryataan seorang publisher asal Philadelphia ini memang dipercaya banyak orang sebagai kebenaran. Pasalnya, Apple akan menggelar event pada 9 September mendatang. Kemungkinan besar, iPhone 6 sekaligus iWatch bakal secara resmi direlease pada saat yang bersamaan saat itu juga. Keihatannya, Apple benar-benar sibuk untuk menyiapkan dua produk ini mengingat persaingann yang semakin berat. Dengan meluncurkan dua produk sekaligus, diharapkan bakal mendobrak pasar dan menciptakan momentum positif.</p>\r\n\r\n<p>Smartwatch ini diprediksi akan direlease dengan inovasi yang &ldquo;out of the box&rdquo; cirikhas Apple. iWatch diberitakan bakal menggunakan beberapa sensor yang dapat metrik-metrik kesehatan, seperti tingkat tekanan darah, tingkat denyut jantung atau bahkan tingkat gula darah si pengguna. Meski begitu, masih menjadi pernyataan bagaimana kualitas sistem internet yang ada pada iWatch.</p>\r\n', '', 'Sabtu', '2018-04-21', '23:49:09', 'iwatch.jpg', '3', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('668', '41', 'admin', 'ROBOT Kecil Cikal Bakal Transformer segera relase untuk anak', '', '', 'robot-kecil-cikal-bakal-transformer-segera-relase-untuk-anak', 'N', 'Y', 'Y', '<p>Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah. Nah tapi jangan pernah berpikir kalau Transformer tidak mungkin terwujud di masa depan karena banyak film fiksi yang menjadi non fiksi berkat kecanggihan teknologi. Nah kali ini ada robot kecil yang mampu menampilkan kemampuan berubah diri dengan konsep lipatan karena terinspirasi dari ORIGAMI (seni melipat kertas Jepang) dan proses biologi.</p>\r\n\r\n<p>Walau robot yang Anda lihat ini bukan seperti robot keren seperti Transformer tapi robot origami hasil ciptaan periset dari MIT dan Harvard ini mampu merubah bentuk dari robot yang &ldquo;datar&rdquo; seperti kertas menjadi bentuk aslinya dengan empat kaki yang bisa berjalan.</p>\r\n\r\n<p>Desain robot ini juga terpinspirasi dari proses biologi seperti bagaimana amino acid membentuk protein dari struktur datar menjadi coil tiga dimensi.</p>\r\n\r\n<p>Robot ini memulai berubah bentuk saat panas diaplikasikan pada &ldquo; Shrinky dinks&rdquo; (nama material yang digunakan) sebagai bagian dari materi kertas komposit yang digunakan pada tubuh robot ini. Memang tampilan robot ini sangat sederhana dan tidak menarik karena memang robot ini menggunakan bahan yang sangat murah dan mereka ingin menghasilkan prototipe pertama untuk konsep transformasi robot yang mereka pikirkan dalam waktu yang singkat.</p>\r\n', '', 'Minggu', '2018-04-22', '07:35:07', 'Transformers.jpg', '7', 'teknologi', 'Y');
INSERT INTO `berita` VALUES ('669', '31', 'admin', '5 Buah Penangkal Racun dalam Tubuh', '', '', '5-buah-penangkal-racun-dalam-tubuh', 'N', 'Y', 'N', '<p>Setiap hari tubuh memproduksi racun yang berasal dari udara yang dihirup dan makanan yang dikonsumsi. Akhirnya, racun pun memengaruhi kesehatan kita. Kulit mengalami kerusakan, pencernaan yang bermasalah, sampai ketidakseimbangan hormon, merupakan akibat dari racun yang ada di dalam tubuh.<br />\r\n<br />\r\nMaka itu, untuk membersihkan racun-racun dalam tubuh (detoksifikasi), dianjurkan untuk mengonsumsi beberapa jenis buah yang memiliki peran besar untuk hal ini.&nbsp;<br />\r\n<br />\r\nLemon kaya akan vitamin C, yang membantuh tubuh memproduksi glutation. Glutation adalah antioksidan yang membantu membuang racun yang ada di hati. Minum air lemon setiap hari, membantu mendetoksifikasi hati Anda. Selain sistem kekebalan yang baik, pencernaan pun turut merasakan manfaatnya.</p>\r\n\r\n<p>Buah nanas tidak hanya mengandung vitamin C, tapi juga mengandung enzim bromelain. Enzim ini dapat menenangkan dan membersihkan usus dari racun. Hal ini juga dikenal sebagai anti-inflamasi yang kuat, yang dapat membantu mengurangi rasa sakit akibat peradangan.</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '07:28:10', 'buah_penangkal.jpg', '0', 'kesehatan', 'Y');
INSERT INTO `berita` VALUES ('670', '31', 'admin', '7 Efek Buruk dari Konsumsi Obat Tidur', '', '', '7-efek-buruk-dari-konsumsi-obat-tidur', 'N', 'Y', 'N', '<p>Konsumsi obat tidur kerap dipilih bagi mereka yang mengalami kesulitan tidur atau insomnia. Mereka berpikir bahwa obat tidur mampu memberikan apa yang diinginkan, yaitu tidur dengan lelap. Namun kenyataannya, obat tidur tidak dapat mengobati kondisi tersebut, bahkan hanya memperburuk masalah saja.&nbsp;<br />\r\n<br />\r\nDi bawah ini beberapa jenis masalah terkait dengan pil tidur dan penggunaan yang terlalu berlebihan, seperti dikutip&nbsp;<em>Health Me Up</em>, Senin (11/8/2014):</p>\r\n\r\n<p>1. Efek samping dari obat tidur dapat membuat orang yang meminumnya merasa lupa, merasa pusing, bingung, dan sulit untuk berpikir keesokan harinya.</p>\r\n\r\n<p>2. Berlebihan dalam mengonsumsinya, akan memaksa Anda untuk meningkatkan asupannya agar Anda benar-benar tertidur. Sudah jelas, akan menimbulkan efek samping yang lebih besar.</p>\r\n\r\n<p>3. Terlalu sering mengonsumsi obat tidur akan membuat Anda ketergantungan yang berkepanjangan. Tidur lelap secara alami, tampaknya hanya mimpi yang jauh dari angan, yang hanya akan membuat Anda mengalami sulit tidur dan kerap merasa cemas.</p>\r\n\r\n<p>4. Jika Anda berhenti mengonsumsinya, secara perlahan tubuh akan menggigil, berkeringat, dan mual.</p>\r\n\r\n<p>5. Anda harus tahu bahwa obat tidur akan memengaruhi proses dari obat jenis lainnya yang sedang Anda konsumsi. Apakah itu obat pusing, demam, dan lain-lain.</p>\r\n\r\n<p>6. Kondisi akan semakin parah, saat Anda menggabungkannya dengan obat penghilang rasa sakit atau obat penenang.</p>\r\n\r\n<p>7. Anda harus menyadari bahwa masalah tidur mungkin menjadi pemicu terjadinya beberapa penyakit kesehatan mental, yang mendasari terjadinya gangguan tidur. Dan obat tidak selalu menjadi pilihan yang tepat.</p>\r\n', '', 'Minggu', '2018-04-22', '07:27:03', 'obat.png', '0', 'kesehatan', 'Y');
INSERT INTO `berita` VALUES ('671', '23', 'admin', 'Ahli Kejiwaan pribadi Sebut Marshanda sungguh Keterlaluan', '', '', 'ahli-kejiwaan-pribadi-sebut-marshanda-sungguh-keterlaluan', 'N', 'Y', 'Y', '<p>LEWAT sebuah video berjudul &ldquo;The Truth Part #1&rdquo; yang diunggah ke Youtube Kamis (7/8) malam, Marshanda muncul menjelaskan insiden penjemputan paksa yang dia alami pada 26 Juli 2014 lalu.</p>\r\n\r\n<p>Saat itu, saat sedang berada di kamar apartemennya, Caca--sapaan akrabnya--mengaku didatangi oleh tak kurang dari 7 orang. Mereka terdiri dari 3&nbsp;petugas dari rumah sakit jiwa, petugas kepolisian, petugas keamanan apartemen, serta pengurus apartemen.</p>\r\n\r\n<p>Pada kesempatan itu, menurut Caca, perawat laki-laki dan perempuan memaksa dirinya untuk disuntuk dan dibawa ke rumah sakit untuk diopname.</p>\r\n\r\n<p>&ldquo;Aku enggak terima dan dengan hormat meminta mereka untuk keluar dari apartemen aku. Kareka aku sudah merasa enggak nyaman,&rdquo; bilang ibu satu anak itu.</p>\r\n\r\n<p>Namun sang perawat tetap pada pendiriannya dan kemudian menelepon dr. Richard Budiman, dokter ahli kejiwaan yang selama ini menangani Caca. Telepon itu kemudian diberikan kepada Caca.</p>\r\n\r\n<p>&ldquo;dr. Richard bilang, &#39;Ca, beberapa hari ini kamu sudah keterlaluan lho, Ca. Sudah banyak tindakan kamu yang keluar jalur, sudah banyak diomongin di TV&#39;,&rdquo; Caca menirukan apa yang dikatakan dr. Richard di seberang telepon.</p>\r\n\r\n<p>&ldquo;Saya enggak nangkap apa yang disebut keluar jalur secara psikis. Akhirnya saya bilang, yasudah dok, saya telepon pengacara saya dulu deh,&rdquo; lanjutnya.</p>\r\n\r\n<p>Usaha Caca untuk menghubungi pengacara OC Kaligis saat itu sia-sia. Teleponnya tak diangkat. Karena terus didesak, bintang sinetron &ldquo;Bidadari&rdquo; itu akhirnya pasrah menerima suntikan di lengan kanan dan kirinya.</p>\r\n', '', 'Minggu', '2018-04-22', '00:08:00', 'marshanda.jpg', '4', 'selebritis,metropolitan', 'Y');
INSERT INTO `berita` VALUES ('672', '2', 'admin', '3 Cewek K-Pop Paling Hot Jalan Bersama', '', '', '3-cewek-kpop-paling-hot-jalan-bersama', 'N', 'Y', 'Y', '<p>Sudah banyak line seangkatan yang jadi perbincangan pecinta K-Pop. Tiap line punya keunikam masing-masing karena berisi artis idola dari boyband atau girlband populer.&nbsp;</p>\r\n\r\n<p>Tapi dari sekian pertemuan &nbsp;istimewa sesama idola, pertemuan 3 idola paling &quot;panas&quot; di industri hiburan K-Pop ini layak jadi pembicaraan. Ya, Soyu &quot;SISTAR&quot;, Min &quot;Miss A&quot;, dan Nicole eks. &quot;KARA&quot; secara mengejutkan &nbsp;memperlihatkan persahabatan<br />\r\nmereka.</p>\r\n\r\n<p>Min yang membocorkan pertemuan itu lewat akun Instagramnya, Rabu (6/8). Min mengunggah foto mereka bertiga sedang hangout bareng. Meski tak ada komentar, bukti foto adalah segalahnya. Dalam foto tampak mereka melakukan selfie saat sedang hangout bareng.&nbsp;</p>\r\n\r\n<p>Ketiganya saat ini sedang sibuk-sibuknya. Min tengah mempersiapkan konser JYP Nation, ONE MIC, Nicole tengah bertlatih untuk karier solonya, sedang Soyu sedang mempromosikan single baru SISTAR, Touch My Body. Min dan Nicole dikenal sebagai line &#39;91, namun selama ini diketahui paling akrab dengan Key &quot;SHINee&quot; dam Jinwoon &quot;2AM&quot;.&nbsp;</p>\r\n\r\n<p>Sedang Soyu sendiri saat ini anggota girlband paling sukses dengan single solonya. Menarik melihat pertemuan-pertemuan geng baru cewek ini.&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '10:55:21', 'kpop.jpg', '37', 'selebritis,internasional', 'Y');
INSERT INTO `berita` VALUES ('673', '23', 'admin', 'Dukungan penuh dari Orang tua Bagi Karier Jessica Mila', '', '', 'dukungan-penuh-dari-orang-tua-bagi-karier-jessica-mila', 'N', 'Y', 'N', '<p>Kelangsungan karier&nbsp;<a href=\"http://www.tabloidbintang.com/profile/jessica-mila\">Jessica Mila</a>&nbsp;tak lepas dari dukungan mendiang sang ayah, Bambang Sutejo, yang meninggal pada 3 Mei 2014, dalam usia 62 tahun.&nbsp;</p>\r\n\r\n<p>&quot;Papa sangat support karierku. Papa, apa pun yang aku lakukan, selalu support. Kuliahku, juga karierku, selalu support,&quot; tandasnya.&nbsp;</p>\r\n\r\n<p>Dukungan serupa ditunjukkan ibunda Mila, M. Baker. Merasa tak ada teman di rumah, ia kerap menemani Mila di lokasi syuting.&nbsp;</p>\r\n\r\n<p>&quot;Daripada di rumah, katanya mending Mama menemaniku. Bukan aku yang minta, Mama sendiri yang mau. Aku malah kasihan, Mama capek. Tapi Mama keukeuh, katanya enggak capek. Dia bilang, kalau menungguku, kan bisa tidur di mobil,&quot; cerita Mila.&nbsp;</p>\r\n', '', 'Minggu', '2018-04-22', '00:05:33', 'jessicamila.jpg', '5', 'selebritis', 'Y');
INSERT INTO `berita` VALUES ('685', '2', 'admin', 'Crutchlow Finis di Posisi 19 MotoGP Amerika Serikat ', '', '', 'crutchlow-finis-di-posisi-19-motogp-amerika-serikat-', 'N', 'N', 'N', '<p><strong>AUSTIN&nbsp;</strong>&ndash; Pembalap Tim LCR Honda, Cal Crutchlow, harus menelan hasil yang buruk di seri ketiga MotoGP 2018 yang digelar di Circuit of the America (COTA), Austin, Amerika Serikat, pada Senin (23/4/2018) dini hari WIB. Crutchlow pun membeberkan penyebabnya finis di posisi ke-19 MotoGP Amerika Serikat 2018.</p>\r\n\r\n<p>Menurut Crutchlow, hasil minor ini didapatkan karena dirinya terjatuh saat melakoni balapan tersebut. Insiden ini terjadi di lap-lap awal ketika Crutchlow tengah berusaha merebut posisi pembalap di depannya.</p>\r\n\r\n<p>Crutchlow harus terjatuh ketika tengah memperebutkan posisi keenam bersama Johann Zarco dan Dani Pedrosa. Usahanya saat itu tak berjalan mulus karena laju motornya yang tak stabil sehingga Crutchlow harus terjatuh dan keluar jalur.</p>\r\n\r\n<p>Beruntung, Crutchlow bisa bangkit kembali dan melanjutkan balapan hingga garis finis. Meski begitu, dirinya tak bisa merebut kembali posisi terdepan dan harus puas finis di urutan ke-19 dengan catatan waktu 42 menit 51,057 detik.</p>\r\n\r\n<p>Rekan setim Takaaki Nakagami itu mengaku insiden ini terjadi karena dirinya salah memilih ban. Ban keras yang digunakan Crutchlow saat race di MotoGP Amerika Serikat ternyata membuat laju kendaraannya tak dapat maksimal. Alhasil, dirinya pun harus terjatuh saat tengah memperebutkan posisi terdepan.</p>\r\n\r\n<p>&quot;Saya merasa telah tampil dengan baik, tetapi saya membuat kesalahan, saya terjatuh. Sejujurnya, saya mampu untuk finis kedua atau ketiga dalam perlombaan ini, tetapi saya jatuh di tikungan terakhir,&rdquo; ujar Crutchlow, sebagaimana dikutip dari Speedweek, Senin (23/4/2018).</p>\r\n', 'Cal Crutchlow', 'Selasa', '2018-04-24', '01:30:53', 'crutchlowjpg.jpg', '3', 'olahraga,hiburan', 'Y');

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id_download` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL,
  PRIMARY KEY (`id_download`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES ('11', 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', '8');
INSERT INTO `download` VALUES ('12', 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', '68');
INSERT INTO `download` VALUES ('13', 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', '34');
INSERT INTO `download` VALUES ('14', 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', '24');
INSERT INTO `download` VALUES ('15', 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', '3');
INSERT INTO `download` VALUES ('16', 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', '90');
INSERT INTO `download` VALUES ('17', 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', '14');
INSERT INTO `download` VALUES ('18', 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', '5');
INSERT INTO `download` VALUES ('19', 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', '90');
INSERT INTO `download` VALUES ('20', 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', '33');
INSERT INTO `download` VALUES ('21', 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', '57');
INSERT INTO `download` VALUES ('22', 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', '44');
INSERT INTO `download` VALUES ('23', 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', '24');
INSERT INTO `download` VALUES ('24', 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', '12');
INSERT INTO `download` VALUES ('25', 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', '3');
INSERT INTO `download` VALUES ('26', 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', '24');
INSERT INTO `download` VALUES ('27', 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', '6');

-- ----------------------------
-- Table structure for gallery
-- ----------------------------
DROP TABLE IF EXISTS `gallery`;
CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL AUTO_INCREMENT,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_gallery`)
) ENGINE=MyISAM AUTO_INCREMENT=261 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of gallery
-- ----------------------------
INSERT INTO `gallery` VALUES ('238', '30', 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', '');
INSERT INTO `gallery` VALUES ('237', '30', 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', '');
INSERT INTO `gallery` VALUES ('240', '31', 'admin', 'Doa Bersamaaa', 'doa-bersamaaa', '<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.cbcvb</p>\r\n', '');
INSERT INTO `gallery` VALUES ('239', '30', 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', '');
INSERT INTO `gallery` VALUES ('236', '30', 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', '');
INSERT INTO `gallery` VALUES ('235', '30', 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', '');
INSERT INTO `gallery` VALUES ('234', '30', 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', '');
INSERT INTO `gallery` VALUES ('232', '29', 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', 'sdasdasd', '');
INSERT INTO `gallery` VALUES ('233', '30', 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', '');
INSERT INTO `gallery` VALUES ('231', '29', 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', '');
INSERT INTO `gallery` VALUES ('230', '29', 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', '');
INSERT INTO `gallery` VALUES ('229', '29', 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', '');
INSERT INTO `gallery` VALUES ('228', '29', 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', '');
INSERT INTO `gallery` VALUES ('227', '29', 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', '');
INSERT INTO `gallery` VALUES ('225', '29', 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', '');
INSERT INTO `gallery` VALUES ('226', '29', 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', '');
INSERT INTO `gallery` VALUES ('224', '28', 'admin', 'Favorit', 'favorit', 'Mainan adalah barang favorit yang senantiasa diburu para pembeli. Selain murah, pilihannya pun berbagai jenis.\r\n', '');
INSERT INTO `gallery` VALUES ('223', '28', 'admin', 'Suasana Pasar Asemka', 'suasana-pasar-asemka', 'Pasar Asemka, Jakarta, merupakan pasar grosir yang banyak menyediakan berbagai aksesoris seperti kalung, cincin, Souvenir pernakahan, dan lainnya. Di Pasara Asemka anda akan dimanjakan dengan beragam barang yang dibandrol dengan harga murah meriah dan biasanya dijual grosiran.<br />\r\n', '');
INSERT INTO `gallery` VALUES ('222', '28', 'admin', 'Petasan', 'petasan', 'Petasan aneka jenis juga dijajakan di Pasar Asemka, Jakarta.\r\n', '');
INSERT INTO `gallery` VALUES ('221', '28', 'admin', 'Merah Marun', 'merah-marun', 'Salah satu suvenir pernikahan nan cantik yang dijual di Pasar Asemka, Jakarta.\r\n', '');
INSERT INTO `gallery` VALUES ('220', '28', 'admin', 'Menata Cincin', 'menata-cincin', 'Seorang pedagang cincin aksesoris sedang merapihkan letak cincin agar lebih menarik di Pasar Asemka, Jakarta.\r\n', '');
INSERT INTO `gallery` VALUES ('219', '28', 'admin', 'Suvenir', 'suvenir', 'Aneka Souvenir Pernikahan yang dijual di Pasar Asemka, Jakarta.\r\n', '');
INSERT INTO `gallery` VALUES ('218', '28', 'admin', 'Seorang Wanita Pedagang', 'seorang-wanita-pedagang', 'Seorang wanita sedang menunggu kios aksesorisnya.\r\n', '');
INSERT INTO `gallery` VALUES ('217', '28', 'admin', 'Suasana Pasar', 'suasana-pasar', 'Suasana di Pasar Asemka yang senantiasa ramai. Dan pengunjung bebas memilih berbagai jenis aksesoris.\r\n', '');
INSERT INTO `gallery` VALUES ('216', '28', 'admin', 'Pedagang', 'pedagang', 'Seorang pedagang sedang membungkus souvenir penikahan yang akan dijual ataupun pesanan dari pelanggangnnya.\r\n', '');
INSERT INTO `gallery` VALUES ('254', '1', 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', '');

-- ----------------------------
-- Table structure for halamanstatis
-- ----------------------------
DROP TABLE IF EXISTS `halamanstatis`;
CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_halaman`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of halamanstatis
-- ----------------------------
INSERT INTO `halamanstatis` VALUES ('46', 'Tentang Kami Tunggul News', 'tentang-kami-tunggul-news', '<p>Tunggul.com merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Tunggul.com diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\n<p>Konten berita Tunggul.com ditulis secara tajam, singkat, padat, dan dinamis sebagai respons terhadap tuntutan masyarakat yang semakin efisien dalam membaca berita. Selain itu konsep portal berita online juga semakin menjadi pilihan masyarakat karena sifatnya yang up-to-date dan melaporkan kejadian peristiwa secara instant pada saat itu juga sehingga masyarakat tidak perlu menunggu sampai esok harinya untuk membaca berita yang terjadi.</p>\n<p>Tunggul.com resmi diluncurkan (Commercial Launch) sebagai portal berita pada 1 Maret 2007) dan merupakan cikal-bakal bisnis online pertama milik PT Php MU Tbk, sebuah perusahan media terintegrasi yang terbesar di Indonesia dan di Asia Tenggara. PHPMU juga memiliki dan mengelola bisnis media TV (RCTI, MNC TV, Global TV), media cetak (Koran Seputar Indonesia, Tabloid Genie, Tabloid Mom &amp; Kiddie, majalah HighEnd, dan Trust), media radio (SINDO, Trijaya FM, ARH Global, Radio Dangdut Indonesia, V Radio), serta sejumlah bisnis media lainnya (mobile VAS, Manajemen artis, rumah produksi film, agen iklan, dll).</p>\n<p>Sampai dengan bulan Oktober 2008, Tunggul.com mendapatkan peringkat ke 24 dari Top 100 website terpopuler di Indonesia (Sumber: Alexa.com), peringkat ini terus naik yang disebabkan semakin banyak pengunjung situs yang mengakses Tunggul.com setiap harinya. Selain itu, jumlah pengguna internet yang mencapai 25 juta (Sumber: data APJII per 2005) diperkirakan untuk terus tumbuh dengan signifikan dalam beberapa tahun ke depan.</p>', '2014-04-07', '', 'admin', '55', '13:10:57', 'Senin');
INSERT INTO `halamanstatis` VALUES ('48', 'Alamat Perusahaan', 'alamat-perusahaan', '<p>Tunggul.com merupakan portal online berita dan hiburan yang berfokus pada pembaca Indonesia baik yang berada di tanah air maupun yang tinggal di luar negeri. Berita Tunggul.com diupdate selama 24 jam dan mendapatkan kunjungan lebih dari 190 juta pageviews setiap bulannya (Sumber: Google Analytics).</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n\r\n<p>Tunggul.com memiliki beragam konten dari berita umum, politik, peristiwa, internasional, ekonomi, lifestyle, selebriti, sports, bola, auto, teknologi, dan lainya. Tunggul juga merupakan salah satu portal pertama yang memberikan inovasi konten video dan mobile (handphone). Para pembaca kami adalah profesional, karyawan kantor, pengusaha, politisi, pelajar, dan ibu rumah tangga.</p>\r\n', '2014-04-07', '', 'admin', '29', '13:32:28', 'Senin');
INSERT INTO `halamanstatis` VALUES ('52', 'Rekening Pembayaran', 'rekening-pembayaran', '<div>\r\n<div style=\"-webkit-border-radius:5px; background-image:linear-gradient(#f2f2f2, #dddddd); border-radius:5px; border:0px solid #c1c1c1; box-shadow:0px 1px 5px rgba(0, 0, 0, 0.5); max-width:400px; padding:10px; width:auto\">\r\n<p>Silahkan pilih satu diantara metode pembayaran berikut ini:</p>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<table align=\"center\" border=\"0\" style=\"margin-top:-70px; width:98%\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<div style=\"-webkit-border-radius:5px; background-image:linear-gradient(#f2f2f2, #dddddd); border-radius:5px; border:0px solid #c1c1c1; box-shadow:0px 1px 4px rgba(0, 0, 0, 0.5); max-width:200px; padding:8px; width:auto\">\r\n			<p><img alt=\"BNI\" src=\"https://i.imgur.com/dREpfHv.png\" style=\"height:30px; width:90px\" /><br />\r\n			<span style=\"font-size:small\"><strong>0321 443 697</strong><br />\r\n			A.n. ABDUL GOFUR</span></p>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div style=\"-webkit-border-radius:5px; background-image:linear-gradient(#f2f2f2, #dddddd); border-radius:5px; border:0px solid #c1c1c1; box-shadow:0px 1px 4px rgba(0, 0, 0, 0.5); max-width:200px; padding:8px; width:auto\">\r\n			<p><img alt=\"OVO\" src=\"https://i.imgur.com/sPxUU5H.png\" style=\"height:30px; width:90px\" /><br />\r\n			<span style=\"font-size:small\"><strong>0838 1557 7924</strong><br />\r\n			A.n. ABDUL GOFUR</span></p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<div style=\"-webkit-border-radius:5px; background-image:linear-gradient(#f2f2f2, #dddddd); border-radius:5px; border:0px solid #c1c1c1; box-shadow:0px 1px 4px rgba(0, 0, 0, 0.5); max-width:200px; padding:8px; width:auto\">\r\n			<p><img alt=\"GOPAY\" src=\"https://i.imgur.com/l5tIh02.png\" style=\"height:30px; width:90px\" /><br />\r\n			<span style=\"font-size:small\"><strong>0838 1557 7924</strong><br />\r\n			A.n. ABDUL GOFUR</span></p>\r\n			</div>\r\n			</td>\r\n			<td>\r\n			<div style=\"-webkit-border-radius:5px; background-image:linear-gradient(#f2f2f2, #dddddd); border-radius:5px; border:0px solid #c1c1c1; box-shadow:0px 1px 4px rgba(0, 0, 0, 0.5); max-width:200px; padding:8px; width:auto\">\r\n			<p><img alt=\"KLIK AJA\" src=\"https://i.imgur.com/Yj70G0O.png\" style=\"height:30px; width:90px\" /><br />\r\n			<span style=\"font-size:small\"><strong>0838 1557 7924</strong><br />\r\n			A.n. ABDUL GOFUR</span></p>\r\n			</div>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<div>\r\n<div style=\"-webkit-border-radius:5px; background-image:linear-gradient(#f2f2f2, #dddddd); border-radius:5px; border:0px solid #c1c1c1; box-shadow:0px 1px 5px rgba(0, 0, 0, 0.5); max-width:400px; padding:10px; width:auto\"><strong>Harap diperhatikan ketentuan pembayaran berikut ini :</strong>\r\n\r\n<h5>Pastikan jumlah pembayaran sesuai dengan nominal belanja berikut kode unik yang tertera untuk memudahkan proses verifikasi.<br />\r\nNo rekening diatas adalah no resmi kami, selain yang tertera diatas kami tidak bertanggung jawab.<br />\r\nMasa berlaku pembayaran 12 jam dari di mulainya pesananan anda.<br />\r\nSecara otomatis pesanan akan dibatalkan apabila melewati jangka waktu yang telah ditentukan dan anda dapat melakukan pemesanan kembali.<br />\r\nSilahkan konfirmasi pembayaran untuk memudahkan proses verifikasi data pembayaran pesanan.<br />\r\nSetelah melakukan konfirmasi, secara otomatis proses packing dan pengiriman pesanan akan dilakukan.<br />\r\nKirim bukti transfer anda pada menu yang telah disediakan pada aplikasi.</h5>\r\n</div>\r\n</div>\r\n<!-- END -->', '2020-06-21', '', 'admin', '1', '20:30:04', 'Minggu');

-- ----------------------------
-- Table structure for header
-- ----------------------------
DROP TABLE IF EXISTS `header`;
CREATE TABLE `header` (
  `id_header` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_header`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of header
-- ----------------------------
INSERT INTO `header` VALUES ('31', 'Header3', '', 'header3.jpg', '2011-04-06');
INSERT INTO `header` VALUES ('32', 'Header2', '', 'header1.jpg', '2011-04-06');
INSERT INTO `header` VALUES ('33', 'Header1', '', 'header2.jpg', '2011-04-06');

-- ----------------------------
-- Table structure for hubungi
-- ----------------------------
DROP TABLE IF EXISTS `hubungi`;
CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `lampiran` varchar(255) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_hubungi`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of hubungi
-- ----------------------------
INSERT INTO `hubungi` VALUES ('39', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-23', '21:56:12', 'Y', '');
INSERT INTO `hubungi` VALUES ('35', 'yusri renor', 'aciafifah@gmail.com', 'pertanyaan', 'bagaimana cara mengunduh nomor ujian fak. pertanian', '2014-01-19', '00:00:00', 'Y', '');
INSERT INTO `hubungi` VALUES ('36', 'Lusi Rahmawati', 'robby.prihandaya@gmail.com', 'xvgxcvxc', 'gbvibviubuibiub', '2014-07-02', '00:00:00', 'Y', '');
INSERT INTO `hubungi` VALUES ('38', 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Ip Pengirim : 120.177.28.244', 'Silahkan menghubungi kami melalui private message melalui form yang berada pada bagian kanan halaman ini. Kritik dan saran Anda sangat penting bagi kami untuk terus meningkatkan kualitas produk dan layanan yang kami berikan kepada Anda.', '2015-06-02', '00:00:00', 'Y', '');
INSERT INTO `hubungi` VALUES ('40', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '::1', 'Kami memiliki komitmen untuk memberikan layanan terbaik kepada Anda dan selalu berusaha untuk menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami, Anda dapat menyampaikan kritik dan saran Anda kepada kami. Kami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.', '2017-01-25', '09:54:45', 'Y', '');
INSERT INTO `hubungi` VALUES ('41', 'Robby Prihandaya', 'todaynews.co.id@gmail.coms', '::1', 'asdasdasd', '2018-05-04', '19:33:01', 'Y', '');

-- ----------------------------
-- Table structure for identitas
-- ----------------------------
DROP TABLE IF EXISTS `identitas`;
CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL AUTO_INCREMENT,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL,
  PRIMARY KEY (`id_identitas`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of identitas
-- ----------------------------
INSERT INTO `identitas` VALUES ('1', 'Swarakalibata Tunggul News Full Color', 'robby.prihandaya@gmail.com', 'http://localhost/swarakalibata_ci', 'https://www.facebook.com/robbyprihandaya, https://twitter.com/robbyprihandaya, https://plus.google.com/106633506064864167239, https://id.linkedin.com/', '3511887071', '081267771344', 'Menyajikan berita terbaru, tercepat, dan terpercaya seputar tunggul hitam.', 'Selamat datang di CMS Swarakalibata, adalah penyempurnaan dan perbaikan dari swarakalibata sebelumnya.', 'favicon.ico', 'https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d3989.3358607198243!2d100.35483479999999!3d-0.8910373999999999!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2fd4b8aa1a4e0441%3A0x3f81ebb48d31a38b!2sTunggul+Hitam%2C+Padang+Utara%2C+Kota+Padang%2C+Sumatera+Barat+25173!5e0!3m2!1sid!2sid!4v1408275531365');

-- ----------------------------
-- Table structure for iklanatas
-- ----------------------------
DROP TABLE IF EXISTS `iklanatas`;
CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_iklanatas`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of iklanatas
-- ----------------------------
INSERT INTO `iklanatas` VALUES ('40', 'Iklan atas 1', 'admin', 'https://members.phpmu.com/', '1.jpg', '2019-03-26');
INSERT INTO `iklanatas` VALUES ('41', 'Iklan atas 2', 'admin', 'https://members.phpmu.com/', '2.jpg', '2019-03-26');
INSERT INTO `iklanatas` VALUES ('42', 'Iklan atas 3', 'admin', 'https://members.phpmu.com/', '3.jpg', '2019-03-26');
INSERT INTO `iklanatas` VALUES ('43', 'Iklan atas 4', 'admin', 'https://members.phpmu.com/', '4.jpg', '2019-03-26');
INSERT INTO `iklanatas` VALUES ('44', 'Iklan atas 5', 'admin', 'https://members.phpmu.com/', '5.jpg', '2019-03-26');

-- ----------------------------
-- Table structure for iklantengah
-- ----------------------------
DROP TABLE IF EXISTS `iklantengah`;
CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_iklantengah`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of iklantengah
-- ----------------------------
INSERT INTO `iklantengah` VALUES ('1', 'Iklan Home No 1', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-17');
INSERT INTO `iklantengah` VALUES ('2', 'Iklan Home No 2', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-17');
INSERT INTO `iklantengah` VALUES ('3', 'Iklan Home No 3', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-17');
INSERT INTO `iklantengah` VALUES ('4', 'Iklan Bawah Detail Berita', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-17');
INSERT INTO `iklantengah` VALUES ('5', 'Iklan dibawah Detail Video', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-18');
INSERT INTO `iklantengah` VALUES ('6', 'Iklan dibawah Detail Berita Foto', 'admin', 'http://phpmu.com', 'home.swf', '2015-03-19');
INSERT INTO `iklantengah` VALUES ('7', 'Iklan dibawah Halaman Download', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-17');
INSERT INTO `iklantengah` VALUES ('8', 'Iklan dibawah detail agenda', 'admin', 'http://phpmu.com', 'home.jpg', '2015-03-21');
INSERT INTO `iklantengah` VALUES ('9', 'Iklan dibawah halaman statis', 'admin', 'http://phpmu.com', '', '2015-03-21');

-- ----------------------------
-- Table structure for katajelek
-- ----------------------------
DROP TABLE IF EXISTS `katajelek`;
CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL AUTO_INCREMENT,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_jelek`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of katajelek
-- ----------------------------
INSERT INTO `katajelek` VALUES ('4', 'sex', '', 's**');
INSERT INTO `katajelek` VALUES ('2', 'bajingan', '', 'b*******');
INSERT INTO `katajelek` VALUES ('3', 'bangsat', '', 'b******');
INSERT INTO `katajelek` VALUES ('5', 'fuck', 'admin', 'f**k');
INSERT INTO `katajelek` VALUES ('6', 'pantat', 'admin', 'p****t');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES ('19', 'Teknologi', '', 'teknologi', 'Y', '2');
INSERT INTO `kategori` VALUES ('2', 'Olahraga', '', 'olahraga', 'Y', '4');
INSERT INTO `kategori` VALUES ('21', 'Ekonomi', '', 'ekonomi', 'Y', '7');
INSERT INTO `kategori` VALUES ('22', 'Politik', '', 'politik', 'N', '0');
INSERT INTO `kategori` VALUES ('23', 'Hiburan', '', 'hiburan', 'Y', '3');
INSERT INTO `kategori` VALUES ('31', 'Kesehatan ', '', 'kesehatan-', 'Y', '5');
INSERT INTO `kategori` VALUES ('36', 'Komunitas', '', 'komunitas', 'N', '0');
INSERT INTO `kategori` VALUES ('34', 'Seni & Budaya', '', 'seni--budaya', 'N', '0');
INSERT INTO `kategori` VALUES ('37', 'Sekitar Kita', '', 'sekitar-kita', 'N', '0');
INSERT INTO `kategori` VALUES ('39', 'Internasional', '', 'internasional', 'Y', '1');
INSERT INTO `kategori` VALUES ('40', 'Kuliner', '', 'kuliner', 'Y', '0');
INSERT INTO `kategori` VALUES ('41', 'Metropolitan', '', 'metropolitan', 'Y', '6');
INSERT INTO `kategori` VALUES ('42', 'Dunia Islam', '', 'dunia-islam', 'N', '0');
INSERT INTO `kategori` VALUES ('44', 'Wisata', '', 'wisata', 'N', '0');
INSERT INTO `kategori` VALUES ('46', 'Daerah', '', 'daerah', 'N', '0');
INSERT INTO `kategori` VALUES ('47', 'Gaya Hidup', '', 'gaya-hidup', 'Y', '0');
INSERT INTO `kategori` VALUES ('48', 'Hukum', '', 'hukum', 'Y', '0');
INSERT INTO `kategori` VALUES ('52', 'Sejarah Indonesia', 'admin', 'sejarah-indonesia', 'N', '0');
INSERT INTO `kategori` VALUES ('53', 'Tokoh', 'admin', 'tokoh', 'N', '0');
INSERT INTO `kategori` VALUES ('54', 'Tutorial', 'admin', 'tutorial', 'N', '0');

-- ----------------------------
-- Table structure for komentar
-- ----------------------------
DROP TABLE IF EXISTS `komentar`;
CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of komentar
-- ----------------------------
INSERT INTO `komentar` VALUES ('84', '650', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'N', 'robby.prihandaya@gmail.com');
INSERT INTO `komentar` VALUES ('88', '650', 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com');
INSERT INTO `komentar` VALUES ('90', '650', 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', 'www.rizal-online.co.cc');
INSERT INTO `komentar` VALUES ('91', '645', 'Eka Praja W', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', 'komputerkampus.com');
INSERT INTO `komentar` VALUES ('137', '650', 'Lukmanul Hakim', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', 'lukmanul.haskim@gmai;.com');
INSERT INTO `komentar` VALUES ('146', '645', 'Tommy Utama', 'tommy.utama@gmail.com', ' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ', '2014-07-21', '21:03:04', 'Y', 'tommy.utama@gmail.com');
INSERT INTO `komentar` VALUES ('147', '655', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ', '2014-07-22', '08:33:04', 'Y', 'robby.prihandaya@gmail.com');
INSERT INTO `komentar` VALUES ('144', '650', 'Tommy Utama', 'tommy.utama@gmail.com', 'Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ', '2014-07-21', '20:59:16', 'Y', 'tommy.utama@gmail.com');
INSERT INTO `komentar` VALUES ('143', '650', 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ', '2014-07-21', '20:57:52', 'Y', 'udin.sedunia@gmail.com');
INSERT INTO `komentar` VALUES ('148', '662', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ', '2014-07-24', '09:29:20', 'Y', 'robby.prihandaya@gmail.com');
INSERT INTO `komentar` VALUES ('149', '662', 'Edo Ikfianda', 'edomuhammad90@gmail.com', 'Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.', '2014-08-09', '17:34:35', 'Y', 'edomuhammad90@gmail.com');
INSERT INTO `komentar` VALUES ('152', '650', 'Dewi Safitriir', 'dewi_safitri@gmail.com', 'Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ', '2014-08-17', '17:46:28', 'N', 'dewi_safitri@gmail.com');
INSERT INTO `komentar` VALUES ('153', '662', 'Robby Prihandaya', 'ww.phpmu.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2015-03-25', '06:10:12', 'Y', 'robby.prihandaya@gmail.com');
INSERT INTO `komentar` VALUES ('154', '642', 'Tommy Utama', 'tommyutama.com', ' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ', '2016-11-24', '10:24:15', 'Y', 'tommy.utama@gmail.com');
INSERT INTO `komentar` VALUES ('164', '656', 'Robby Prihandaya', 'https://phpmu.com', 'Komentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.', '2018-04-20', '10:41:54', 'Y', 'robby.prihandaya@gmail.com');

-- ----------------------------
-- Table structure for komentarvid
-- ----------------------------
DROP TABLE IF EXISTS `komentarvid`;
CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of komentarvid
-- ----------------------------
INSERT INTO `komentarvid` VALUES ('107', '160', 'Prabowo Subianto', 'Prabowo@gmail.com', ' Your  email  address  will  not  be  published.  Required  fields  are  marked', '2014-07-21', '13:29:29', 'N');
INSERT INTO `komentarvid` VALUES ('108', '163', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ', '2014-07-21', '13:31:10', 'Y');
INSERT INTO `komentarvid` VALUES ('109', '160', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', ' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.', '2014-07-21', '21:09:31', 'Y');
INSERT INTO `komentarvid` VALUES ('112', '166', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.', '2017-01-25', '09:40:01', 'Y');
INSERT INTO `komentarvid` VALUES ('113', '166', 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.', '2017-01-25', '09:40:55', 'Y');

-- ----------------------------
-- Table structure for logo
-- ----------------------------
DROP TABLE IF EXISTS `logo`;
CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL AUTO_INCREMENT,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_logo`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of logo
-- ----------------------------
INSERT INTO `logo` VALUES ('15', 'logo.png');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL AUTO_INCREMENT,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL,
  PRIMARY KEY (`id_menu`)
) ENGINE=MyISAM AUTO_INCREMENT=156 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('117', '0', 'Download', 'download', 'Ya', 'Bottom', '13');
INSERT INTO `menu` VALUES ('115', '0', 'Alamat Kami', 'halaman/detail/alamat-perusahaan', 'Ya', 'Top', '3');
INSERT INTO `menu` VALUES ('113', '0', 'Tentang Kami', 'halaman/detail/tentang-kami-tunggul-news', 'Ya', 'Top', '2');
INSERT INTO `menu` VALUES ('112', '22', 'Dalam Negeri', '#', 'Ya', 'Bottom', '20');
INSERT INTO `menu` VALUES ('151', '150', 'Semua Produk', 'produk', 'Ya', 'Bottom', '19');
INSERT INTO `menu` VALUES ('150', '0', 'Marketplace System', '#', 'Ya', 'Bottom', '18');
INSERT INTO `menu` VALUES ('19', '0', 'Berita Foto', 'albums', 'Ya', 'Bottom', '12');
INSERT INTO `menu` VALUES ('14', '8', 'Teknologi', 'kategori/detail/teknologi', 'Ya', 'Bottom', '9');
INSERT INTO `menu` VALUES ('13', '8', 'Internasional', 'kategori/detail/internasional', 'Ya', 'Bottom', '10');
INSERT INTO `menu` VALUES ('12', '8', 'Ekonomi', 'kategori/detail/ekonomi', 'Ya', 'Bottom', '7');
INSERT INTO `menu` VALUES ('8', '0', 'Informasi', '#', 'Ya', 'Bottom', '5');
INSERT INTO `menu` VALUES ('11', '8', 'Politik', 'kategori/detail/politik', 'Ya', 'Bottom', '6');
INSERT INTO `menu` VALUES ('116', '0', 'Hubungi Kami', 'hubungi', 'Ya', 'Top', '4');
INSERT INTO `menu` VALUES ('118', '0', 'Agenda', 'agenda', 'Ya', 'Bottom', '14');
INSERT INTO `menu` VALUES ('119', '0', 'Index Berita', 'berita/indeks_berita', 'Ya', 'Top', '1');
INSERT INTO `menu` VALUES ('120', '8', 'Tutorial', 'kategori/detail/seni--budaya', 'Ya', 'Bottom', '8');
INSERT INTO `menu` VALUES ('121', '0', 'Konsultasi', 'konsultasi', 'Ya', 'Bottom', '15');
INSERT INTO `menu` VALUES ('124', '0', 'Kontributor', 'kontributor', 'Ya', 'Bottom', '16');
INSERT INTO `menu` VALUES ('126', '22', 'Luar Negeri', '#', 'Ya', 'Bottom', '21');
INSERT INTO `menu` VALUES ('147', '0', 'Testimoni', 'testimoni', 'Ya', 'Bottom', '17');
INSERT INTO `menu` VALUES ('148', '150', 'Konfirmasi Orders', 'konfirmasi', 'Ya', 'Bottom', '22');
INSERT INTO `menu` VALUES ('149', '150', 'Tracking Orders', 'konfirmasi/tracking', 'Ya', 'Bottom', '21');
INSERT INTO `menu` VALUES ('152', '150', 'Semua Pelapak', 'produk/reseller', 'Ya', 'Bottom', '20');
INSERT INTO `menu` VALUES ('155', '150', 'Orders Report', 'members/orders_report', 'Ya', 'Bottom', '23');

-- ----------------------------
-- Table structure for modul
-- ----------------------------
DROP TABLE IF EXISTS `modul`;
CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL AUTO_INCREMENT,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_modul`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of modul
-- ----------------------------
INSERT INTO `modul` VALUES ('2', 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('18', 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('71', 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', '0', '');
INSERT INTO `modul` VALUES ('10', 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('31', 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('33', 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('34', 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('35', 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('41', 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('43', 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('44', 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('45', 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('46', 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('61', 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('57', 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('59', 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('62', 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('63', 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('64', 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('65', 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('66', 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('67', 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', '0', '');
INSERT INTO `modul` VALUES ('68', 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', '0', '');
INSERT INTO `modul` VALUES ('69', 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', '0', '');
INSERT INTO `modul` VALUES ('70', 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', '0', '');
INSERT INTO `modul` VALUES ('72', 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', '0', '');
INSERT INTO `modul` VALUES ('73', 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', '0', '');
INSERT INTO `modul` VALUES ('74', 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', '0', '');
INSERT INTO `modul` VALUES ('75', 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', '0', '');

-- ----------------------------
-- Table structure for mod_alamat
-- ----------------------------
DROP TABLE IF EXISTS `mod_alamat`;
CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL AUTO_INCREMENT,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_alamat`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of mod_alamat
-- ----------------------------
INSERT INTO `mod_alamat` VALUES ('1', '<strong>Haloo!</strong>, Kami berkomitmen memberikan layanan terbaik untuk Anda,&nbsp;menyediakan produk dan layanan terbaik yang Anda butuhkan. Apabila untuk alasan tertentu Anda merasa tidak puas dengan pelayanan kami dapat menyampaikan kritik dan saran.<br />\r\n<br />\r\nKami akan menidaklanjuti masukan yang Anda berikan dan bila perlu mengambil tindakan untuk mencegah masalah yang sama terulang kembali.\r\n');

-- ----------------------------
-- Table structure for mod_ym
-- ----------------------------
DROP TABLE IF EXISTS `mod_ym`;
CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of mod_ym
-- ----------------------------

-- ----------------------------
-- Table structure for pasangiklan
-- ----------------------------
DROP TABLE IF EXISTS `pasangiklan`;
CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  PRIMARY KEY (`id_pasangiklan`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of pasangiklan
-- ----------------------------
INSERT INTO `pasangiklan` VALUES ('1', 'Iklan Sidebar Kiri', 'admin', 'http://phpmu.com', 'kiri.jpg', '2014-06-22');
INSERT INTO `pasangiklan` VALUES ('2', 'Iklan Sidebar Kanan', 'admin', 'http://phpmu.com', 'kanan.jpg', '2014-06-22');

-- ----------------------------
-- Table structure for playlist
-- ----------------------------
DROP TABLE IF EXISTS `playlist`;
CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL AUTO_INCREMENT,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_playlist`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of playlist
-- ----------------------------
INSERT INTO `playlist` VALUES ('56', 'Playlist Video 1', 'admin', 'playlist-video-1', '', 'Y');
INSERT INTO `playlist` VALUES ('57', 'Playlist Video 2', 'admin', 'playlist-video-2', '', 'Y');
INSERT INTO `playlist` VALUES ('61', 'Playlist Video 4', 'admin', 'playlist-video-4', '', 'Y');
INSERT INTO `playlist` VALUES ('60', 'Playlist Video 3', 'admin', 'playlist-video-3', '', 'Y');

-- ----------------------------
-- Table structure for poling
-- ----------------------------
DROP TABLE IF EXISTS `poling`;
CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL AUTO_INCREMENT,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_poling`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of poling
-- ----------------------------
INSERT INTO `poling` VALUES ('18', 'Siapakah Calon Walikota dan Wakil Walikota Padang Favorit Anda?', 'Pertanyaan', 'admin', '0', 'Y');
INSERT INTO `poling` VALUES ('25', 'Mahyeldi Ansyarullah - Emzalmi', 'Jawaban', 'admin', '25', 'Y');
INSERT INTO `poling` VALUES ('31', 'Robby Prihandaya - Dewi Safitri', 'Jawaban', 'admin', '1', 'Y');
INSERT INTO `poling` VALUES ('32', 'Tommy Utama - Laura Hikmah', 'Jawaban', 'admin', '3', 'Y');
INSERT INTO `poling` VALUES ('33', 'Willy Fernando - Vicky Armita', 'Jawaban', 'admin', '9', 'Y');
INSERT INTO `poling` VALUES ('35', 'Laura Himah i Nisaa - Safaruddin', 'Jawaban', 'admin', '5', 'Y');

-- ----------------------------
-- Table structure for rb_bonus
-- ----------------------------
DROP TABLE IF EXISTS `rb_bonus`;
CREATE TABLE `rb_bonus` (
  `id_bonus` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `nominal` int(11) NOT NULL,
  `status` enum('1','2') NOT NULL,
  `waktu_bonus` datetime NOT NULL,
  PRIMARY KEY (`id_bonus`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_bonus
-- ----------------------------
INSERT INTO `rb_bonus` VALUES ('8', 'arsenio', '100000', '1', '2017-04-10 23:55:38');
INSERT INTO `rb_bonus` VALUES ('7', 'robby', '100000', '1', '2017-04-10 23:55:38');

-- ----------------------------
-- Table structure for rb_dokter
-- ----------------------------
DROP TABLE IF EXISTS `rb_dokter`;
CREATE TABLE `rb_dokter` (
  `id_dokter` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_dokter` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `spesialis` varchar(50) NOT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'Offline',
  PRIMARY KEY (`id_dokter`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_dokter
-- ----------------------------
INSERT INTO `rb_dokter` VALUES ('1', 'arifah', '047506c4f414e8d51e9b776a873ffffdb58e8b9e6c4c2b8c14dff60b12e2d140cb754e2c428255822999885be2c79cf9ca2884be454388124232bf1619d5c657', 'dr. Arifah Nur Shadrina', 'Perempuan', '0', 'Cirebon', '', '823404649.jpg', 'Dokter Umum', 'Offline');
INSERT INTO `rb_dokter` VALUES ('2', 'agung', '812728fb808b9b6b32b1f136754cb112496ca0fe24878fe1990b1d9960250b3fc3ace9ed1021c9028762458710306f8bf430a988657c3a825589a0bf255d53b5', 'dr. agung', 'Laki-laki', '0', 'Ciremai', '081234343434', 'cba7b68a-c95b-46b5-a2e6-66ba7449cfd7_43.jpeg', 'Dokter Umum', 'Offline');
INSERT INTO `rb_dokter` VALUES ('3', 'haikal', '9bfdc9dbe2570a35250612d927f8bbf663d77c8ef3aecef3e4d4c693bf3cfb196e2dbc285882a2bbedb1b02210573f26cc642ddaf025bfe073cdf501ea265b1b', 'dr. M. Haikal Hafid Ranida', 'Laki-laki', '0', 'Cirebon', '0812344343434', 'syuna.jpg', 'Dokter Umum', 'Offline');

-- ----------------------------
-- Table structure for rb_gejala
-- ----------------------------
DROP TABLE IF EXISTS `rb_gejala`;
CREATE TABLE `rb_gejala` (
  `id_gejala` int(11) NOT NULL AUTO_INCREMENT,
  `kode_gejala` varchar(5) NOT NULL,
  `nama_gejala` varchar(255) NOT NULL,
  PRIMARY KEY (`id_gejala`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_gejala
-- ----------------------------
INSERT INTO `rb_gejala` VALUES ('1', 'G004', 'Bercak putih berlendir pada mulut');
INSERT INTO `rb_gejala` VALUES ('2', 'G003', 'Bercak kecoklatan mendatar pada bibir');
INSERT INTO `rb_gejala` VALUES ('3', 'G002', 'Benjolan putih pada bagian dalam bibir');
INSERT INTO `rb_gejala` VALUES ('4', 'G001', 'Bau mulut tak sedap');
INSERT INTO `rb_gejala` VALUES ('5', 'G005', 'Bercak putih pada lidah');
INSERT INTO `rb_gejala` VALUES ('6', 'G006', 'Bercak putih pada rongga mulut');
INSERT INTO `rb_gejala` VALUES ('7', 'G007', 'Bibir kemerahan');
INSERT INTO `rb_gejala` VALUES ('8', 'G008', 'Bibir pecah-pecah');
INSERT INTO `rb_gejala` VALUES ('9', 'G009', 'Bibir teras kering dan keras');
INSERT INTO `rb_gejala` VALUES ('10', 'G010', 'Bibir terasa panas seperti terbakar');
INSERT INTO `rb_gejala` VALUES ('11', 'G011', 'Bintik putih pada gigi');
INSERT INTO `rb_gejala` VALUES ('12', 'G012', 'Bintik-bintik merah bersisik pada daerah mulut');
INSERT INTO `rb_gejala` VALUES ('13', 'G013', 'Demam');
INSERT INTO `rb_gejala` VALUES ('14', 'G014', 'Dentin terlihat');
INSERT INTO `rb_gejala` VALUES ('15', 'G015', 'Disertai rasa gatal');
INSERT INTO `rb_gejala` VALUES ('16', 'G016', 'Disertai sakit kepala');
INSERT INTO `rb_gejala` VALUES ('17', 'G017', 'Gigi berlubang');
INSERT INTO `rb_gejala` VALUES ('18', 'G018', 'Gigi keluar darah');
INSERT INTO `rb_gejala` VALUES ('19', 'G019', 'Gigi nyeri saat terkena rangsangan (panas atau dingin)');
INSERT INTO `rb_gejala` VALUES ('20', 'G020', 'Nyeri pada TMJ (Sendi Temporo Mandibuler)');
INSERT INTO `rb_gejala` VALUES ('21', 'G021', 'Gusi bengkak');
INSERT INTO `rb_gejala` VALUES ('22', 'G022', 'Gusi licin dan mengkilap');
INSERT INTO `rb_gejala` VALUES ('23', 'G023', 'Gusi merah muda');
INSERT INTO `rb_gejala` VALUES ('24', 'G024', 'Gusi mudah berdarah');
INSERT INTO `rb_gejala` VALUES ('25', 'G025', 'Inferksi pada kelenjar lidah');
INSERT INTO `rb_gejala` VALUES ('26', 'G026', 'Kemerahan pada sudut-sudut mulut');
INSERT INTO `rb_gejala` VALUES ('27', 'G027', 'Lubang sangat besar pada gigi');
INSERT INTO `rb_gejala` VALUES ('28', 'G028', 'Luka mudah berdarah');
INSERT INTO `rb_gejala` VALUES ('29', 'G029', 'Luka terbuka berwarna biru keputihan');
INSERT INTO `rb_gejala` VALUES ('30', 'G030', 'Luka terbuka pada lidah');
INSERT INTO `rb_gejala` VALUES ('31', 'G031', 'Muncul benjolan kemerahan pada lubang gigi');
INSERT INTO `rb_gejala` VALUES ('32', 'G032', 'Nanah pada pangkal gusi');
INSERT INTO `rb_gejala` VALUES ('33', 'G033', 'Nyeri pada kelenjar ludah');
INSERT INTO `rb_gejala` VALUES ('34', 'G034', 'Nyeri pada otot pengunyah');
INSERT INTO `rb_gejala` VALUES ('35', 'G035', 'Nyeri saat berbaring');
INSERT INTO `rb_gejala` VALUES ('36', 'G036', 'Nyeri saat gigi tertekan makanan');
INSERT INTO `rb_gejala` VALUES ('37', 'G037', 'Nyeri saat mengunyah');
INSERT INTO `rb_gejala` VALUES ('38', 'G038', 'Pembengkakan kelenjar getah bening');
INSERT INTO `rb_gejala` VALUES ('39', 'G039', 'Pembengkakan pada kelenjar ludah');
INSERT INTO `rb_gejala` VALUES ('40', 'G040', 'Pembusukan pada gigi');
INSERT INTO `rb_gejala` VALUES ('41', 'G041', 'Pulpa mati rasa');
INSERT INTO `rb_gejala` VALUES ('42', 'G042', 'Pulpa terinfeksi');
INSERT INTO `rb_gejala` VALUES ('43', 'G043', 'Resesi Gusi');
INSERT INTO `rb_gejala` VALUES ('44', 'G044', 'Sakit berdenyut tanpa rangsangan');
INSERT INTO `rb_gejala` VALUES ('45', 'G045', 'Sudut mulut terasa nyeri');
INSERT INTO `rb_gejala` VALUES ('46', 'G046', 'Sudut-sudut mulut bersisik');
INSERT INTO `rb_gejala` VALUES ('47', 'G047', 'Terasa perih saat makan dan minum');
INSERT INTO `rb_gejala` VALUES ('48', 'G048', 'Terbentuk kantong antara gigi dan gusi');
INSERT INTO `rb_gejala` VALUES ('49', 'G049', 'Terdapat benjolan ungu dengan pinggiran bersiku pada daerah mulut');
INSERT INTO `rb_gejala` VALUES ('50', 'G050', 'Terdapat endapan plak');
INSERT INTO `rb_gejala` VALUES ('51', 'G051', 'Terdapat ulkus (luka) pada mukosa mulut');
INSERT INTO `rb_gejala` VALUES ('52', 'G052', 'Terjadi daerah kemerahan pada mulut');
INSERT INTO `rb_gejala` VALUES ('53', 'G053', 'Ulkus (luka) pada sudut mulut');
INSERT INTO `rb_gejala` VALUES ('54', 'G054', 'Vesikel (gelembung) pada mukosa mulut');
INSERT INTO `rb_gejala` VALUES ('55', 'G055', 'Terdapat karang gigi');
INSERT INTO `rb_gejala` VALUES ('56', 'G056', 'Perkembangan penyakit cepat (bulanan)');
INSERT INTO `rb_gejala` VALUES ('57', 'G057', 'Ruang pulpa terbuka');
INSERT INTO `rb_gejala` VALUES ('58', 'G058', 'Luka atau benjolan yang muncul berulang');

-- ----------------------------
-- Table structure for rb_kategori_produk
-- ----------------------------
DROP TABLE IF EXISTS `rb_kategori_produk`;
CREATE TABLE `rb_kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `kategori_seo` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_kategori_produk
-- ----------------------------
INSERT INTO `rb_kategori_produk` VALUES ('1', 'Aksesoris & Komputer', 'aksesoris-gadget--komputer');
INSERT INTO `rb_kategori_produk` VALUES ('2', 'Fashion & Busana Wanita', 'fashion--busana-wanita');
INSERT INTO `rb_kategori_produk` VALUES ('6', 'Fashion & Busana Pria', 'fashion--busana-pria');
INSERT INTO `rb_kategori_produk` VALUES ('9', 'Alat Musik & Pro Audio', 'alat-musik--pro-audio');
INSERT INTO `rb_kategori_produk` VALUES ('10', 'Tas, Koper & Perjalanan', 'tas-koper--perjalanan');
INSERT INTO `rb_kategori_produk` VALUES ('12', 'Obat Batuk', 'obat-batuk');
INSERT INTO `rb_kategori_produk` VALUES ('13', 'Obat Maag', 'obat-maag');
INSERT INTO `rb_kategori_produk` VALUES ('14', 'Vitamin dan Mineral', 'vitamin-dan-mineral');
INSERT INTO `rb_kategori_produk` VALUES ('15', 'Herbal', 'herbal');

-- ----------------------------
-- Table structure for rb_kategori_produk_sub
-- ----------------------------
DROP TABLE IF EXISTS `rb_kategori_produk_sub`;
CREATE TABLE `rb_kategori_produk_sub` (
  `id_kategori_produk_sub` int(11) NOT NULL AUTO_INCREMENT,
  `id_kategori_produk` int(11) NOT NULL,
  `nama_kategori_sub` varchar(255) NOT NULL,
  `kategori_seo_sub` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori_produk_sub`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_kategori_produk_sub
-- ----------------------------
INSERT INTO `rb_kategori_produk_sub` VALUES ('1', '2', 'Kiyora Sedang', 'kiyora-sedang');
INSERT INTO `rb_kategori_produk_sub` VALUES ('2', '2', 'Kiyora Dalam', 'kiyora-dalam');
INSERT INTO `rb_kategori_produk_sub` VALUES ('3', '1', 'Motherboard', 'motherboard');
INSERT INTO `rb_kategori_produk_sub` VALUES ('4', '1', 'Storage External', 'storage-external');
INSERT INTO `rb_kategori_produk_sub` VALUES ('6', '12', 'Sirup', 'sirup');
INSERT INTO `rb_kategori_produk_sub` VALUES ('7', '12', 'Tablet', 'tablet');
INSERT INTO `rb_kategori_produk_sub` VALUES ('8', '13', 'Sirup Anak', 'sirup-anak');
INSERT INTO `rb_kategori_produk_sub` VALUES ('9', '14', 'Khusus Anak', 'khusus-anak');
INSERT INTO `rb_kategori_produk_sub` VALUES ('10', '14', 'Dewasa', 'dewasa');
INSERT INTO `rb_kategori_produk_sub` VALUES ('11', '13', 'Dewasa', 'dewasa');

-- ----------------------------
-- Table structure for rb_keterangan
-- ----------------------------
DROP TABLE IF EXISTS `rb_keterangan`;
CREATE TABLE `rb_keterangan` (
  `id_keterangan` int(5) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_posting` date NOT NULL,
  PRIMARY KEY (`id_keterangan`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_keterangan
-- ----------------------------
INSERT INTO `rb_keterangan` VALUES ('1', '2', '<b>Informasi dari Reseller :</b><p></p>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis.&nbsp; dfsdfsdf</p><p>Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero. ertert</p>', '2017-03-31');
INSERT INTO `rb_keterangan` VALUES ('2', '6', '<p>asdasdasd</p>', '2019-09-07');
INSERT INTO `rb_keterangan` VALUES ('3', '1', '<p></p>', '2019-09-07');
INSERT INTO `rb_keterangan` VALUES ('4', '13', '<p>Apotek Bakti Praja&nbsp;<br>Jl.A.R Hakim no 107 Komplek Pertokoan Niaga</p>', '2020-06-15');

-- ----------------------------
-- Table structure for rb_konfirmasi_pembayaran
-- ----------------------------
DROP TABLE IF EXISTS `rb_konfirmasi_pembayaran`;
CREATE TABLE `rb_konfirmasi_pembayaran` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL,
  PRIMARY KEY (`id_konfirmasi_pembayaran`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_konfirmasi_pembayaran
-- ----------------------------
INSERT INTO `rb_konfirmasi_pembayaran` VALUES ('1', '14', 'Rp 3,605,000', '2', 'Robby Prihandaya', '2017-06-01', 'Transfer_Member_PHP.png', '2017-06-01 17:17:55');
INSERT INTO `rb_konfirmasi_pembayaran` VALUES ('2', '58', 'Rp 700,000', '1', 'ttt', '2018-09-12', '', '2018-09-12 14:43:39');
INSERT INTO `rb_konfirmasi_pembayaran` VALUES ('3', '68', 'Rp 1,332,900', '1', 'Reseller Utama', '2018-12-26', '234.JPG', '2018-12-26 08:19:57');
INSERT INTO `rb_konfirmasi_pembayaran` VALUES ('4', '91', 'Rp 399,000', '1', 'Murni Jaya', '2019-03-22', 'Screenshot_20190227-155933_BCA_mobile.jpg', '2019-03-22 06:28:27');

-- ----------------------------
-- Table structure for rb_konfirmasi_pembayaran_konsumen
-- ----------------------------
DROP TABLE IF EXISTS `rb_konfirmasi_pembayaran_konsumen`;
CREATE TABLE `rb_konfirmasi_pembayaran_konsumen` (
  `id_konfirmasi_pembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(11) NOT NULL,
  `total_transfer` varchar(20) NOT NULL,
  `id_rekening` int(11) NOT NULL,
  `nama_pengirim` varchar(255) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `bukti_transfer` varchar(255) NOT NULL,
  `waktu_konfirmasi` datetime NOT NULL,
  PRIMARY KEY (`id_konfirmasi_pembayaran`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_konfirmasi_pembayaran_konsumen
-- ----------------------------
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('2', '19', 'Rp 1,278,000', '1', 'Robby Prihandaya', '2017-06-02', '00011.jpg', '2017-06-02 15:19:40');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('3', '43', 'Rp 4,799,000', '2', 'Dewiit Safitri ', '2017-06-04', '0755.png', '2017-06-04 11:27:01');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('5', '47', 'Rp 728,000', '1', 'Agus Raharjo', '2017-06-07', '1.png', '2017-06-07 21:06:06');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('6', '57', 'Rp 945,900', '1', 'Robby Prihandaya', '2018-12-11', '', '2018-12-11 14:01:05');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('7', '57', 'Rp 945,900', '1', 'Robby Prihandaya', '2018-12-11', '', '2018-12-11 14:02:22');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('8', '57', 'Rp 945,900', '1', 'Robby Prihandaya', '2018-12-11', 'zhe_mandiri_logo.png', '2018-12-11 14:03:11');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('9', '61', 'Rp 110,900', '1', 'Robby Prihandaya', '2018-12-23', 'bukti_transfer_phpmu1.jpeg', '2018-12-23 07:39:30');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('10', '85', 'Rp 776,000', '2', 'Robby Prihandaya', '2019-03-21', 'bukti_transfer3.jpg', '2019-03-21 12:04:31');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('11', '86', 'Rp 141,000', '1', 'Robby Prihandaya', '2019-03-21', 'IMG-20190217-WA0002.jpg', '2019-03-21 12:09:00');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('12', '87', 'Rp 82,000', '1', 'Muhammad Arsenio', '2019-03-21', 'IMG-20190115-WA0013.jpg', '2019-03-21 12:11:56');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('13', '106', 'Rp 776,000', '1', 'Robby Prihandaya', '2019-07-03', 'Screenshot.png', '2019-07-03 07:45:36');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('14', '105', 'Rp 107,000', '1', 'Robby Prihandaya', '2019-09-12', 'Screenshot_20190901-083856_BCA_mobile.png', '2019-09-12 05:56:00');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('15', '129', 'Rp 116,000', '1', 'Hardiansyah', '2020-02-28', 'downloadMandiri1572104707021.jpg', '2020-02-28 03:25:19');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('16', '158', 'Rp 5,000', '1', 'tyagita', '2020-06-21', 'HP.PNG', '2020-06-21 18:54:40');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('17', '165', 'Rp 30,001', '1', 'okok', '2020-06-25', '', '2020-06-25 23:37:37');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('18', '167', 'Rp 25,000', '1', 'asd', '2020-06-25', '', '2020-06-25 23:49:55');
INSERT INTO `rb_konfirmasi_pembayaran_konsumen` VALUES ('19', '168', 'Rp 22,000', '1', 'ads', '2020-06-26', '', '2020-06-26 00:30:45');

-- ----------------------------
-- Table structure for rb_konsumen
-- ----------------------------
DROP TABLE IF EXISTS `rb_konsumen`;
CREATE TABLE `rb_konsumen` (
  `id_konsumen` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `password` text NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `email` varchar(60) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `tanggal_daftar` date NOT NULL,
  PRIMARY KEY (`id_konsumen`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_konsumen
-- ----------------------------
INSERT INTO `rb_konsumen` VALUES ('1', 'robby', '882c306525a9f885466520ba2aa6b10377b029cb569311fc17161d40df6e1bab7eb6103fcf567ce3a1375e77cc7db1928efec90cd0a379303fc2adb159bb1d14', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Laki-laki', '1988-08-07', '34623452223423', 'Jl. Angkasa Pura Jaya Merdeka', 'Koto Tangah', '318', '081267771341', 'robby1.jpg', '2017-04-05');
INSERT INTO `rb_konsumen` VALUES ('2', 'arsenio', '2d3f6f7764873d6e6a7489a177ec13d7d449e1e40a6489720bb46f045ac5cc092c5f391eb42a2d76fd4151a9d0186c02812fe984d86625aab215b67872fc8884', 'Muhammad Arsenio', 'muhammad.arsenio@gmail.com', 'Laki-laki', '1988-09-27', '67846234523434', 'jl. Siti Nurbayani Sogi roh', 'Koto Tangah', '394', '081267889912', '', '2017-04-07');
INSERT INTO `rb_konsumen` VALUES ('3', 'dewiit', 'af9f95fb734ca6abb2d02a6a169eca2bbf33feb3c25ed266e4129cbed937150699954d72dcb44fee7c9e9acebaf4e7283aabc64a6e56f1b8e6a5a0e8e0551324', 'Dewiit Safitri', 'dewiitt.safitri@gmail.com', 'Perempuan', '1989-06-16', '56224234234', 'Jl. Linggar Jati Lamo', '', '0', '098912334456', '', '2017-04-08');
INSERT INTO `rb_konsumen` VALUES ('4', 'cristine', '284e703a4d52451e1266b16660e50545e58bc0d4796587cb457e49cccd10af4d4ef6cf36d076a91002d806f443e0fb22b9391d81092d06a90252ec80b93a1269', 'Cristine Hakim', 'cristine.hakim@gmail.com', 'Perempuan', '1970-06-16', '46234234234', 'jl. Pondok Raya Begalung', '', '0', '097712445600', '', '2017-04-09');
INSERT INTO `rb_konsumen` VALUES ('5', 'tommy', 'e3bb0d1fb8d4d0aa070f22a9f73c975222449bb5466dc89033f66a8be07d6e8345308aa298e78066871c6844964e6b63f7be4327525c5025001c76b94310e2f2', 'Tommu Utama', 'tommy.utama@gmail.com', 'Laki-laki', '1985-08-18', '894563456354', 'Jl Cendrawasih Mujukirte', '', '0', '081267881233', '', '2017-04-10');
INSERT INTO `rb_konsumen` VALUES ('6', 'willy', '181676ffcb279fc91cfb9cb5f07be65b23224b05059f9f2ff0158aa520693a805496be090242c3cdf56c0463f278aba4b01c7115ea356eda346ef8270e402696', 'Willy Fernando', 'willy.fernando@gmail.com', 'Laki-laki', '1969-08-14', '567352234423', 'Jl. Angkasa Puri, Perundam 4', '', '0', '087811235433', '', '2017-04-11');
INSERT INTO `rb_konsumen` VALUES ('7', 'rosanna', '108b1016c8dfa4c6892fd745c09adc4859cd2e21ca3d55a30322ef667011aa3c379c02a45437fd6482555c17aab7f607e13b8431e19678a00a51edec958a9569', 'Rosanna Alexandro', 'rosanna.alexandro@gmail.com', 'Perempuan', '1967-04-17', '67543242343', 'Jl. Mantaliano Tubelegio', '', '0', '081242342341', '', '2017-04-10');
INSERT INTO `rb_konsumen` VALUES ('18', 'laura', 'ca946a52760d2c5e2670aa899019f09638e72462d8a9ff272dffb16d14e3873457ce6be0a3ecf205fdb0c8141bbe560b01240f1f1307e31b231cb18428ec5974', 'Laura Izzatin Nissa', 'laura.izzatin@gmail.com', 'Perempuan', '1998-02-12', 'Padang Panjang', 'Tunggul Hitam, Padang', '', '0', '082175123545', '', '2017-05-29');
INSERT INTO `rb_konsumen` VALUES ('24', 'rahmi', 'a6023aa2be2f8d9bb61edd627f957882c7a28abbbc1ed61b9cd93c36c06e52270396fcaa6303b341f52937432faa91ecbaea99534a1f55866ba3163389fcbfbf', 'Rahmi Saputra', 'rahmi.saputra@gmail.com', 'Laki-laki', '1989-12-12', 'Payakumbuh', 'Jl. Kijoko Bodoh', 'Perupuk Jaya', '370', '081978541155', '', '2017-06-07');
INSERT INTO `rb_konsumen` VALUES ('23', 'agusr', 'b87fb1f4862c52a175281636b0c270276e50e33e3aec4929c31da5199ca83ff25c0d045f9eb03b2e6dca41a390164a8c95c29bd28139cef18499c0d2ae59e098', 'Agus Raharjo', 'agus.raharjo@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Sutimah warohmah Jaya', 'Koto Tangah', '371', '081267991244', '', '2017-06-07');
INSERT INTO `rb_konsumen` VALUES ('22', 'agus.raharjo@gmail.com', '02b61e501d79d45025497898bbf96cdfb5798c6f41a3a5abbbf4e4a51945d398923fc4968d49653275372e396939f307a8625793e74c0a10f76e7b02130afcf8', 'Agus Raharjo', 'agus.raharjo@gmail.com', 'Laki-laki', '2017-06-07', 'Belum ada informasi', 'Jl. Super market jaya 1', 'Perupuk Tabing', '371', '081267771455', '', '2017-06-07');
INSERT INTO `rb_konsumen` VALUES ('26', 'ajopiaman', '60031d6080409529d7a34c00d38c33846fc14e62e9730dd781a26688ebdbee18751b4bf308e2b3933c7b8692ab1a57e51a7ddd1787e34254c063dc65f7f171b4', 'Ajo Piaman', 'ajo.piaman@gmail.com', 'Laki-laki', '1990-12-11', 'Pariaman', 'Jl. Piaman Raya Bendungan Sari, No 4A', 'Koto Tangah', '337', '081267770000', '', '2018-12-23');
INSERT INTO `rb_konsumen` VALUES ('27', 'adhetmbk', '85b944a848b0ec3913ea55f75d9814c67ee6934e59b971adccdc5cdb8bbe589e5dd6614bafe1eec0b76a667ac8191734aefd42c57dfbd2851ee7780666bd1591', 'Hardiansyah', 'adhe.tmbk@gmail.com', 'Laki-laki', '0000-00-00', '', 'Jl. Sultan Alauddin 75 no  49', 'Tamalate', '254', '081355408007', '', '2020-01-14');
INSERT INTO `rb_konsumen` VALUES ('28', 'tyagita89', '43fd33c23a4963c4477b7ffa2d2c0d075668bbd19ac951390f2f8b9f2efa2884c65f5c3759d01968761f3bb8273911f1b36343da25561b324a5eff069fdda55d', 'tyagita', 'tyagita@gmail.com', 'Laki-laki', '0000-00-00', '', 'johar indah blok c no 16', 'adiarsa timur', '171', '08112909400', '', '2020-06-11');
INSERT INTO `rb_konsumen` VALUES ('29', 'tyagita88', '4fb454797db8ec8d1c5f4282a4fdd046c1d4069e93bd4efcdb140dd630ce5cffaf8f6c379fa6d29543b2bec5135af39bb03b9267ba8cd9fbced7ef46dc1a870e', 'tyagitaku', 'fahri.android@gmail.com', 'Laki-laki', '0000-00-00', '', 'jajsjdj', 'kuningan', '399', '082133747172', '', '2020-06-14');
INSERT INTO `rb_konsumen` VALUES ('30', 'tyagita88', '43fd33c23a4963c4477b7ffa2d2c0d075668bbd19ac951390f2f8b9f2efa2884c65f5c3759d01968761f3bb8273911f1b36343da25561b324a5eff069fdda55d', 'tyagita88', 'tyagita88@gmail.com', 'Laki-laki', '2020-02-02', 'Bukittinggi', 'karawang', 'adiarsa', '171', '081213766401', 'profile_05072020205848256.png', '2020-06-21');
INSERT INTO `rb_konsumen` VALUES ('31', 'mantap', '8677508620702a1846e580fd732b10b5ff37d18e1c054ea09de747e674e4eb665b283783c46573ef156739fc19195ac28ceb0b64f650bfce7b125d37c08acba7', 'mantap bro', 'sateujangbur@gmail.com', 'Laki-laki', '0000-00-00', '', 'jl mantap', 'mantap', '447', '08123456789', '', '2020-06-22');
INSERT INTO `rb_konsumen` VALUES ('32', 'mantap', '41c5a81bd5bf080bdd51f94b1c4edf69bb11f62b278e81f24df276526cf37e84b818b3a6f10dd78fce069179d57d17ec2a2c6ac2e86ae617d4348194c6823dc7', 'asdasd', 'asda@asd.com', 'Laki-laki', '0000-00-00', '', 'asdasd', 'asdad', '403', '0851554545', '', '2020-06-22');

-- ----------------------------
-- Table structure for rb_kota
-- ----------------------------
DROP TABLE IF EXISTS `rb_kota`;
CREATE TABLE `rb_kota` (
  `kota_id` int(11) NOT NULL AUTO_INCREMENT,
  `provinsi_id` int(11) NOT NULL,
  `nama_kota` varchar(100) NOT NULL,
  PRIMARY KEY (`kota_id`)
) ENGINE=MyISAM AUTO_INCREMENT=502 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_kota
-- ----------------------------
INSERT INTO `rb_kota` VALUES ('17', '1', 'Badung');
INSERT INTO `rb_kota` VALUES ('32', '1', 'Bangli');
INSERT INTO `rb_kota` VALUES ('94', '1', 'Buleleng');
INSERT INTO `rb_kota` VALUES ('114', '1', 'Denpasar');
INSERT INTO `rb_kota` VALUES ('128', '1', 'Gianyar');
INSERT INTO `rb_kota` VALUES ('161', '1', 'Jembrana');
INSERT INTO `rb_kota` VALUES ('170', '1', 'Karangasem');
INSERT INTO `rb_kota` VALUES ('197', '1', 'Klungkung');
INSERT INTO `rb_kota` VALUES ('447', '1', 'Tabanan');
INSERT INTO `rb_kota` VALUES ('27', '2', 'Bangka');
INSERT INTO `rb_kota` VALUES ('28', '2', 'Bangka Barat');
INSERT INTO `rb_kota` VALUES ('29', '2', 'Bangka Selatan');
INSERT INTO `rb_kota` VALUES ('30', '2', 'Bangka Tengah');
INSERT INTO `rb_kota` VALUES ('56', '2', 'Belitung');
INSERT INTO `rb_kota` VALUES ('57', '2', 'Belitung Timur');
INSERT INTO `rb_kota` VALUES ('334', '2', 'Pangkal Pinang');
INSERT INTO `rb_kota` VALUES ('106', '3', 'Cilegon');
INSERT INTO `rb_kota` VALUES ('232', '3', 'Lebak');
INSERT INTO `rb_kota` VALUES ('331', '3', 'Pandeglang');
INSERT INTO `rb_kota` VALUES ('402', '3', 'Serang');
INSERT INTO `rb_kota` VALUES ('403', '3', 'Serang');
INSERT INTO `rb_kota` VALUES ('455', '3', 'Tangerang');
INSERT INTO `rb_kota` VALUES ('456', '3', 'Tangerang');
INSERT INTO `rb_kota` VALUES ('457', '3', 'Tangerang Selatan');
INSERT INTO `rb_kota` VALUES ('62', '4', 'Bengkulu');
INSERT INTO `rb_kota` VALUES ('63', '4', 'Bengkulu Selatan');
INSERT INTO `rb_kota` VALUES ('64', '4', 'Bengkulu Tengah');
INSERT INTO `rb_kota` VALUES ('65', '4', 'Bengkulu Utara');
INSERT INTO `rb_kota` VALUES ('175', '4', 'Kaur');
INSERT INTO `rb_kota` VALUES ('183', '4', 'Kepahiang');
INSERT INTO `rb_kota` VALUES ('233', '4', 'Lebong');
INSERT INTO `rb_kota` VALUES ('294', '4', 'Muko Muko');
INSERT INTO `rb_kota` VALUES ('379', '4', 'Rejang Lebong');
INSERT INTO `rb_kota` VALUES ('397', '4', 'Seluma');
INSERT INTO `rb_kota` VALUES ('39', '5', 'Bantul');
INSERT INTO `rb_kota` VALUES ('135', '5', 'Gunung Kidul');
INSERT INTO `rb_kota` VALUES ('210', '5', 'Kulon Progo');
INSERT INTO `rb_kota` VALUES ('419', '5', 'Sleman');
INSERT INTO `rb_kota` VALUES ('501', '5', 'Yogyakarta');
INSERT INTO `rb_kota` VALUES ('151', '6', 'Jakarta Barat');
INSERT INTO `rb_kota` VALUES ('152', '6', 'Jakarta Pusat');
INSERT INTO `rb_kota` VALUES ('153', '6', 'Jakarta Selatan');
INSERT INTO `rb_kota` VALUES ('154', '6', 'Jakarta Timur');
INSERT INTO `rb_kota` VALUES ('155', '6', 'Jakarta Utara');
INSERT INTO `rb_kota` VALUES ('189', '6', 'Kepulauan Seribu');
INSERT INTO `rb_kota` VALUES ('77', '7', 'Boalemo');
INSERT INTO `rb_kota` VALUES ('88', '7', 'Bone Bolango');
INSERT INTO `rb_kota` VALUES ('129', '7', 'Gorontalo');
INSERT INTO `rb_kota` VALUES ('130', '7', 'Gorontalo');
INSERT INTO `rb_kota` VALUES ('131', '7', 'Gorontalo Utara');
INSERT INTO `rb_kota` VALUES ('361', '7', 'Pohuwato');
INSERT INTO `rb_kota` VALUES ('50', '8', 'Batang Hari');
INSERT INTO `rb_kota` VALUES ('97', '8', 'Bungo');
INSERT INTO `rb_kota` VALUES ('156', '8', 'Jambi');
INSERT INTO `rb_kota` VALUES ('194', '8', 'Kerinci');
INSERT INTO `rb_kota` VALUES ('280', '8', 'Merangin');
INSERT INTO `rb_kota` VALUES ('293', '8', 'Muaro Jambi');
INSERT INTO `rb_kota` VALUES ('393', '8', 'Sarolangun');
INSERT INTO `rb_kota` VALUES ('442', '8', 'Sungaipenuh');
INSERT INTO `rb_kota` VALUES ('460', '8', 'Tanjung Jabung Barat');
INSERT INTO `rb_kota` VALUES ('461', '8', 'Tanjung Jabung Timur');
INSERT INTO `rb_kota` VALUES ('471', '8', 'Tebo');
INSERT INTO `rb_kota` VALUES ('22', '9', 'Bandung');
INSERT INTO `rb_kota` VALUES ('23', '9', 'Bandung');
INSERT INTO `rb_kota` VALUES ('24', '9', 'Bandung Barat');
INSERT INTO `rb_kota` VALUES ('34', '9', 'Banjar');
INSERT INTO `rb_kota` VALUES ('54', '9', 'Bekasi');
INSERT INTO `rb_kota` VALUES ('55', '9', 'Bekasi');
INSERT INTO `rb_kota` VALUES ('78', '9', 'Bogor');
INSERT INTO `rb_kota` VALUES ('79', '9', 'Bogor');
INSERT INTO `rb_kota` VALUES ('103', '9', 'Ciamis');
INSERT INTO `rb_kota` VALUES ('104', '9', 'Cianjur');
INSERT INTO `rb_kota` VALUES ('107', '9', 'Cimahi');
INSERT INTO `rb_kota` VALUES ('108', '9', 'Cirebon');
INSERT INTO `rb_kota` VALUES ('109', '9', 'Cirebon');
INSERT INTO `rb_kota` VALUES ('115', '9', 'Depok');
INSERT INTO `rb_kota` VALUES ('126', '9', 'Garut');
INSERT INTO `rb_kota` VALUES ('149', '9', 'Indramayu');
INSERT INTO `rb_kota` VALUES ('171', '9', 'Karawang');
INSERT INTO `rb_kota` VALUES ('211', '9', 'Kuningan');
INSERT INTO `rb_kota` VALUES ('252', '9', 'Majalengka');
INSERT INTO `rb_kota` VALUES ('332', '9', 'Pangandaran');
INSERT INTO `rb_kota` VALUES ('376', '9', 'Purwakarta');
INSERT INTO `rb_kota` VALUES ('428', '9', 'Subang');
INSERT INTO `rb_kota` VALUES ('430', '9', 'Sukabumi');
INSERT INTO `rb_kota` VALUES ('431', '9', 'Sukabumi');
INSERT INTO `rb_kota` VALUES ('440', '9', 'Sumedang');
INSERT INTO `rb_kota` VALUES ('468', '9', 'Tasikmalaya');
INSERT INTO `rb_kota` VALUES ('469', '9', 'Tasikmalaya');
INSERT INTO `rb_kota` VALUES ('37', '10', 'Banjarnegara');
INSERT INTO `rb_kota` VALUES ('41', '10', 'Banyumas');
INSERT INTO `rb_kota` VALUES ('49', '10', 'Batang');
INSERT INTO `rb_kota` VALUES ('76', '10', 'Blora');
INSERT INTO `rb_kota` VALUES ('91', '10', 'Boyolali');
INSERT INTO `rb_kota` VALUES ('92', '10', 'Brebes');
INSERT INTO `rb_kota` VALUES ('105', '10', 'Cilacap');
INSERT INTO `rb_kota` VALUES ('113', '10', 'Demak');
INSERT INTO `rb_kota` VALUES ('134', '10', 'Grobogan');
INSERT INTO `rb_kota` VALUES ('163', '10', 'Jepara');
INSERT INTO `rb_kota` VALUES ('169', '10', 'Karanganyar');
INSERT INTO `rb_kota` VALUES ('177', '10', 'Kebumen');
INSERT INTO `rb_kota` VALUES ('181', '10', 'Kendal');
INSERT INTO `rb_kota` VALUES ('196', '10', 'Klaten');
INSERT INTO `rb_kota` VALUES ('209', '10', 'Kudus');
INSERT INTO `rb_kota` VALUES ('249', '10', 'Magelang');
INSERT INTO `rb_kota` VALUES ('250', '10', 'Magelang');
INSERT INTO `rb_kota` VALUES ('344', '10', 'Pati');
INSERT INTO `rb_kota` VALUES ('348', '10', 'Pekalongan');
INSERT INTO `rb_kota` VALUES ('349', '10', 'Pekalongan');
INSERT INTO `rb_kota` VALUES ('352', '10', 'Pemalang');
INSERT INTO `rb_kota` VALUES ('375', '10', 'Purbalingga');
INSERT INTO `rb_kota` VALUES ('377', '10', 'Purworejo');
INSERT INTO `rb_kota` VALUES ('380', '10', 'Rembang');
INSERT INTO `rb_kota` VALUES ('386', '10', 'Salatiga');
INSERT INTO `rb_kota` VALUES ('398', '10', 'Semarang');
INSERT INTO `rb_kota` VALUES ('399', '10', 'Semarang');
INSERT INTO `rb_kota` VALUES ('427', '10', 'Sragen');
INSERT INTO `rb_kota` VALUES ('433', '10', 'Sukoharjo');
INSERT INTO `rb_kota` VALUES ('445', '10', 'Surakarta (Solo)');
INSERT INTO `rb_kota` VALUES ('472', '10', 'Tegal');
INSERT INTO `rb_kota` VALUES ('473', '10', 'Tegal');
INSERT INTO `rb_kota` VALUES ('476', '10', 'Temanggung');
INSERT INTO `rb_kota` VALUES ('497', '10', 'Wonogiri');
INSERT INTO `rb_kota` VALUES ('498', '10', 'Wonosobo');
INSERT INTO `rb_kota` VALUES ('31', '11', 'Bangkalan');
INSERT INTO `rb_kota` VALUES ('42', '11', 'Banyuwangi');
INSERT INTO `rb_kota` VALUES ('51', '11', 'Batu');
INSERT INTO `rb_kota` VALUES ('74', '11', 'Blitar');
INSERT INTO `rb_kota` VALUES ('75', '11', 'Blitar');
INSERT INTO `rb_kota` VALUES ('80', '11', 'Bojonegoro');
INSERT INTO `rb_kota` VALUES ('86', '11', 'Bondowoso');
INSERT INTO `rb_kota` VALUES ('133', '11', 'Gresik');
INSERT INTO `rb_kota` VALUES ('160', '11', 'Jember');
INSERT INTO `rb_kota` VALUES ('164', '11', 'Jombang');
INSERT INTO `rb_kota` VALUES ('178', '11', 'Kediri');
INSERT INTO `rb_kota` VALUES ('179', '11', 'Kediri');
INSERT INTO `rb_kota` VALUES ('222', '11', 'Lamongan');
INSERT INTO `rb_kota` VALUES ('243', '11', 'Lumajang');
INSERT INTO `rb_kota` VALUES ('247', '11', 'Madiun');
INSERT INTO `rb_kota` VALUES ('248', '11', 'Madiun');
INSERT INTO `rb_kota` VALUES ('251', '11', 'Magetan');
INSERT INTO `rb_kota` VALUES ('256', '11', 'Malang');
INSERT INTO `rb_kota` VALUES ('255', '11', 'Malang');
INSERT INTO `rb_kota` VALUES ('289', '11', 'Mojokerto');
INSERT INTO `rb_kota` VALUES ('290', '11', 'Mojokerto');
INSERT INTO `rb_kota` VALUES ('305', '11', 'Nganjuk');
INSERT INTO `rb_kota` VALUES ('306', '11', 'Ngawi');
INSERT INTO `rb_kota` VALUES ('317', '11', 'Pacitan');
INSERT INTO `rb_kota` VALUES ('330', '11', 'Pamekasan');
INSERT INTO `rb_kota` VALUES ('342', '11', 'Pasuruan');
INSERT INTO `rb_kota` VALUES ('343', '11', 'Pasuruan');
INSERT INTO `rb_kota` VALUES ('363', '11', 'Ponorogo');
INSERT INTO `rb_kota` VALUES ('369', '11', 'Probolinggo');
INSERT INTO `rb_kota` VALUES ('370', '11', 'Probolinggo');
INSERT INTO `rb_kota` VALUES ('390', '11', 'Sampang');
INSERT INTO `rb_kota` VALUES ('409', '11', 'Sidoarjo');
INSERT INTO `rb_kota` VALUES ('418', '11', 'Situbondo');
INSERT INTO `rb_kota` VALUES ('441', '11', 'Sumenep');
INSERT INTO `rb_kota` VALUES ('444', '11', 'Surabaya');
INSERT INTO `rb_kota` VALUES ('487', '11', 'Trenggalek');
INSERT INTO `rb_kota` VALUES ('489', '11', 'Tuban');
INSERT INTO `rb_kota` VALUES ('492', '11', 'Tulungagung');
INSERT INTO `rb_kota` VALUES ('61', '12', 'Bengkayang');
INSERT INTO `rb_kota` VALUES ('168', '12', 'Kapuas Hulu');
INSERT INTO `rb_kota` VALUES ('176', '12', 'Kayong Utara');
INSERT INTO `rb_kota` VALUES ('195', '12', 'Ketapang');
INSERT INTO `rb_kota` VALUES ('208', '12', 'Kubu Raya');
INSERT INTO `rb_kota` VALUES ('228', '12', 'Landak');
INSERT INTO `rb_kota` VALUES ('279', '12', 'Melawi');
INSERT INTO `rb_kota` VALUES ('364', '12', 'Pontianak');
INSERT INTO `rb_kota` VALUES ('365', '12', 'Pontianak');
INSERT INTO `rb_kota` VALUES ('388', '12', 'Sambas');
INSERT INTO `rb_kota` VALUES ('391', '12', 'Sanggau');
INSERT INTO `rb_kota` VALUES ('395', '12', 'Sekadau');
INSERT INTO `rb_kota` VALUES ('415', '12', 'Singkawang');
INSERT INTO `rb_kota` VALUES ('417', '12', 'Sintang');
INSERT INTO `rb_kota` VALUES ('18', '13', 'Balangan');
INSERT INTO `rb_kota` VALUES ('33', '13', 'Banjar');
INSERT INTO `rb_kota` VALUES ('35', '13', 'Banjarbaru');
INSERT INTO `rb_kota` VALUES ('36', '13', 'Banjarmasin');
INSERT INTO `rb_kota` VALUES ('43', '13', 'Barito Kuala');
INSERT INTO `rb_kota` VALUES ('143', '13', 'Hulu Sungai Selatan');
INSERT INTO `rb_kota` VALUES ('144', '13', 'Hulu Sungai Tengah');
INSERT INTO `rb_kota` VALUES ('145', '13', 'Hulu Sungai Utara');
INSERT INTO `rb_kota` VALUES ('203', '13', 'Kotabaru');
INSERT INTO `rb_kota` VALUES ('446', '13', 'Tabalong');
INSERT INTO `rb_kota` VALUES ('452', '13', 'Tanah Bumbu');
INSERT INTO `rb_kota` VALUES ('454', '13', 'Tanah Laut');
INSERT INTO `rb_kota` VALUES ('466', '13', 'Tapin');
INSERT INTO `rb_kota` VALUES ('44', '14', 'Barito Selatan');
INSERT INTO `rb_kota` VALUES ('45', '14', 'Barito Timur');
INSERT INTO `rb_kota` VALUES ('46', '14', 'Barito Utara');
INSERT INTO `rb_kota` VALUES ('136', '14', 'Gunung Mas');
INSERT INTO `rb_kota` VALUES ('167', '14', 'Kapuas');
INSERT INTO `rb_kota` VALUES ('174', '14', 'Katingan');
INSERT INTO `rb_kota` VALUES ('205', '14', 'Kotawaringin Barat');
INSERT INTO `rb_kota` VALUES ('206', '14', 'Kotawaringin Timur');
INSERT INTO `rb_kota` VALUES ('221', '14', 'Lamandau');
INSERT INTO `rb_kota` VALUES ('296', '14', 'Murung Raya');
INSERT INTO `rb_kota` VALUES ('326', '14', 'Palangka Raya');
INSERT INTO `rb_kota` VALUES ('371', '14', 'Pulang Pisau');
INSERT INTO `rb_kota` VALUES ('405', '14', 'Seruyan');
INSERT INTO `rb_kota` VALUES ('432', '14', 'Sukamara');
INSERT INTO `rb_kota` VALUES ('19', '15', 'Balikpapan');
INSERT INTO `rb_kota` VALUES ('66', '15', 'Berau');
INSERT INTO `rb_kota` VALUES ('89', '15', 'Bontang');
INSERT INTO `rb_kota` VALUES ('214', '15', 'Kutai Barat');
INSERT INTO `rb_kota` VALUES ('215', '15', 'Kutai Kartanegara');
INSERT INTO `rb_kota` VALUES ('216', '15', 'Kutai Timur');
INSERT INTO `rb_kota` VALUES ('341', '15', 'Paser');
INSERT INTO `rb_kota` VALUES ('354', '15', 'Penajam Paser Utara');
INSERT INTO `rb_kota` VALUES ('387', '15', 'Samarinda');
INSERT INTO `rb_kota` VALUES ('96', '16', 'Bulungan (Bulongan)');
INSERT INTO `rb_kota` VALUES ('257', '16', 'Malinau');
INSERT INTO `rb_kota` VALUES ('311', '16', 'Nunukan');
INSERT INTO `rb_kota` VALUES ('450', '16', 'Tana Tidung');
INSERT INTO `rb_kota` VALUES ('467', '16', 'Tarakan');
INSERT INTO `rb_kota` VALUES ('48', '17', 'Batam');
INSERT INTO `rb_kota` VALUES ('71', '17', 'Bintan');
INSERT INTO `rb_kota` VALUES ('172', '17', 'Karimun');
INSERT INTO `rb_kota` VALUES ('184', '17', 'Kepulauan Anambas');
INSERT INTO `rb_kota` VALUES ('237', '17', 'Lingga');
INSERT INTO `rb_kota` VALUES ('302', '17', 'Natuna');
INSERT INTO `rb_kota` VALUES ('462', '17', 'Tanjung Pinang');
INSERT INTO `rb_kota` VALUES ('21', '18', 'Bandar Lampung');
INSERT INTO `rb_kota` VALUES ('223', '18', 'Lampung Barat');
INSERT INTO `rb_kota` VALUES ('224', '18', 'Lampung Selatan');
INSERT INTO `rb_kota` VALUES ('225', '18', 'Lampung Tengah');
INSERT INTO `rb_kota` VALUES ('226', '18', 'Lampung Timur');
INSERT INTO `rb_kota` VALUES ('227', '18', 'Lampung Utara');
INSERT INTO `rb_kota` VALUES ('282', '18', 'Mesuji');
INSERT INTO `rb_kota` VALUES ('283', '18', 'Metro');
INSERT INTO `rb_kota` VALUES ('355', '18', 'Pesawaran');
INSERT INTO `rb_kota` VALUES ('356', '18', 'Pesisir Barat');
INSERT INTO `rb_kota` VALUES ('368', '18', 'Pringsewu');
INSERT INTO `rb_kota` VALUES ('458', '18', 'Tanggamus');
INSERT INTO `rb_kota` VALUES ('490', '18', 'Tulang Bawang');
INSERT INTO `rb_kota` VALUES ('491', '18', 'Tulang Bawang Barat');
INSERT INTO `rb_kota` VALUES ('496', '18', 'Way Kanan');
INSERT INTO `rb_kota` VALUES ('14', '19', 'Ambon');
INSERT INTO `rb_kota` VALUES ('99', '19', 'Buru');
INSERT INTO `rb_kota` VALUES ('100', '19', 'Buru Selatan');
INSERT INTO `rb_kota` VALUES ('185', '19', 'Kepulauan Aru');
INSERT INTO `rb_kota` VALUES ('258', '19', 'Maluku Barat Daya');
INSERT INTO `rb_kota` VALUES ('259', '19', 'Maluku Tengah');
INSERT INTO `rb_kota` VALUES ('260', '19', 'Maluku Tenggara');
INSERT INTO `rb_kota` VALUES ('261', '19', 'Maluku Tenggara Barat');
INSERT INTO `rb_kota` VALUES ('400', '19', 'Seram Bagian Barat');
INSERT INTO `rb_kota` VALUES ('401', '19', 'Seram Bagian Timur');
INSERT INTO `rb_kota` VALUES ('488', '19', 'Tual');
INSERT INTO `rb_kota` VALUES ('138', '20', 'Halmahera Barat');
INSERT INTO `rb_kota` VALUES ('139', '20', 'Halmahera Selatan');
INSERT INTO `rb_kota` VALUES ('140', '20', 'Halmahera Tengah');
INSERT INTO `rb_kota` VALUES ('141', '20', 'Halmahera Timur');
INSERT INTO `rb_kota` VALUES ('142', '20', 'Halmahera Utara');
INSERT INTO `rb_kota` VALUES ('191', '20', 'Kepulauan Sula');
INSERT INTO `rb_kota` VALUES ('372', '20', 'Pulau Morotai');
INSERT INTO `rb_kota` VALUES ('477', '20', 'Ternate');
INSERT INTO `rb_kota` VALUES ('478', '20', 'Tidore Kepulauan');
INSERT INTO `rb_kota` VALUES ('1', '21', 'Aceh Barat');
INSERT INTO `rb_kota` VALUES ('2', '21', 'Aceh Barat Daya');
INSERT INTO `rb_kota` VALUES ('3', '21', 'Aceh Besar');
INSERT INTO `rb_kota` VALUES ('4', '21', 'Aceh Jaya');
INSERT INTO `rb_kota` VALUES ('5', '21', 'Aceh Selatan');
INSERT INTO `rb_kota` VALUES ('6', '21', 'Aceh Singkil');
INSERT INTO `rb_kota` VALUES ('7', '21', 'Aceh Tamiang');
INSERT INTO `rb_kota` VALUES ('8', '21', 'Aceh Tengah');
INSERT INTO `rb_kota` VALUES ('9', '21', 'Aceh Tenggara');
INSERT INTO `rb_kota` VALUES ('10', '21', 'Aceh Timur');
INSERT INTO `rb_kota` VALUES ('11', '21', 'Aceh Utara');
INSERT INTO `rb_kota` VALUES ('20', '21', 'Banda Aceh');
INSERT INTO `rb_kota` VALUES ('59', '21', 'Bener Meriah');
INSERT INTO `rb_kota` VALUES ('72', '21', 'Bireuen');
INSERT INTO `rb_kota` VALUES ('127', '21', 'Gayo Lues');
INSERT INTO `rb_kota` VALUES ('230', '21', 'Langsa');
INSERT INTO `rb_kota` VALUES ('235', '21', 'Lhokseumawe');
INSERT INTO `rb_kota` VALUES ('300', '21', 'Nagan Raya');
INSERT INTO `rb_kota` VALUES ('358', '21', 'Pidie');
INSERT INTO `rb_kota` VALUES ('359', '21', 'Pidie Jaya');
INSERT INTO `rb_kota` VALUES ('384', '21', 'Sabang');
INSERT INTO `rb_kota` VALUES ('414', '21', 'Simeulue');
INSERT INTO `rb_kota` VALUES ('429', '21', 'Subulussalam');
INSERT INTO `rb_kota` VALUES ('68', '22', 'Bima');
INSERT INTO `rb_kota` VALUES ('69', '22', 'Bima');
INSERT INTO `rb_kota` VALUES ('118', '22', 'Dompu');
INSERT INTO `rb_kota` VALUES ('238', '22', 'Lombok Barat');
INSERT INTO `rb_kota` VALUES ('239', '22', 'Lombok Tengah');
INSERT INTO `rb_kota` VALUES ('240', '22', 'Lombok Timur');
INSERT INTO `rb_kota` VALUES ('241', '22', 'Lombok Utara');
INSERT INTO `rb_kota` VALUES ('276', '22', 'Mataram');
INSERT INTO `rb_kota` VALUES ('438', '22', 'Sumbawa');
INSERT INTO `rb_kota` VALUES ('439', '22', 'Sumbawa Barat');
INSERT INTO `rb_kota` VALUES ('13', '23', 'Alor');
INSERT INTO `rb_kota` VALUES ('58', '23', 'Belu');
INSERT INTO `rb_kota` VALUES ('122', '23', 'Ende');
INSERT INTO `rb_kota` VALUES ('125', '23', 'Flores Timur');
INSERT INTO `rb_kota` VALUES ('212', '23', 'Kupang');
INSERT INTO `rb_kota` VALUES ('213', '23', 'Kupang');
INSERT INTO `rb_kota` VALUES ('234', '23', 'Lembata');
INSERT INTO `rb_kota` VALUES ('269', '23', 'Manggarai');
INSERT INTO `rb_kota` VALUES ('270', '23', 'Manggarai Barat');
INSERT INTO `rb_kota` VALUES ('271', '23', 'Manggarai Timur');
INSERT INTO `rb_kota` VALUES ('301', '23', 'Nagekeo');
INSERT INTO `rb_kota` VALUES ('304', '23', 'Ngada');
INSERT INTO `rb_kota` VALUES ('383', '23', 'Rote Ndao');
INSERT INTO `rb_kota` VALUES ('385', '23', 'Sabu Raijua');
INSERT INTO `rb_kota` VALUES ('412', '23', 'Sikka');
INSERT INTO `rb_kota` VALUES ('434', '23', 'Sumba Barat');
INSERT INTO `rb_kota` VALUES ('435', '23', 'Sumba Barat Daya');
INSERT INTO `rb_kota` VALUES ('436', '23', 'Sumba Tengah');
INSERT INTO `rb_kota` VALUES ('437', '23', 'Sumba Timur');
INSERT INTO `rb_kota` VALUES ('479', '23', 'Timor Tengah Selatan');
INSERT INTO `rb_kota` VALUES ('480', '23', 'Timor Tengah Utara');
INSERT INTO `rb_kota` VALUES ('16', '24', 'Asmat');
INSERT INTO `rb_kota` VALUES ('67', '24', 'Biak Numfor');
INSERT INTO `rb_kota` VALUES ('90', '24', 'Boven Digoel');
INSERT INTO `rb_kota` VALUES ('111', '24', 'Deiyai (Deliyai)');
INSERT INTO `rb_kota` VALUES ('117', '24', 'Dogiyai');
INSERT INTO `rb_kota` VALUES ('150', '24', 'Intan Jaya');
INSERT INTO `rb_kota` VALUES ('157', '24', 'Jayapura');
INSERT INTO `rb_kota` VALUES ('158', '24', 'Jayapura');
INSERT INTO `rb_kota` VALUES ('159', '24', 'Jayawijaya');
INSERT INTO `rb_kota` VALUES ('180', '24', 'Keerom');
INSERT INTO `rb_kota` VALUES ('193', '24', 'Kepulauan Yapen (Yapen Waropen)');
INSERT INTO `rb_kota` VALUES ('231', '24', 'Lanny Jaya');
INSERT INTO `rb_kota` VALUES ('263', '24', 'Mamberamo Raya');
INSERT INTO `rb_kota` VALUES ('264', '24', 'Mamberamo Tengah');
INSERT INTO `rb_kota` VALUES ('274', '24', 'Mappi');
INSERT INTO `rb_kota` VALUES ('281', '24', 'Merauke');
INSERT INTO `rb_kota` VALUES ('284', '24', 'Mimika');
INSERT INTO `rb_kota` VALUES ('299', '24', 'Nabire');
INSERT INTO `rb_kota` VALUES ('303', '24', 'Nduga');
INSERT INTO `rb_kota` VALUES ('335', '24', 'Paniai');
INSERT INTO `rb_kota` VALUES ('347', '24', 'Pegunungan Bintang');
INSERT INTO `rb_kota` VALUES ('373', '24', 'Puncak');
INSERT INTO `rb_kota` VALUES ('374', '24', 'Puncak Jaya');
INSERT INTO `rb_kota` VALUES ('392', '24', 'Sarmi');
INSERT INTO `rb_kota` VALUES ('443', '24', 'Supiori');
INSERT INTO `rb_kota` VALUES ('484', '24', 'Tolikara');
INSERT INTO `rb_kota` VALUES ('495', '24', 'Waropen');
INSERT INTO `rb_kota` VALUES ('499', '24', 'Yahukimo');
INSERT INTO `rb_kota` VALUES ('500', '24', 'Yalimo');
INSERT INTO `rb_kota` VALUES ('124', '25', 'Fakfak');
INSERT INTO `rb_kota` VALUES ('165', '25', 'Kaimana');
INSERT INTO `rb_kota` VALUES ('272', '25', 'Manokwari');
INSERT INTO `rb_kota` VALUES ('273', '25', 'Manokwari Selatan');
INSERT INTO `rb_kota` VALUES ('277', '25', 'Maybrat');
INSERT INTO `rb_kota` VALUES ('346', '25', 'Pegunungan Arfak');
INSERT INTO `rb_kota` VALUES ('378', '25', 'Raja Ampat');
INSERT INTO `rb_kota` VALUES ('424', '25', 'Sorong');
INSERT INTO `rb_kota` VALUES ('425', '25', 'Sorong');
INSERT INTO `rb_kota` VALUES ('426', '25', 'Sorong Selatan');
INSERT INTO `rb_kota` VALUES ('449', '25', 'Tambrauw');
INSERT INTO `rb_kota` VALUES ('474', '25', 'Teluk Bintuni');
INSERT INTO `rb_kota` VALUES ('475', '25', 'Teluk Wondama');
INSERT INTO `rb_kota` VALUES ('60', '26', 'Bengkalis');
INSERT INTO `rb_kota` VALUES ('120', '26', 'Dumai');
INSERT INTO `rb_kota` VALUES ('147', '26', 'Indragiri Hilir');
INSERT INTO `rb_kota` VALUES ('148', '26', 'Indragiri Hulu');
INSERT INTO `rb_kota` VALUES ('166', '26', 'Kampar');
INSERT INTO `rb_kota` VALUES ('187', '26', 'Kepulauan Meranti');
INSERT INTO `rb_kota` VALUES ('207', '26', 'Kuantan Singingi');
INSERT INTO `rb_kota` VALUES ('350', '26', 'Pekanbaru');
INSERT INTO `rb_kota` VALUES ('351', '26', 'Pelalawan');
INSERT INTO `rb_kota` VALUES ('381', '26', 'Rokan Hilir');
INSERT INTO `rb_kota` VALUES ('382', '26', 'Rokan Hulu');
INSERT INTO `rb_kota` VALUES ('406', '26', 'Siak');
INSERT INTO `rb_kota` VALUES ('253', '27', 'Majene');
INSERT INTO `rb_kota` VALUES ('262', '27', 'Mamasa');
INSERT INTO `rb_kota` VALUES ('265', '27', 'Mamuju');
INSERT INTO `rb_kota` VALUES ('266', '27', 'Mamuju Utara');
INSERT INTO `rb_kota` VALUES ('362', '27', 'Polewali Mandar');
INSERT INTO `rb_kota` VALUES ('38', '28', 'Bantaeng');
INSERT INTO `rb_kota` VALUES ('47', '28', 'Barru');
INSERT INTO `rb_kota` VALUES ('87', '28', 'Bone');
INSERT INTO `rb_kota` VALUES ('95', '28', 'Bulukumba');
INSERT INTO `rb_kota` VALUES ('123', '28', 'Enrekang');
INSERT INTO `rb_kota` VALUES ('132', '28', 'Gowa');
INSERT INTO `rb_kota` VALUES ('162', '28', 'Jeneponto');
INSERT INTO `rb_kota` VALUES ('244', '28', 'Luwu');
INSERT INTO `rb_kota` VALUES ('245', '28', 'Luwu Timur');
INSERT INTO `rb_kota` VALUES ('246', '28', 'Luwu Utara');
INSERT INTO `rb_kota` VALUES ('254', '28', 'Makassar');
INSERT INTO `rb_kota` VALUES ('275', '28', 'Maros');
INSERT INTO `rb_kota` VALUES ('328', '28', 'Palopo');
INSERT INTO `rb_kota` VALUES ('333', '28', 'Pangkajene Kepulauan');
INSERT INTO `rb_kota` VALUES ('336', '28', 'Parepare');
INSERT INTO `rb_kota` VALUES ('360', '28', 'Pinrang');
INSERT INTO `rb_kota` VALUES ('396', '28', 'Selayar (Kepulauan Selayar)');
INSERT INTO `rb_kota` VALUES ('408', '28', 'Sidenreng Rappang/Rapang');
INSERT INTO `rb_kota` VALUES ('416', '28', 'Sinjai');
INSERT INTO `rb_kota` VALUES ('423', '28', 'Soppeng');
INSERT INTO `rb_kota` VALUES ('448', '28', 'Takalar');
INSERT INTO `rb_kota` VALUES ('451', '28', 'Tana Toraja');
INSERT INTO `rb_kota` VALUES ('486', '28', 'Toraja Utara');
INSERT INTO `rb_kota` VALUES ('493', '28', 'Wajo');
INSERT INTO `rb_kota` VALUES ('25', '29', 'Banggai');
INSERT INTO `rb_kota` VALUES ('26', '29', 'Banggai Kepulauan');
INSERT INTO `rb_kota` VALUES ('98', '29', 'Buol');
INSERT INTO `rb_kota` VALUES ('119', '29', 'Donggala');
INSERT INTO `rb_kota` VALUES ('291', '29', 'Morowali');
INSERT INTO `rb_kota` VALUES ('329', '29', 'Palu');
INSERT INTO `rb_kota` VALUES ('338', '29', 'Parigi Moutong');
INSERT INTO `rb_kota` VALUES ('366', '29', 'Poso');
INSERT INTO `rb_kota` VALUES ('410', '29', 'Sigi');
INSERT INTO `rb_kota` VALUES ('482', '29', 'Tojo Una-Una');
INSERT INTO `rb_kota` VALUES ('483', '29', 'Toli-Toli');
INSERT INTO `rb_kota` VALUES ('53', '30', 'Bau-Bau');
INSERT INTO `rb_kota` VALUES ('85', '30', 'Bombana');
INSERT INTO `rb_kota` VALUES ('101', '30', 'Buton');
INSERT INTO `rb_kota` VALUES ('102', '30', 'Buton Utara');
INSERT INTO `rb_kota` VALUES ('182', '30', 'Kendari');
INSERT INTO `rb_kota` VALUES ('198', '30', 'Kolaka');
INSERT INTO `rb_kota` VALUES ('199', '30', 'Kolaka Utara');
INSERT INTO `rb_kota` VALUES ('200', '30', 'Konawe');
INSERT INTO `rb_kota` VALUES ('201', '30', 'Konawe Selatan');
INSERT INTO `rb_kota` VALUES ('202', '30', 'Konawe Utara');
INSERT INTO `rb_kota` VALUES ('295', '30', 'Muna');
INSERT INTO `rb_kota` VALUES ('494', '30', 'Wakatobi');
INSERT INTO `rb_kota` VALUES ('73', '31', 'Bitung');
INSERT INTO `rb_kota` VALUES ('81', '31', 'Bolaang Mongondow (Bolmong)');
INSERT INTO `rb_kota` VALUES ('82', '31', 'Bolaang Mongondow Selatan');
INSERT INTO `rb_kota` VALUES ('83', '31', 'Bolaang Mongondow Timur');
INSERT INTO `rb_kota` VALUES ('84', '31', 'Bolaang Mongondow Utara');
INSERT INTO `rb_kota` VALUES ('188', '31', 'Kepulauan Sangihe');
INSERT INTO `rb_kota` VALUES ('190', '31', 'Kepulauan Siau Tagulandang Biaro (Sitaro)');
INSERT INTO `rb_kota` VALUES ('192', '31', 'Kepulauan Talaud');
INSERT INTO `rb_kota` VALUES ('204', '31', 'Kotamobagu');
INSERT INTO `rb_kota` VALUES ('267', '31', 'Manado');
INSERT INTO `rb_kota` VALUES ('285', '31', 'Minahasa');
INSERT INTO `rb_kota` VALUES ('286', '31', 'Minahasa Selatan');
INSERT INTO `rb_kota` VALUES ('287', '31', 'Minahasa Tenggara');
INSERT INTO `rb_kota` VALUES ('288', '31', 'Minahasa Utara');
INSERT INTO `rb_kota` VALUES ('485', '31', 'Tomohon');
INSERT INTO `rb_kota` VALUES ('12', '32', 'Agam');
INSERT INTO `rb_kota` VALUES ('93', '32', 'Bukittinggi');
INSERT INTO `rb_kota` VALUES ('116', '32', 'Dharmasraya');
INSERT INTO `rb_kota` VALUES ('186', '32', 'Kepulauan Mentawai');
INSERT INTO `rb_kota` VALUES ('236', '32', 'Lima Puluh Koto/Kota');
INSERT INTO `rb_kota` VALUES ('318', '32', 'Padang');
INSERT INTO `rb_kota` VALUES ('321', '32', 'Padang Panjang');
INSERT INTO `rb_kota` VALUES ('322', '32', 'Padang Pariaman');
INSERT INTO `rb_kota` VALUES ('337', '32', 'Pariaman');
INSERT INTO `rb_kota` VALUES ('339', '32', 'Pasaman');
INSERT INTO `rb_kota` VALUES ('340', '32', 'Pasaman Barat');
INSERT INTO `rb_kota` VALUES ('345', '32', 'Payakumbuh');
INSERT INTO `rb_kota` VALUES ('357', '32', 'Pesisir Selatan');
INSERT INTO `rb_kota` VALUES ('394', '32', 'Sawah Lunto');
INSERT INTO `rb_kota` VALUES ('411', '32', 'Sijunjung (Sawah Lunto Sijunjung)');
INSERT INTO `rb_kota` VALUES ('420', '32', 'Solok');
INSERT INTO `rb_kota` VALUES ('421', '32', 'Solok');
INSERT INTO `rb_kota` VALUES ('422', '32', 'Solok Selatan');
INSERT INTO `rb_kota` VALUES ('453', '32', 'Tanah Datar');
INSERT INTO `rb_kota` VALUES ('40', '33', 'Banyuasin');
INSERT INTO `rb_kota` VALUES ('121', '33', 'Empat Lawang');
INSERT INTO `rb_kota` VALUES ('220', '33', 'Lahat');
INSERT INTO `rb_kota` VALUES ('242', '33', 'Lubuk Linggau');
INSERT INTO `rb_kota` VALUES ('292', '33', 'Muara Enim');
INSERT INTO `rb_kota` VALUES ('297', '33', 'Musi Banyuasin');
INSERT INTO `rb_kota` VALUES ('298', '33', 'Musi Rawas');
INSERT INTO `rb_kota` VALUES ('312', '33', 'Ogan Ilir');
INSERT INTO `rb_kota` VALUES ('313', '33', 'Ogan Komering Ilir');
INSERT INTO `rb_kota` VALUES ('314', '33', 'Ogan Komering Ulu');
INSERT INTO `rb_kota` VALUES ('315', '33', 'Ogan Komering Ulu Selatan');
INSERT INTO `rb_kota` VALUES ('316', '33', 'Ogan Komering Ulu Timur');
INSERT INTO `rb_kota` VALUES ('324', '33', 'Pagar Alam');
INSERT INTO `rb_kota` VALUES ('327', '33', 'Palembang');
INSERT INTO `rb_kota` VALUES ('367', '33', 'Prabumulih');
INSERT INTO `rb_kota` VALUES ('15', '34', 'Asahan');
INSERT INTO `rb_kota` VALUES ('52', '34', 'Batu Bara');
INSERT INTO `rb_kota` VALUES ('70', '34', 'Binjai');
INSERT INTO `rb_kota` VALUES ('110', '34', 'Dairi');
INSERT INTO `rb_kota` VALUES ('112', '34', 'Deli Serdang');
INSERT INTO `rb_kota` VALUES ('137', '34', 'Gunungsitoli');
INSERT INTO `rb_kota` VALUES ('146', '34', 'Humbang Hasundutan');
INSERT INTO `rb_kota` VALUES ('173', '34', 'Karo');
INSERT INTO `rb_kota` VALUES ('217', '34', 'Labuhan Batu');
INSERT INTO `rb_kota` VALUES ('218', '34', 'Labuhan Batu Selatan');
INSERT INTO `rb_kota` VALUES ('219', '34', 'Labuhan Batu Utara');
INSERT INTO `rb_kota` VALUES ('229', '34', 'Langkat');
INSERT INTO `rb_kota` VALUES ('268', '34', 'Mandailing Natal');
INSERT INTO `rb_kota` VALUES ('278', '34', 'Medan');
INSERT INTO `rb_kota` VALUES ('307', '34', 'Nias');
INSERT INTO `rb_kota` VALUES ('308', '34', 'Nias Barat');
INSERT INTO `rb_kota` VALUES ('309', '34', 'Nias Selatan');
INSERT INTO `rb_kota` VALUES ('310', '34', 'Nias Utara');
INSERT INTO `rb_kota` VALUES ('319', '34', 'Padang Lawas');
INSERT INTO `rb_kota` VALUES ('320', '34', 'Padang Lawas Utara');
INSERT INTO `rb_kota` VALUES ('323', '34', 'Padang Sidempuan');
INSERT INTO `rb_kota` VALUES ('325', '34', 'Pakpak Bharat');
INSERT INTO `rb_kota` VALUES ('353', '34', 'Pematang Siantar');
INSERT INTO `rb_kota` VALUES ('389', '34', 'Samosir');
INSERT INTO `rb_kota` VALUES ('404', '34', 'Serdang Bedagai');
INSERT INTO `rb_kota` VALUES ('407', '34', 'Sibolga');
INSERT INTO `rb_kota` VALUES ('413', '34', 'Simalungun');
INSERT INTO `rb_kota` VALUES ('459', '34', 'Tanjung Balai');
INSERT INTO `rb_kota` VALUES ('463', '34', 'Tapanuli Selatan');
INSERT INTO `rb_kota` VALUES ('464', '34', 'Tapanuli Tengah');
INSERT INTO `rb_kota` VALUES ('465', '34', 'Tapanuli Utara');
INSERT INTO `rb_kota` VALUES ('470', '34', 'Tebing Tinggi');
INSERT INTO `rb_kota` VALUES ('481', '34', 'Toba Samosir');

-- ----------------------------
-- Table structure for rb_pembayaran_bonus
-- ----------------------------
DROP TABLE IF EXISTS `rb_pembayaran_bonus`;
CREATE TABLE `rb_pembayaran_bonus` (
  `id_pembayaran_bonus` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(60) NOT NULL,
  `nominal_bayar` int(10) NOT NULL,
  `waktu_bayar` date NOT NULL,
  PRIMARY KEY (`id_pembayaran_bonus`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_pembayaran_bonus
-- ----------------------------
INSERT INTO `rb_pembayaran_bonus` VALUES ('1', 'arsenio', '50000', '2017-04-11');
INSERT INTO `rb_pembayaran_bonus` VALUES ('2', 'robby', '70000', '2017-04-11');

-- ----------------------------
-- Table structure for rb_pembelian
-- ----------------------------
DROP TABLE IF EXISTS `rb_pembelian`;
CREATE TABLE `rb_pembelian` (
  `id_pembelian` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pembelian` varchar(50) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `waktu_beli` datetime NOT NULL,
  PRIMARY KEY (`id_pembelian`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_pembelian
-- ----------------------------
INSERT INTO `rb_pembelian` VALUES ('1', 'PO-0001', '1', '2017-05-23 10:13:05');
INSERT INTO `rb_pembelian` VALUES ('3', 'PO-0003', '1', '2017-05-27 14:58:50');
INSERT INTO `rb_pembelian` VALUES ('6', 'PO-0005', '1', '2017-06-01 10:29:39');

-- ----------------------------
-- Table structure for rb_pembelian_detail
-- ----------------------------
DROP TABLE IF EXISTS `rb_pembelian_detail`;
CREATE TABLE `rb_pembelian_detail` (
  `id_pembelian_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_pesan` int(11) NOT NULL,
  `jumlah_pesan` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `id_varian` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pembelian_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_pembelian_detail
-- ----------------------------
INSERT INTO `rb_pembelian_detail` VALUES ('1', '1', '1', '260000', '100', 'pcs', null);
INSERT INTO `rb_pembelian_detail` VALUES ('2', '1', '2', '455000', '150', 'pcs', null);
INSERT INTO `rb_pembelian_detail` VALUES ('9', '3', '1', '600000', '3', 'pcs', null);
INSERT INTO `rb_pembelian_detail` VALUES ('7', '3', '2', '3000000', '43', 'pcs', null);
INSERT INTO `rb_pembelian_detail` VALUES ('16', '6', '13', '45900', '16', 'pcs', null);
INSERT INTO `rb_pembelian_detail` VALUES ('17', '6', '12', '490000', '12', 'unit', null);
INSERT INTO `rb_pembelian_detail` VALUES ('18', '6', '11', '8299000', '10', 'pcs', null);
INSERT INTO `rb_pembelian_detail` VALUES ('19', '6', '9', '584000', '15', 'unit', null);
INSERT INTO `rb_pembelian_detail` VALUES ('20', '6', '8', '275000', '6', 'unit', null);
INSERT INTO `rb_pembelian_detail` VALUES ('21', '6', '7', '879000', '11', 'unit', null);
INSERT INTO `rb_pembelian_detail` VALUES ('22', '6', '3', '14998000', '1', 'unit', null);
INSERT INTO `rb_pembelian_detail` VALUES ('23', '6', '0', '0', '0', '', null);
INSERT INTO `rb_pembelian_detail` VALUES ('28', '6', '47', '129000', '2', 'unit', '2');

-- ----------------------------
-- Table structure for rb_pencairan_bonus
-- ----------------------------
DROP TABLE IF EXISTS `rb_pencairan_bonus`;
CREATE TABLE `rb_pencairan_bonus` (
  `id_pencairan_bonus` int(11) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `bonus_referral` int(11) NOT NULL,
  `waktu_pencairan` datetime NOT NULL,
  PRIMARY KEY (`id_pencairan_bonus`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_pencairan_bonus
-- ----------------------------
INSERT INTO `rb_pencairan_bonus` VALUES ('2', '1', '20000', '2017-06-04 13:39:15');
INSERT INTO `rb_pencairan_bonus` VALUES ('4', '1', '24450', '2019-03-22 08:18:17');

-- ----------------------------
-- Table structure for rb_pencairan_reward
-- ----------------------------
DROP TABLE IF EXISTS `rb_pencairan_reward`;
CREATE TABLE `rb_pencairan_reward` (
  `id_pencairan_reward` int(11) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `id_reward` int(11) NOT NULL,
  `reward_date` varchar(10) NOT NULL,
  `waktu_pencairan` datetime NOT NULL,
  PRIMARY KEY (`id_pencairan_reward`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_pencairan_reward
-- ----------------------------
INSERT INTO `rb_pencairan_reward` VALUES ('5', '2', '1', '2019-03', '2019-03-22 09:12:01');

-- ----------------------------
-- Table structure for rb_penjualan
-- ----------------------------
DROP TABLE IF EXISTS `rb_penjualan`;
CREATE TABLE `rb_penjualan` (
  `id_penjualan` int(11) NOT NULL AUTO_INCREMENT,
  `kode_transaksi` varchar(50) NOT NULL,
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(150) DEFAULT NULL,
  `id_penjual` int(11) NOT NULL DEFAULT 0,
  `status_pembeli` enum('reseller','konsumen') NOT NULL,
  `status_penjual` enum('admin','reseller') NOT NULL,
  `kurir` varchar(255) NOT NULL,
  `service` varchar(255) NOT NULL,
  `ongkir` int(11) NOT NULL,
  `waktu_transaksi` datetime NOT NULL,
  `proses` enum('0','1','2') NOT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=MyISAM AUTO_INCREMENT=179 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_penjualan
-- ----------------------------
INSERT INTO `rb_penjualan` VALUES ('2', 'TRX-0002', '2', null, '1', 'reseller', 'admin', '', '', '0', '2017-05-28 08:23:40', '1');
INSERT INTO `rb_penjualan` VALUES ('3', 'TRX-0003', '3', null, '1', 'reseller', 'admin', '', '', '0', '2017-05-28 09:00:33', '0');
INSERT INTO `rb_penjualan` VALUES ('4', 'TRX-0004', '2', null, '1', 'reseller', 'admin', '', '', '0', '2017-05-30 10:50:55', '1');
INSERT INTO `rb_penjualan` VALUES ('12', 'TRX-20170531115350', '1', null, '1', 'konsumen', 'reseller', '', '', '0', '2017-05-31 11:53:50', '0');
INSERT INTO `rb_penjualan` VALUES ('14', 'TRX-20170601121916', '2', null, '1', 'reseller', 'admin', '', '', '0', '2017-06-01 12:19:16', '1');
INSERT INTO `rb_penjualan` VALUES ('15', 'TRX-20170601171840', '2', null, '1', 'reseller', 'admin', '', '', '0', '2017-06-01 17:18:40', '0');
INSERT INTO `rb_penjualan` VALUES ('20', 'TRX-20170602152730', '1', null, '1', 'konsumen', 'reseller', '', '', '0', '2017-06-02 15:27:30', '0');
INSERT INTO `rb_penjualan` VALUES ('73', 'TRX-20190216111223', '1', null, '2', 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', '17000', '2019-02-16 11:12:51', '0');
INSERT INTO `rb_penjualan` VALUES ('74', 'TRX-20190216112320', '1', null, '2', 'konsumen', 'reseller', 'jne', 'YES', '17000', '2019-02-16 11:23:38', '0');
INSERT INTO `rb_penjualan` VALUES ('42', 'TRX-20170604112343', '3', null, '1', 'reseller', 'admin', '', '', '0', '2017-06-04 11:23:47', '1');
INSERT INTO `rb_penjualan` VALUES ('43', 'TRX-20170604112516', '3', null, '3', 'konsumen', 'reseller', '', '', '0', '2017-06-04 11:25:16', '1');
INSERT INTO `rb_penjualan` VALUES ('53', 'TRX-20180725083202', '1', null, '2', 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', '76500', '2018-07-25 08:32:02', '0');
INSERT INTO `rb_penjualan` VALUES ('79', 'TRX-20190223150806', '1', null, '2', 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', '34000', '2019-02-23 15:08:06', '1');
INSERT INTO `rb_penjualan` VALUES ('58', 'TRX-20180912144318', '2', null, '1', 'reseller', 'admin', '', '', '0', '2018-09-12 14:43:18', '2');
INSERT INTO `rb_penjualan` VALUES ('61', 'TRX-20181223070005', '1', null, '2', 'konsumen', 'reseller', 'tiki', 'ONS', '10000', '2018-12-23 07:00:16', '2');
INSERT INTO `rb_penjualan` VALUES ('62', 'TRX-20181223080117', '1', null, '2', 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', '8000', '2018-12-23 08:01:17', '0');
INSERT INTO `rb_penjualan` VALUES ('63', 'TRX-20181223080145', '26', null, '2', 'konsumen', 'reseller', 'tiki', 'ONS', '17000', '2018-12-23 08:09:17', '0');
INSERT INTO `rb_penjualan` VALUES ('67', 'TRX-20181226072823', '2', null, '1', 'reseller', 'admin', '', '', '0', '2018-12-26 07:28:23', '0');
INSERT INTO `rb_penjualan` VALUES ('68', 'TRX-20181226073542', '2', null, '1', 'reseller', 'admin', '', '', '0', '2018-12-26 07:35:42', '2');
INSERT INTO `rb_penjualan` VALUES ('85', 'TRX-20190321120328', '1', null, '2', 'konsumen', 'reseller', 'jne', 'YES', '17000', '2019-03-21 12:03:28', '1');
INSERT INTO `rb_penjualan` VALUES ('86', 'TRX-20190321120745', '1', null, '2', 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', '11000', '2019-03-21 12:07:45', '1');
INSERT INTO `rb_penjualan` VALUES ('87', 'TRX-20190321121109', '2', null, '2', 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', '17000', '2019-03-21 12:11:09', '2');
INSERT INTO `rb_penjualan` VALUES ('93', 'TRX-20190322063829', '1', null, '1', 'reseller', 'admin', '', '', '0', '2019-03-22 06:38:29', '1');
INSERT INTO `rb_penjualan` VALUES ('94', 'TRX-20190322063914', '1', null, '1', 'reseller', 'admin', '', 'TRX-20190322063829', '0', '2019-03-22 06:39:14', '1');
INSERT INTO `rb_penjualan` VALUES ('97', 'TRX-20190324101743', '3', null, '1', 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', '0', '2019-03-24 10:17:43', '1');
INSERT INTO `rb_penjualan` VALUES ('100', 'TRX-20190324110240', '1', null, '1', 'konsumen', 'reseller', '', '', '0', '2019-03-24 11:16:41', '0');
INSERT INTO `rb_penjualan` VALUES ('101', 'TRX-20190325103704', '1', null, '2', 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', '17000', '2019-03-25 10:38:02', '0');
INSERT INTO `rb_penjualan` VALUES ('105', 'TRX-20190703062416', '1', null, '1', 'konsumen', 'reseller', 'pos', 'Express Sameday Barang', '18000', '2019-07-03 06:24:16', '2');
INSERT INTO `rb_penjualan` VALUES ('106', 'TRX-20190703074508', '1', null, '2', 'konsumen', 'reseller', 'pos', 'Express Next Day Barang', '17000', '2019-07-03 07:45:08', '2');
INSERT INTO `rb_penjualan` VALUES ('107', 'TRX-20190817071150', '1', null, '3', 'konsumen', 'reseller', '', '', '0', '2019-08-17 07:11:50', '0');
INSERT INTO `rb_penjualan` VALUES ('108', 'TRX-20190831204112', '1', null, '3', 'konsumen', 'reseller', 'tiki', 'REG', '216000', '2019-08-31 20:41:12', '0');
INSERT INTO `rb_penjualan` VALUES ('109', 'TRX-20190901064338', '1', null, '1', 'konsumen', 'reseller', '', '', '0', '2019-09-01 06:52:03', '0');
INSERT INTO `rb_penjualan` VALUES ('110', 'TRX-20190912060351', '1', null, '3', 'konsumen', 'reseller', '', '', '0', '2019-09-12 06:03:51', '0');
INSERT INTO `rb_penjualan` VALUES ('111', 'TRX-20190912062459', '1', null, '3', 'konsumen', 'reseller', 'cod', 'Cash on delivery', '1', '2019-09-12 06:24:59', '0');
INSERT INTO `rb_penjualan` VALUES ('112', 'TRX-20190918161815', '1', null, '3', 'konsumen', 'reseller', 'cod', '1', '1000', '2019-09-18 16:18:15', '0');
INSERT INTO `rb_penjualan` VALUES ('113', 'TRX-20190918164426', '1', null, '3', 'konsumen', 'reseller', '', '', '0', '2019-09-18 16:44:26', '0');
INSERT INTO `rb_penjualan` VALUES ('114', 'TRX-20190919060658', '1', null, '1', 'konsumen', 'reseller', 'cod', 'Cash on delivery', '6500', '2019-09-19 06:06:58', '0');
INSERT INTO `rb_penjualan` VALUES ('115', 'TRX-20190919064148', '1', null, '1', 'konsumen', 'reseller', '', '', '0', '2019-09-19 06:41:48', '0');
INSERT INTO `rb_penjualan` VALUES ('117', 'TRX-20200225021116', '18', null, '11', 'konsumen', 'reseller', '', '', '0', '2020-02-25 02:11:21', '0');
INSERT INTO `rb_penjualan` VALUES ('124', 'TRX-20200225101519', '5', null, '12', 'konsumen', 'reseller', '', '', '0', '2020-02-25 10:15:34', '1');
INSERT INTO `rb_penjualan` VALUES ('126', 'TRX-20200225101920', '12', null, '1', 'reseller', 'admin', '', 'TRX-20200225101639', '0', '2020-02-25 10:19:20', '1');
INSERT INTO `rb_penjualan` VALUES ('129', 'TRX-20200226130257', '27', null, '12', 'konsumen', 'reseller', '', '', '0', '2020-02-26 13:03:02', '1');
INSERT INTO `rb_penjualan` VALUES ('131', 'TRX-20200227002657', '27', null, '11', 'konsumen', 'reseller', '', '', '0', '2020-02-27 00:26:57', '0');
INSERT INTO `rb_penjualan` VALUES ('132', 'TRX-20200227032113', '12', null, '1', 'reseller', 'admin', '', '', '0', '2020-02-27 03:21:13', '0');
INSERT INTO `rb_penjualan` VALUES ('136', 'TRX-20200228035326', '0', 'John Doe', '12', 'konsumen', 'reseller', '', '', '0', '2020-02-28 03:53:47', '1');
INSERT INTO `rb_penjualan` VALUES ('137', 'TRX-20200419150326', '3', null, '11', 'konsumen', 'reseller', '', '', '0', '2020-04-19 15:03:29', '0');
INSERT INTO `rb_penjualan` VALUES ('141', 'TRX-20200611231103', '28', null, '1', 'konsumen', 'reseller', '', '', '0', '2020-06-11 23:11:03', '0');
INSERT INTO `rb_penjualan` VALUES ('142', 'TRX-20200611232554', '28', null, '2', 'konsumen', 'reseller', 'jne', 'YES', '10000', '2020-06-11 23:25:54', '0');
INSERT INTO `rb_penjualan` VALUES ('143', 'TRX-20200611232836', '13', null, '1', 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', '0', '2020-06-11 23:28:36', '1');
INSERT INTO `rb_penjualan` VALUES ('151', 'TRX-20200615014726', '0', 'Nama Konsumen', '13', 'konsumen', 'reseller', '', '', '0', '2020-06-15 01:47:34', '1');
INSERT INTO `rb_penjualan` VALUES ('152', 'TRX-20200615014853', '0', 'Nama Konsumen', '13', 'konsumen', 'reseller', '', '', '0', '2020-06-15 01:49:17', '1');
INSERT INTO `rb_penjualan` VALUES ('146', 'TRX-20200611233334', '28', null, '2', 'konsumen', 'reseller', 'jne', 'CTC', '6000', '2020-06-11 23:33:34', '0');
INSERT INTO `rb_penjualan` VALUES ('147', 'TRX-20200611233355', '28', null, '2', 'konsumen', 'reseller', '', '', '0', '2020-06-11 23:33:55', '0');
INSERT INTO `rb_penjualan` VALUES ('158', 'TRX-20200621185100', '30', null, '15', 'konsumen', 'reseller', '', '', '0', '2020-06-21 18:51:16', '1');
INSERT INTO `rb_penjualan` VALUES ('159', 'TRX-20200621192352', '30', null, '15', 'konsumen', 'reseller', 'jne', 'CTC', '8000', '2020-06-21 19:23:52', '0');
INSERT INTO `rb_penjualan` VALUES ('160', 'TRX-20200621200123', '30', null, '15', 'konsumen', 'reseller', 'jne', 'CTC', '8000', '2020-06-21 20:01:23', '0');
INSERT INTO `rb_penjualan` VALUES ('161', 'TRX-20200621203309', '15', null, '1', 'reseller', 'admin', '', '', '0', '2020-06-21 20:33:09', '0');
INSERT INTO `rb_penjualan` VALUES ('162', 'TRX-20200622212517', '32', null, '2', 'konsumen', 'reseller', '', '', '0', '2020-06-22 21:25:17', '0');
INSERT INTO `rb_penjualan` VALUES ('163', 'TRX-20200622234734', '15', null, '1', 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', '0', '2020-06-22 23:47:34', '1');
INSERT INTO `rb_penjualan` VALUES ('164', 'TRX-20200622234810', '15', null, '1', 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', '0', '2020-06-22 23:48:10', '1');
INSERT INTO `rb_penjualan` VALUES ('165', 'TRX-20200625233545', '30', null, '15', 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', '7000', '2020-06-25 23:36:25', '1');
INSERT INTO `rb_penjualan` VALUES ('166', 'TRX-20200625234756', '15', null, '1', 'reseller', 'admin', '', 'Stok Otomatis (Pribadi)', '0', '2020-06-25 23:47:56', '1');
INSERT INTO `rb_penjualan` VALUES ('167', 'TRX-20200625234940', '30', null, '15', 'konsumen', 'reseller', 'cod', 'Cash on delivery', '10000', '2020-06-25 23:49:40', '1');
INSERT INTO `rb_penjualan` VALUES ('168', 'TRX-20200626003022', '30', null, '15', 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', '7000', '2020-06-26 00:30:22', '1');
INSERT INTO `rb_penjualan` VALUES ('170', 'TRX-20200626010106', '30', null, '15', 'konsumen', 'reseller', 'tiki', 'ONS', '8000', '2020-06-26 01:01:06', '0');
INSERT INTO `rb_penjualan` VALUES ('171', 'TRX-20200626012130', '30', null, '15', 'konsumen', 'reseller', 'jne', 'CTC', '8000', '2020-06-26 01:21:30', '0');
INSERT INTO `rb_penjualan` VALUES ('172', 'TRX-20200702214413', '30', null, '15', 'konsumen', 'reseller', 'pos', 'Paket Kilat Khusus', '7000', '2020-07-02 21:44:13', '0');
INSERT INTO `rb_penjualan` VALUES ('173', 'TRX-20200702214440', '30', null, '15', 'konsumen', 'reseller', '', '', '0', '2020-07-02 21:44:40', '0');
INSERT INTO `rb_penjualan` VALUES ('174', 'TRX-20200702231719', '0', 'Nama Konsumen', '15', 'konsumen', 'reseller', '', '', '0', '2020-07-02 23:18:12', '1');
INSERT INTO `rb_penjualan` VALUES ('175', 'TRX-20200702231940', '0', 'Nama Konsumen', '15', 'konsumen', 'reseller', '', '', '0', '2020-07-02 23:19:48', '1');
INSERT INTO `rb_penjualan` VALUES ('176', 'TRX-20200707185736', '30', null, '15', 'konsumen', 'reseller', 'jne', 'CTC', '8000', '2020-07-07 18:57:36', '0');
INSERT INTO `rb_penjualan` VALUES ('177', 'TRX-20200707185941', '0', 'Nama Konsumen', '15', 'konsumen', 'reseller', '', '', '0', '2020-07-07 18:59:51', '1');
INSERT INTO `rb_penjualan` VALUES ('178', 'TRX-20200724204647', '0', 'Nama Konsumen', '15', 'konsumen', 'reseller', '', '', '0', '2020-07-24 20:46:56', '1');

-- ----------------------------
-- Table structure for rb_penjualan_detail
-- ----------------------------
DROP TABLE IF EXISTS `rb_penjualan_detail`;
CREATE TABLE `rb_penjualan_detail` (
  `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `variasi` varchar(255) DEFAULT NULL,
  `id_varian` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_penjualan_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=255 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_penjualan_detail
-- ----------------------------
INSERT INTO `rb_penjualan_detail` VALUES ('3', '2', '2', '3', '50000', '3200000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('5', '2', '1', '1', '0', '650000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('7', '3', '1', '2', '0', '650000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('8', '3', '2', '50', '120000', '3200000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('9', '4', '11', '5', '0', '8500000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('10', '4', '12', '10', '0', '500000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('11', '4', '13', '15', '0', '55000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('12', '4', '9', '12', '0', '625000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('13', '4', '8', '3', '0', '300000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('14', '4', '7', '7', '0', '900000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('15', '4', '6', '1', '0', '330000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('16', '4', '5', '8', '0', '7100000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('29', '10', '13', '1', '0', '65000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('126', '69', '1', '1', '0', '70000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('30', '10', '2', '1', '0', '3500000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('32', '12', '2', '1', '0', '3500000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('33', '12', '1', '1', '0', '700000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('37', '14', '13', '5', '0', '55000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('38', '14', '4', '3', '0', '1110000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('40', '15', '9', '2', '50000', '625000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('41', '15', '12', '3', '0', '500000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('127', '69', '8', '2', '0', '34500', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('137', '74', '1', '1', '0', '70000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('46', '19', '12', '1', '0', '608000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('47', '19', '9', '1', '0', '670000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('48', '20', '2', '1', '0', '3500000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('136', '74', '13', '1', '0', '57000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('135', '73', '13', '1', '0', '57000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('134', '73', '1', '1', '0', '70000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('81', '43', '4', '1', '0', '1299000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('79', '42', '2', '5', '0', '3200000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('80', '42', '4', '7', '0', '1110000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('82', '43', '2', '1', '0', '3500000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('141', '78', '5', '1', '0', '755000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('142', '78', '14', '1', '0', '100000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('143', '79', '14', '1', '0', '100000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('144', '79', '4', '1', '0', '40900', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('95', '53', '13', '1', '0', '60000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('96', '53', '8', '1', '0', '345000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('145', '79', '7', '1', '0', '89000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('146', '79', '12', '1', '0', '23000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('147', '80', '16', '4', '0', '0', 'asd', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('103', '58', '6', '10', '0', '70000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('111', '61', '13', '1', '0', '60000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('112', '61', '4', '1', '0', '40900', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('113', '62', '5', '1', '0', '755000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('114', '63', '1', '1', '0', '70000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('115', '63', '12', '1', '0', '23000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('123', '68', '3', '5', '0', '164980', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('122', '67', '4', '1', '0', '124900', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('124', '68', '9', '8', '0', '63500', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('152', '85', '19', '1', '0', '759000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('153', '86', '17', '2', '0', '65000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('154', '87', '17', '1', '0', '65000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('160', '93', '13', '3', '0', '57000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('161', '94', '20', '3', '0', '57000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('164', '97', '24', '2', '0', '21465000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('167', '100', '12', '1', '0', '66000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('168', '101', '9', '1', '15000', '68500', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('172', '105', '11', '1', '0', '89000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('173', '106', '19', '1', '0', '759000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('174', '107', '25', '1', '0', '22449000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('175', '107', '21', '2', '0', '16500000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('176', '108', '26', '2', '0', '35750000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('177', '108', '21', '1', '0', '16500000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('178', '109', '11', '1', '0', '89000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('179', '109', '10', '1', '0', '59900', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('180', '109', '12', '2', '0', '66000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('181', '110', '25', '1', '0', '22449000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('182', '111', '25', '1', '0', '22449000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('183', '112', '25', '1', '0', '22449000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('184', '113', '26', '1', '0', '35750000', 'Unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('185', '114', '11', '1', '0', '89000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('186', '115', '11', '1', '0', '89000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('194', '117', '27', '0', '0', '14500', 'ml', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('196', '126', '33', '5', '0', '13500', 'ml', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('199', '129', '35', '2', '0', '58000', 'Box', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('201', '131', '32', '1', '0', '25000', 'Botol', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('219', '146', '14', '1', '0', '100000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('203', '129', '17', '0', '0', '65000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('205', '124', '33', '1', '0', '14500', 'ml', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('206', '124', '35', '1', '0', '58000', 'Box', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('207', '136', '33', '3', '0', '14500', 'ml', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('208', '136', '34', '2', '0', '28000', 'Botol', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('214', '141', '12', '1', '0', '66000', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('215', '142', '14', '1', '0', '100000', 'pcs', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('216', '143', '36', '5', '0', '0', 'ml', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('223', '151', '36', '4', '0', '7000', 'ml', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('220', '147', '9', '1', '0', '53500', 'unit', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('224', '152', '36', '1', '0', '7000', 'ml', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('230', '158', '41', '1', '0', '5000', 'ml', '200ml', null);
INSERT INTO `rb_penjualan_detail` VALUES ('231', '159', '41', '1', '0', '5000', 'ml', '100ml', null);
INSERT INTO `rb_penjualan_detail` VALUES ('232', '160', '41', '2', '0', '5000', 'ml', '100ml', null);
INSERT INTO `rb_penjualan_detail` VALUES ('233', '161', '27', '1', '0', '13500', 'ml', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('234', '162', '4', '1', '0', '40900', 'unit', '', null);
INSERT INTO `rb_penjualan_detail` VALUES ('235', '164', '47', '0', '0', '0', '', null, '1');
INSERT INTO `rb_penjualan_detail` VALUES ('236', '164', '47', '12', '0', '0', '', null, '2');
INSERT INTO `rb_penjualan_detail` VALUES ('237', '165', '47', '2', '999', '12000', '', null, '2');
INSERT INTO `rb_penjualan_detail` VALUES ('238', '166', '48', '10', '0', '0', 'gram', null, '3');
INSERT INTO `rb_penjualan_detail` VALUES ('239', '166', '48', '12', '0', '0', 'gram', null, '4');
INSERT INTO `rb_penjualan_detail` VALUES ('240', '167', '48', '2', '0', '15000', 'gram', null, '3');
INSERT INTO `rb_penjualan_detail` VALUES ('241', '168', '48', '10', '0', '15000', 'gram', null, '4');
INSERT INTO `rb_penjualan_detail` VALUES ('242', '168', '48', '2', '0', '15000', 'gram', null, '4');
INSERT INTO `rb_penjualan_detail` VALUES ('244', '170', '48', '1', '0', '15000', 'gram', null, '3');
INSERT INTO `rb_penjualan_detail` VALUES ('245', '171', '48', '1', '0', '15000', 'gram', null, '3');
INSERT INTO `rb_penjualan_detail` VALUES ('246', '172', '48', '1', '0', '15000', 'gram', null, '3');
INSERT INTO `rb_penjualan_detail` VALUES ('247', '173', '48', '1', '0', '15000', 'gram', null, '3');
INSERT INTO `rb_penjualan_detail` VALUES ('248', '174', '47', '2', '0', '11001', '', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('249', '174', '48', '2', '0', '15000', 'gram', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('250', '174', '47', '1', '0', '11001', '', null, null);
INSERT INTO `rb_penjualan_detail` VALUES ('251', '175', '47', '1', '0', '11001', '', null, '2');
INSERT INTO `rb_penjualan_detail` VALUES ('252', '176', '48', '1', '0', '15000', 'gram', null, '3');
INSERT INTO `rb_penjualan_detail` VALUES ('253', '177', '47', '1', '0', '11001', '', null, '2');
INSERT INTO `rb_penjualan_detail` VALUES ('254', '178', '47', '1', '0', '11001', '', null, '2');

-- ----------------------------
-- Table structure for rb_penjualan_temp
-- ----------------------------
DROP TABLE IF EXISTS `rb_penjualan_temp`;
CREATE TABLE `rb_penjualan_temp` (
  `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT,
  `session` varchar(50) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) DEFAULT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `varian` varchar(255) DEFAULT NULL,
  `waktu_order` datetime NOT NULL,
  `id_varian` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_penjualan_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_penjualan_temp
-- ----------------------------
INSERT INTO `rb_penjualan_temp` VALUES ('7', 'TRX-20180812160418', '13', '1', '0', '60000', 'pcs', null, '2018-08-12 16:04:18', null);
INSERT INTO `rb_penjualan_temp` VALUES ('8', 'TRX-20180812163525', '11', '1', '0', '8900000', 'pcs', null, '2018-08-12 16:35:25', null);
INSERT INTO `rb_penjualan_temp` VALUES ('10', 'TRX-20180911095555', '6', '1', '0', '75000', 'unit', null, '2018-09-11 09:55:55', null);
INSERT INTO `rb_penjualan_temp` VALUES ('11', 'TRX-20180911104512', '13', '1', '0', '60000', 'pcs', null, '2018-09-11 10:45:12', null);
INSERT INTO `rb_penjualan_temp` VALUES ('12', 'TRX-20180911113613', '8', '1', '0', '34500', 'unit', null, '2018-09-11 11:36:13', null);
INSERT INTO `rb_penjualan_temp` VALUES ('13', 'TRX-20180911114335', '5', '1', '0', '755000', 'unit', null, '2018-09-11 11:43:35', null);
INSERT INTO `rb_penjualan_temp` VALUES ('14', 'TRX-20180911114532', '6', '1', '0', '75000', 'unit', null, '2018-09-11 11:45:32', null);
INSERT INTO `rb_penjualan_temp` VALUES ('15', 'TRX-20180911120326', '5', '1', '0', '755000', 'unit', null, '2018-09-11 12:03:26', null);
INSERT INTO `rb_penjualan_temp` VALUES ('16', 'TRX-20180912152157', '6', '1', '0', '75000', 'unit', null, '2018-09-12 15:21:57', null);
INSERT INTO `rb_penjualan_temp` VALUES ('17', 'TRX-20180912182409', '7', '1', '0', '89000', 'unit', null, '2018-09-12 18:24:09', null);
INSERT INTO `rb_penjualan_temp` VALUES ('18', 'TRX-20181221080543', '5', '1', '0', '755000', 'unit', null, '2018-12-21 08:05:43', null);
INSERT INTO `rb_penjualan_temp` VALUES ('20', 'TRX-20181221080543', '12', '1', '0', '23000', 'unit', null, '2018-12-21 08:21:19', null);
INSERT INTO `rb_penjualan_temp` VALUES ('21', 'TRX-20181222101726', '5', '1', '0', '755000', 'unit', null, '2018-12-22 10:17:26', null);
INSERT INTO `rb_penjualan_temp` VALUES ('22', 'TRX-20181222101726', '11', '1', '0', '89000', 'pcs', null, '2018-12-22 10:17:44', null);
INSERT INTO `rb_penjualan_temp` VALUES ('23', 'TRX-20181222101726', '4', '1', '0', '40900', 'unit', null, '2018-12-22 10:23:08', null);
INSERT INTO `rb_penjualan_temp` VALUES ('33', 'TRX-20190203063622', '9', '1', '0', '53500', 'unit', null, '2019-02-03 06:36:22', null);
INSERT INTO `rb_penjualan_temp` VALUES ('31', 'TRX-20181226094641', '13', '1', '0', '57000', 'pcs', null, '2018-12-26 09:46:41', null);
INSERT INTO `rb_penjualan_temp` VALUES ('43', 'TRX-20190324190938', '14', '1', '0', '100000', 'pcs', null, '2019-03-24 19:09:38', null);
INSERT INTO `rb_penjualan_temp` VALUES ('48', 'TRX-20190326080841', '14', '1', '0', '100000', 'pcs', null, '2019-03-26 08:08:41', null);
INSERT INTO `rb_penjualan_temp` VALUES ('49', 'TRX-20190326150117', '14', '1', '0', '100000', 'pcs', null, '2019-03-26 15:01:17', null);
INSERT INTO `rb_penjualan_temp` VALUES ('56', 'TRX-20200611233013', '25', '1', '0', '22449000', 'Unit', null, '2020-06-11 23:30:13', null);
INSERT INTO `rb_penjualan_temp` VALUES ('57', 'TRX-20200611233252', '12', '1', '0', '66000', 'unit', null, '2020-06-11 23:32:52', null);
INSERT INTO `rb_penjualan_temp` VALUES ('58', 'TRX-20200615014054', '36', '1', null, '7000', 'ml', null, '2020-06-15 01:40:54', null);
INSERT INTO `rb_penjualan_temp` VALUES ('61', 'TRX-20200622204240', '4', '1', '89000', '129900', 'unit', '', '2020-06-22 20:42:40', null);

-- ----------------------------
-- Table structure for rb_pos_temp
-- ----------------------------
DROP TABLE IF EXISTS `rb_pos_temp`;
CREATE TABLE `rb_pos_temp` (
  `id_penjualan_detail` int(11) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `id_varian` int(11) NOT NULL,
  PRIMARY KEY (`id_penjualan_detail`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_pos_temp
-- ----------------------------
INSERT INTO `rb_pos_temp` VALUES ('8', '11', '28', '3', '0', '18000', 'Botol', '0');
INSERT INTO `rb_pos_temp` VALUES ('10', '11', '29', '2', '0', '67500', 'Box', '0');
INSERT INTO `rb_pos_temp` VALUES ('16', '14', '39', '1', '0', '7000', 'gram', '0');

-- ----------------------------
-- Table structure for rb_produk
-- ----------------------------
DROP TABLE IF EXISTS `rb_produk`;
CREATE TABLE `rb_produk` (
  `id_produk` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk_perusahaan` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `id_kategori_produk_sub` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `varian` text DEFAULT NULL,
  `produk_seo` varchar(255) NOT NULL,
  `satuan` varchar(50) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `harga_reseller` int(11) NOT NULL,
  `harga_konsumen` int(11) NOT NULL,
  `berat` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `waktu_input` datetime NOT NULL,
  PRIMARY KEY (`id_produk`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_produk
-- ----------------------------
INSERT INTO `rb_produk` VALUES ('1', '0', '2', '2', '2', 'Segitiga Instan Aira- AA94.9 Tropical Blue', null, 'segitiga-instan-aira-aa949-tropical-blue', 'pcs', '60000', '0', '70000', '300', 'RYB6_1_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-23 17:04:25');
INSERT INTO `rb_produk` VALUES ('2', '0', '2', '1', '2', 'Segitiga Instan Aira- AA94.8 Minty Green', null, 'segitiga-instan-aira-aa94-8-minty-green', 'pcs', '340000', '0', '350000', '500', 'RV71_27_Jeans_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-23 17:10:17');
INSERT INTO `rb_produk` VALUES ('3', '0', '2', '2', '2', 'Segitiga Instan KEINA - KN54.38 Delfine Lilac', null, 'segitiga-instan-keina--kn5438-delfine-lilac', 'unit', '159980', '0', '169980', '300', 'RV71_5_Cold_Ocean_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 06:47:14');
INSERT INTO `rb_produk` VALUES ('4', '0', '2', '1', '2', 'Segitiga Instan Madeira - MDB5.3 Sunset', null, 'segitiga-instan-madeira--mdb53-sunset', 'unit', '119900', '0', '129900', '100', '22.png;c4_grande1.jpg;AR91_95_Sheva_Maroon_1_grande1.png;MK97_7_Mocca_grande1.jpg;Emily_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>', 'reseller2', '2017-05-30 06:53:10');
INSERT INTO `rb_produk` VALUES ('5', '0', '2', '1', '2', 'Segitiga Instan Madeira - MDB5.2 Ocean', null, 'segitiga-instan-madeira-mdb5-2-ocean', 'unit', '745000', '0', '755000', '150', 'KYB4_14_Soft_Lavender_1024x1024_f993283a-dae0-4a05-b163-9f6b44465732_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 06:56:24');
INSERT INTO `rb_produk` VALUES ('6', '0', '2', '2', '2', 'Pashmina Instan Rafella - RLN1.2 Gold Maroon', null, 'pashmina-instan-rafella-rln1-2-gold-maroon', 'unit', '65000', '0', '75000', '130', 'Emily_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 06:57:11');
INSERT INTO `rb_produk` VALUES ('7', '0', '2', '2', '2', 'Pashmina Instan Rafella - RLN1.1 Sweet Grey', null, 'pashmina-instan-rafella--rln11-sweet-grey', 'unit', '89000', '0', '99000', '600', 'AYD5_3_Mayra_Pink_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 09:52:58');
INSERT INTO `rb_produk` VALUES ('8', '0', '6', '0', '2', 'Black Cotton Puplin Semi Wol Red White URI-12', null, 'black-cotton-puplin-semi-wol-red-white-uri12', 'unit', '24500', '0', '34500', '220', 'gamis6.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 09:55:04');
INSERT INTO `rb_produk` VALUES ('9', '0', '6', '0', '2', 'Rompi Kurta Hoodie Zip Dark Grey Semi Wol', null, 'rompi-kurta-hoodie-zip-dark-grey-semi-wol', 'unit', '58500', '0', '68500', '250', 'gamis5.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 09:58:43');
INSERT INTO `rb_produk` VALUES ('10', '0', '6', '0', '1', 'Gamis Green Filosifi Oxorcities TG-3452', null, 'gamis-green-filosifi-oxorcities-tg3452', 'pcs', '49900', '0', '59900', '320', 'gamis11.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 10:02:14');
INSERT INTO `rb_produk` VALUES ('11', '0', '6', '0', '1', 'Rompi Kurta Hoodie Zip Mentantarei YU-234', null, 'rompi-kurta-hoodie-zip-mentantarei-yu234', 'pcs', '79000', '0', '89000', '250', 'gamis4.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 10:03:47');
INSERT INTO `rb_produk` VALUES ('12', '0', '6', '0', '1', 'Koku Fren Grenn Latifa Consesi TY-634', null, 'koku-fren-grenn-latifa-consesi-ty634', 'unit', '55000', '0', '66000', '360', 'gamis3.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 10:06:33');
INSERT INTO `rb_produk` VALUES ('21', '0', '1', '0', '3', 'Ultrabook Hackintosh Acer - I5 Haswell - 8 Gb - SSD', null, 'ultrabook-hackintosh-acer--i5-haswell--8-gb--ssd', 'Unit', '12500000', '13000000', '16500000', '1200', 'a1.jpg', '<p>Untuk diperhatikan : - Untuk Saat Ini Bless Hackintosh Tidak Melayani COD/Datang Ketempat, murni hanya melayani transaksi Online dengan fasilitas pengiriman spt yang ditetapkan</p>\r\n\r\n<p>Budayakan membaca Iklan sampai beres. Mohon jangan tanyakan lagi apa yang sudah dijelaskan di Lapak.</p>\r\n\r\n<p>Barang bergaransi 7x24 jam terhitung sejak agan menerima Barang. Dengan catatan, tidak merusak segel yang ada. Retur tidak dilayani apabila SEGEL RUSAK.</p>', 'reseller3', '2019-03-23 19:39:53');
INSERT INTO `rb_produk` VALUES ('13', '0', '2', '0', '0', 'Super Segiempat Rebya Â - RYB6.7 Pink Clover', null, 'segiempat-rebya---ryb67-pink-clover', 'pcs', '55000', '57000', '65000', '300', 'AD_19_20_Misty_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2017-05-30 10:10:37');
INSERT INTO `rb_produk` VALUES ('14', '0', '6', '0', '2', 'Koku Black Cotton Sesnsation Gamis TY-4312', null, 'koku-black-cotton-sesnsation-gamis-ty4312', 'pcs', '90000', '0', '100000', '310', 'gamis2.jpg', '<p>Instan ZIFA, pashmina instan dengan bahan legendaris Diamond Lava ORIGINAL by Hijab Wanita Cantik, lentur dan nyaman bangeett! Ada ruffle cantik dan manis. Layernya panjang bisa dikreasi suka2, dijamin makin percaya diri ! Yuk belanja sekarang ! Nyeseel kalo cuma punya satu</p>\r\n', 'admin', '2018-09-11 10:20:24');
INSERT INTO `rb_produk` VALUES ('17', '13', '2', '0', '2', 'Segiempat Rebya  - RYB6.7 Pink Clover', null, 'segiempat-rebya---ryb67-pink-clover', 'pcs', '55000', '57000', '65000', '300', 'AD_19_20_Misty_Grey_grande.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2019-03-21 08:01:06');
INSERT INTO `rb_produk` VALUES ('18', '0', '10', '0', '0', 'Consina Expert Series Lunara Biru Gelap', null, 'consina-expert-series-lunara-biru-gelap', 'Unit', '700000', '720000', '759000', '500', 'tas.jpg', '<h2>Produk Lokal, Rasa Internasional</h2>\r\n\r\n<p>Consina merupakan salah satu produk lokal yang lahir pada tahun 1994. Bagi Anda yang memiliki hobi mendaki gunung dan berkemah, tentunya merk Consina sudah melekat di telinga Anda. Semakin berkembangnya perusahaan ini, peminatnya semakin banyak. Produk-produk dari consina memiliki kualitas yang sangat bersaing karena dibuat dengan material-material kelas satu. Tidak hanya itu, fungsi dan desainnya tidak kalah dengan merk-merk dari luar negeri.&nbsp;</p>\r\n\r\n<h3>Menampung Keseharian Anda Sehari-hari</h3>\r\n\r\n<p>Kali ini consina mengeluarkan tas ransel dengan ukuran yang besar yang mampu menampung kebutuhan berpetualang Anda. Tidak hanya itu, tas ransel Consina Lunara hadir dengan dimensi ukuran 30 x 25 x 60 sehingga Anda mampu menampung barang bawaan hingga 20 sampai 40 liter. Walaupun tas ini diperuntukkan untuk kebutuhan bertualang, Anda dapat menggunakan tas ini untuk kegiatan sehari-hari Anda.</p>\r\n', 'admin', '2019-03-21 11:38:37');
INSERT INTO `rb_produk` VALUES ('19', '18', '10', '0', '2', 'Consina Expert Series Lunara Biru Gelap', null, 'consina-expert-series-lunara-biru-gelap', 'Unit', '700000', '720000', '759000', '500', 'tas.jpg', '<h2>Produk Lokal, Rasa Internasional</h2>\r\n\r\n<p>Consina merupakan salah satu produk lokal yang lahir pada tahun 1994. Bagi Anda yang memiliki hobi mendaki gunung dan berkemah, tentunya merk Consina sudah melekat di telinga Anda. Semakin berkembangnya perusahaan ini, peminatnya semakin banyak. Produk-produk dari consina memiliki kualitas yang sangat bersaing karena dibuat dengan material-material kelas satu. Tidak hanya itu, fungsi dan desainnya tidak kalah dengan merk-merk dari luar negeri.&nbsp;</p>\r\n\r\n<h3>Menampung Keseharian Anda Sehari-hari</h3>\r\n\r\n<p>Kali ini consina mengeluarkan tas ransel dengan ukuran yang besar yang mampu menampung kebutuhan berpetualang Anda. Tidak hanya itu, tas ransel Consina Lunara hadir dengan dimensi ukuran 30 x 25 x 60 sehingga Anda mampu menampung barang bawaan hingga 20 sampai 40 liter. Walaupun tas ini diperuntukkan untuk kebutuhan bertualang, Anda dapat menggunakan tas ini untuk kegiatan sehari-hari Anda.</p>\r\n', 'admin', '2019-03-21 11:52:49');
INSERT INTO `rb_produk` VALUES ('20', '13', '6', '0', '1', 'Gamis Green Filosifi Oxorcities TG-3452', null, 'gamis-green-filosifi-oxorcities-tg3452', 'pcs', '55000', '57000', '65000', '300', 'gamis1.jpg', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec scelerisque condimentum mattis. Suspendisse potenti. Proin vitae elementum nisi. Aliquam eu pretium risus. Nam varius efficitur consectetur. Aenean vestibulum felis sed mollis faucibus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin venenatis est sit amet eleifend vehicula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer id nunc eu odio ultrices pulvinar non feugiat felis. Duis consequat urna sapien, porta gravida diam venenatis at. Duis at ornare enim, ac accumsan eros. Sed in finibus metus. Etiam blandit tristique orci, sit amet congue dui facilisis id. Donec fermentum diam at orci viverra placerat. Sed nunc lorem, cursus nec vestibulum hendrerit, tempus et libero.</p>\r\n\r\n<p>Donec consequat lacinia fringilla. Proin dapibus justo at elit iaculis, eu rutrum velit dapibus. Phasellus nec augue vel nisl sagittis malesuada vel vel orci. In in euismod massa. Praesent vel blandit arcu. Maecenas eleifend dui in est rhoncus, mattis sollicitudin augue semper. Donec a lectus rhoncus, ornare nunc rutrum, egestas arcu. Aenean dapibus urna non nisl dignissim volutpat.</p>\r\n', 'admin', '2019-03-22 06:37:29');
INSERT INTO `rb_produk` VALUES ('22', '0', '1', '0', '3', 'APPLE MacBook Pro - Space Gray - Intel Core i5 2.3GHz', null, 'apple-macbook-pro--space-gray--intel-core-i5-23ghz', 'Unit', '19500000', '20000000', '22500000', '1200', 'a2.jpg', '<h3>Spesifikasi Lebih Tinggi untuk Pacu Produktivitas</h3>\r\n\r\n<p>Apple MacBook Pro edisi terbaru hadir dengan dua pilihan ukuran layar yakni 13 Inch dan 15 Inch. Apple MacBook Pro memiliki fitur terbaru yang memudahkan Anda bekerja dengan mengganti jejeran tombol Function (F) dengan panel sentuh. Fitur bernama Touch Bar ini dapat mengganti tampilan menu di panel sentuh sesuai aplikasi yang Anda gunakan. Namun, jika Anda masih menginginkan versi MacBook tanpa Touch Bar, Apple juga menyediakan varian MacBook Pro 13 Inch tanpa Touch Bar. Jadi Anda masih menggunakan Keyboard dengan tombol F berbentuk fisik seperti Layout Keyboard Laptop konvensional. MacBook Pro tanpa Touch Bar membawa peningkatan performa dibanding pendahulunya. Hadir sebagai otak utama adalah Processor Dual-Core besutan Intel Core i5 berkecepatan 2.3 GHz yang terintegrasi dengan pengolah grafis Intel Iris Graphics 640. Dua buah Port Thunderbolt 3 dengan antarmuka USB-C bisa digunakan untuk transfer data, mengisi baterai, dan Output Display.</p>\r\n\r\n<h3>Dua Pilihan Ukuran MacBook Pro</h3>\r\n\r\n<p>2 model MacBook Pro layar 13 dan 15 Inch, dengan dan tanpa Touch Bar.</p>\r\n', 'admin', '2019-03-23 20:24:24');
INSERT INTO `rb_produk` VALUES ('23', '0', '1', '0', '3', 'HP Business EliteBook X360 1020 G2', null, 'hp-business-elitebook-x360-1020-g2', 'Unit', '30520000', '31520000', '32520000', '1100', 'a4.jpg', '<h3><strong>Ringan, Kuat, dan Bertenaga</strong></h3>\r\n\r\n<p>HP EliteBook x360 1020 G2 merupakan laptop yang diperuntukkan bagi pebisnis yang memerlukkan tidak hanya bermobilitas tinggi, namun juga bertenaga. Elitebook x360 1020 G2 didukung oleh prosesor IntelÂ? Coreâ?? i7-7500U sehingga mampu menghadirkan performa yang sangat dapat diandalkan. Selain itu, laptop dengan layar 12.5 beresolusi Full HD ini sudah dilengkapi dengan SSD (Solid State Drive) sebagai media penyimpanan data sehingga kinerjanya semakin kencang. Tentu saja laptop ini memiliki bobot yang sangat ringan agar Anda dapat membawanya kemana saja.&nbsp;</p>\r\n\r\n<h3><strong>Empat Mode Untuk Segala Kebutuhan Bisnis</strong></h3>\r\n\r\n<p>EliteBook x360 1020 G@ hadir dengan beberapa mode yang didesain untuk kebutuhan Anda sehingga dapat menunjang produktivitas Anda. Mode-mode tersebut yaitu Mode Tent yang berbentuk seperti tenda yang sangat cocok untuk presentasi, Mode Tablet yang mentransformasikan laptop Anda menjadi sebuah tablet, Mode Media yang membawa Anda untuk merasakan pengalaman hiburan mendalam, dan yang terakhir adalah Mode Laptop.</p>', 'reseller3', '2019-03-24 10:09:20');
INSERT INTO `rb_produk` VALUES ('24', '0', '1', '0', '3', 'ACER Swift 7 (SF713-51) (Core i7-7Y75) - Gold', null, 'acer-swift-7-sf71351-core-i77y75--gold', 'Unit', '20465000', '21465000', '22465000', '1100', 'a7.jpg', '<h3><strong>5 Alasan Jitu Memilih Acer Swift 7</strong></h3>\r\n\r\n<p>Pasar ultrabook dunia diramaikan kehadiran Acer Swift 7 yang menjadi salah satu ultrabook paling tipis di dunia. Ketebalan laptop yang super tipis memang ditujukan untuk Anda yang punya mobilitas tinggi. Karena tipis dan ringan, saat dibawa-bawa Acer Swift 7 tidak akan terlalu menyiksa Anda. Berikut ini lima alasan kenapa Anda harus segera memiliki Acer Swift 7:</p>\r\n\r\n<h3>1) Laptop Paling Tipis di Dunia</h3>\r\n\r\n<p>Acer Swift 7 menjadi laptop paling tipis di dunia saat diluncurkan pertama kali pada awal Juli 2016. Ini sangat wajar karena ketebalan laptop satu ini hanya 0.39 inci. Pemilihan material berkualitas juga membuatnya sangat ringan. Perpaduan warna emas di bagian dalam dan hitam matte di luar menciptakan kesan elegan dan modern. Dengan memakai Acer Swift 7 tentu akan meningkatkan kepercayaan diri Anda.</p>\r\n\r\n<h3>2) Layar Sentuh Jernih Seluas 13 Inci</h3>\r\n\r\n<p>Konten layar yang Anda lihat jadi terlihat jernih berkat dukungan layar sentuh seluas 13.3 inci beresolusi Full HD. Teknologi Acer Color Intelligence mengatur gamma dan saturasi agar bisa menghasilkan warna lebih kaya. Acer Swift 7 juga menggunakan panel layar jenis IPS sehingga dari sudut mana pun Anda melihatnya, kontras dan warna layar tidak pudar. Tak usah khawatir layar tergores, karena sudah menggunakan kaca Corning Gorilla Glass yang 2 kali lebih kuat dari kaca biasa.&nbsp;</p>', 'reseller3', '2019-03-24 10:11:03');
INSERT INTO `rb_produk` VALUES ('25', '0', '1', '0', '3', 'DELL Business Latitude 7290 (Core i7-8650U)', null, 'dell-business-latitude-7290-core-i78650u', 'Unit', '20449000', '21449000', '22449000', '1100', 'a8.jpg', '<h3><strong>Alasan Jitu Memilih DELL Business Latitude 7290</strong></h3>\r\n\r\n<p>Pasar ultrabook dunia diramaikan kehadiran DELL Business Latitude 7290 yang menjadi salah satu ultrabook paling tipis di dunia. Ketebalan laptop yang super tipis memang ditujukan untuk Anda yang punya mobilitas tinggi. Karena tipis dan ringan, saat dibawa-bawa DELL Business Latitude 7290 tidak akan terlalu menyiksa Anda. Berikut ini lima alasan kenapa Anda harus segera memiliki DELL Business Latitude 7290:</p>\r\n\r\n<p>DELL Business Latitude 7290 menjadi laptop paling tipis di dunia saat diluncurkan pertama kali pada awal Juli 2016. Ini sangat wajar karena ketebalan laptop satu ini hanya 0.39 inci. Pemilihan material berkualitas juga membuatnya sangat ringan. Perpaduan warna emas di bagian dalam dan hitam matte di luar menciptakan kesan elegan dan modern. Dengan memakai DELL Business Latitude 7290 tentu akan meningkatkan kepercayaan diri Anda.</p>\r\n\r\n<p>Konten layar yang Anda lihat jadi terlihat jernih berkat dukungan layar sentuh seluas 13.3 inci beresolusi Full HD. Teknologi Acer Color Intelligence mengatur gamma dan saturasi agar bisa menghasilkan warna lebih kaya. Acer Swift 7 juga menggunakan panel layar jenis IPS sehingga dari sudut mana pun Anda melihatnya, kontras dan warna layar tidak pudar. Tak usah khawatir layar tergores, karena sudah menggunakan kaca Corning Gorilla Glass yang 2 kali lebih kuat dari kaca biasa.&nbsp;</p>', 'reseller3', '2019-03-24 10:13:19');
INSERT INTO `rb_produk` VALUES ('26', '0', '1', '0', '3', 'LENOVO X1 Carbon Gen 6 [20KGA04GID]', null, 'lenovo-x1-carbon-gen-6-20kga04gid', 'Unit', '33750000', '34750000', '35750000', '1200', 'a9.jpg', '<h3><strong>Alasan Jitu Memilih DELL Business Latitude 7290</strong></h3>\r\n\r\n<p>Pasar ultrabook dunia diramaikan kehadiran LENOVO X1 Carbon Gen 6&nbsp; yang menjadi salah satu ultrabook paling tipis di dunia. Ketebalan laptop yang super tipis memang ditujukan untuk Anda yang punya mobilitas tinggi. Karena tipis dan ringan, saat dibawa-bawa LENOVO X1 Carbon Gen 6&nbsp; tidak akan terlalu menyiksa Anda. Berikut ini lima alasan kenapa Anda harus segera memiliki LENOVO X1 Carbon Gen 6&nbsp;:</p>\r\n\r\n<p>LENOVO X1 Carbon Gen 6&nbsp; menjadi laptop paling tipis di dunia saat diluncurkan pertama kali pada awal Juli 2016. Ini sangat wajar karena ketebalan laptop satu ini hanya 0.39 inci. Pemilihan material berkualitas juga membuatnya sangat ringan. Perpaduan warna emas di bagian dalam dan hitam matte di luar menciptakan kesan elegan dan modern. Dengan memakai LENOVO X1 Carbon Gen 6&nbsp; tentu akan meningkatkan kepercayaan diri Anda.</p>\r\n\r\n<p>Konten layar yang Anda lihat jadi terlihat jernih berkat dukungan layar sentuh seluas 13.3 inci beresolusi Full HD. Teknologi Acer Color Intelligence mengatur gamma dan saturasi agar bisa menghasilkan warna lebih kaya. LENOVO X1 Carbon Gen 6&nbsp; juga menggunakan panel layar jenis IPS sehingga dari sudut mana pun Anda melihatnya, kontras dan warna layar tidak pudar. Tak usah khawatir layar tergores, karena sudah menggunakan kaca Corning Gorilla Glass yang 2 kali lebih kuat dari kaca biasa.&nbsp;</p>', 'reseller3', '2019-03-24 10:15:21');
INSERT INTO `rb_produk` VALUES ('27', '0', '12', '6', '0', 'Obat Batuk Woods', null, 'obat-batuk-woods', 'ml', '11000', '13500', '14500', '100', '1_-Obat-Batuk-Woods-420x420.jpg', '<p>pilihlah Woods Antitussive karena mengandung Dekstrometrophan HBr dan Difenhidramine HCl.</p>\r\n\r\n<p>Sedangkan, jika kamu batuk kering atau tidak berdahak, maka pilihlah Woods Expectorant.</p>\r\n', 'admin', '2020-02-25 02:08:51');
INSERT INTO `rb_produk` VALUES ('28', '0', '12', '6', '11', 'Obat Batuk OBH 100ml', null, 'obat-batuk-obh-100ml', 'Botol', '16000', '0', '18000', '100', '3_-Obat-Batuk-OBH-420x420.jpg', '<p>\r\n</p><p>Obat batuk OBH identik dengan warnanya yang hitam pekat dan tekstur \r\nyang kental, meskipun memiliki warna yang cukup menakutkan rasa dari OBH\r\n cukup manis dan memiliki dua jenis rasa.</p>\r\n\r\n\r\n\r\n<p>Yaitu dengan rasa menthol dan jahe yang melegakan tenggorokan, \r\nsehingga OBH combi cocok digunakan untuk mengeluarkan dahak yang \r\ntersumbat di tenggorokan serta saluran pernapasan.</p>\r\n\r\n<br><p></p>', 'alauddin', '2020-02-25 02:23:13');
INSERT INTO `rb_produk` VALUES ('29', '0', '13', '11', '11', 'Promag', null, 'promag', 'Box', '65000', '0', '67500', '150', 'Promag_Tablet.jpg', '<p>\r\n</p><p>Promag adalah salah satu obat maag instan yang dijual bebas di \r\nmasyarakat. Komposisi obat ini yakni simethicone 50 mg, magnesium \r\nhidroksida 150 mg, dan hydrotalcite 200 mg. Campuran zat-zat kimia ini \r\ndapat menetralisir asam lambung dengan cepat. Situs <em>Ahlinyalambung.com</em> menyebut bahwa kandungan hydrotalcite saja sudah dapat menetralisir asam lambung dalam 1 menit.</p> <p><strong><em>Efek Samping: </em></strong><em>Akan muncul gejala sembelit, diare, ataupun mual ketika mengonsumsi obat ini. Jenis obat kunyah yang akan memberikan rasa pahit.</em></p>\r\n\r\n<br><p></p>', 'alauddin', '2020-02-25 02:31:35');
INSERT INTO `rb_produk` VALUES ('30', '0', '13', '11', '11', 'Mylanta', null, 'mylanta', 'Box', '55000', '0', '58000', '10', 'Mylanta_Tablet.jpg', '<p>\r\n</p><p>Obat Mylanta tablet ini dapat menetralisir rasa nyeri pada ulu hati \r\nakibat iritasi asam lambung. Meski obat ini dijual bebas, tapi tidak \r\ndisarankan untuk mengonsumsinya lebih dari 2 minggu selama terus-menerus\r\n tanpa petunjuk dokter. Sebab, keseringan mengonsumsi obat ini akan \r\nmenggerus lambung itu sendiri karena kandungannya zat kimianya yang \r\ncukup kuat.</p> <p><strong><em>Efek Samping: </em></strong><em>dapat mengurangi kadar fosfor dalam darah, terlebih bila kamu adalah penderita diet fosfor rendah.</em></p>\r\n\r\n<br><p></p>', 'alauddin', '2020-02-25 02:33:15');
INSERT INTO `rb_produk` VALUES ('31', '0', '13', '11', '11', 'Polysilane Cair', null, 'polysilane-cair', 'Botol', '25000', '0', '28000', '180', 'Polysilane_Cair.jpg', '<p>\r\n</p><p>Polysilane cair ini pada dasarnya memberi efek yang sama dengan obat \r\nmaag pada umumnya, yakni memberi kestabilan pada asam lambung yang \r\ncenderung diproduksi berlebihan.</p> <p><strong><em>Efek Samping:</em></strong> <em>Obat\r\n ini cenderung menyebabkan diare dan sembelit karena mengandung \r\nmagnesium dan aluminium. Untuk menanggulanginya, kamu perlu \r\nsering-sering minum air putih. </em></p>\r\n\r\n<br><p></p>', 'alauddin', '2020-02-25 02:34:29');
INSERT INTO `rb_produk` VALUES ('32', '0', '14', '10', '11', 'Prenatal Suplemen Vitamin & Mineral untuk Kehamilan Botol 30 Kaplet', null, 'prenatal-suplemen-vitamin--mineral-untuk-kehamilan-botol-30-kaplet', 'Botol', '20000', '0', '25000', '100', 'Vitmin_Prenatal.png', '<p>\r\nVitamin esensial, asam folat, kalsium dan zat besi merupakan nutrisi \r\npenting yang sangat dibutuhkan untuk pertumbuhan dan perkembangan janin \r\nsehingga baik dikonsumsi saat perencanaan kehamilan, pada saat kehamilan\r\n dan menyusui<br>\r\n\r\n<br></p>', 'alauddin', '2020-02-25 02:39:20');
INSERT INTO `rb_produk` VALUES ('33', '27', '12', '6', '12', 'Obat Batuk Woods', null, 'obat-batuk-woods', 'ml', '11000', '13500', '14500', '100', '1_-Obat-Batuk-Woods-420x420.jpg', '<p>pilihlah Woods Antitussive karena mengandung Dekstrometrophan HBr dan Difenhidramine HCl.</p>\r\n\r\n<p>Sedangkan, jika kamu batuk kering atau tidak berdahak, maka pilihlah Woods Expectorant.</p>\r\n', 'admin', '2020-02-25 10:19:20');
INSERT INTO `rb_produk` VALUES ('34', '0', '13', '11', '12', 'Polysilane Cair', null, 'polysilane-cair', 'Botol', '25000', '0', '28000', '100', 'Polysilane_Cair1.jpg', '', 'mardha', '2020-02-26 00:07:19');
INSERT INTO `rb_produk` VALUES ('35', '0', '13', '11', '12', 'Mylanta', null, 'mylanta', 'Box', '56000', '0', '58000', '10', 'Mylanta_Cair.jpg', '<p>\r\n\r\n</p><p>Obat Mylanta tablet ini dapat menetralisir rasa nyeri pada ulu hati akibat iritasi asam lambung. Meski obat ini dijual bebas, tapi tidak disarankan untuk mengonsumsinya lebih dari 2 minggu selama terus-menerus tanpa petunjuk dokter. Sebab, keseringan mengonsumsi obat ini akan menggerus lambung itu sendiri karena kandungannya zat kimianya yang cukup kuat.</p><p><strong><em>Efek Samping: </em></strong><em>dapat mengurangi kadar fosfor dalam darah, terlebih bila kamu adalah penderita diet fosfor rendah.</em></p>\r\n\r\n<br><p></p>', 'mardha', '2020-02-26 00:08:47');
INSERT INTO `rb_produk` VALUES ('36', '0', '12', '6', '13', 'Hufagrip', null, 'hufagrip', 'ml', '5000', '0', '7000', '100', 'b83bb50c29595f4ab178f20a6d4138cc.jpg', '<p>hufagrip</p>', 'adminapotek', '2020-06-11 23:28:36');
INSERT INTO `rb_produk` VALUES ('37', '0', '12', '6', '13', 'Sirup', 'Warna Hitam,Warna Putih', 'sirup', '50', '6000', '0', '9000', '600', '', '<p>tes</p>', 'adminapotek', '2020-06-18 19:09:39');
INSERT INTO `rb_produk` VALUES ('38', '0', '12', '6', '14', 'silex 2', 'Warna Hitam,Warna Putih', 'silex-2', 'gram', '5000', '0', '7000', '500', '', '<p>jdjjd</p>', 'adminapotek', '2020-06-18 19:19:57');
INSERT INTO `rb_produk` VALUES ('39', '0', '12', '6', '14', 'hufagri', 'hitam;putih', 'hufagri', 'gram', '5000', '0', '7000', '400', '', '<p>ajdajajd?</p>', 'adminapotek', '2020-06-18 19:20:55');
INSERT INTO `rb_produk` VALUES ('40', '0', '12', '6', '13', 'hufa', 'hitam;putih', 'hufa', 'gram', '5000', '0', '7000', '400', '', '<p>dadada</p>', 'adminapotek', '2020-06-18 19:22:53');
INSERT INTO `rb_produk` VALUES ('41', '0', '12', '6', '15', 'silex', '100ml;200ml', 'silex', 'ml', '2000', '0', '5000', '50', '', '', 'tyagita88', '2020-06-21 18:50:05');
INSERT INTO `rb_produk` VALUES ('48', '0', '14', '9', '15', 'mantaps', null, 'mantaps', 'gram', '12000', '0', '15000', '500', '1707088.png', '<p>okelah</p>', 'tyagita88', '2020-06-25 23:47:56');
INSERT INTO `rb_produk` VALUES ('47', '0', '14', '10', '15', 'Oke Siaps', null, 'oke-siaps', '', '10000', '0', '12000', '100', 'aldyansyah.jpg', '<p>asnd</p>', 'tyagita88', '2020-06-22 23:48:10');

-- ----------------------------
-- Table structure for rb_produk_diskon
-- ----------------------------
DROP TABLE IF EXISTS `rb_produk_diskon`;
CREATE TABLE `rb_produk_diskon` (
  `id_produk_diskon` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk` int(11) NOT NULL,
  `id_reseller` int(11) NOT NULL,
  `diskon` int(11) NOT NULL,
  PRIMARY KEY (`id_produk_diskon`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_produk_diskon
-- ----------------------------
INSERT INTO `rb_produk_diskon` VALUES ('1', '13', '2', '8000');
INSERT INTO `rb_produk_diskon` VALUES ('2', '12', '2', '42000');
INSERT INTO `rb_produk_diskon` VALUES ('3', '9', '2', '15000');
INSERT INTO `rb_produk_diskon` VALUES ('4', '7', '2', '10000');
INSERT INTO `rb_produk_diskon` VALUES ('5', '4', '2', '89000');
INSERT INTO `rb_produk_diskon` VALUES ('7', '2', '2', '100000');
INSERT INTO `rb_produk_diskon` VALUES ('8', '14', '1', '10');
INSERT INTO `rb_produk_diskon` VALUES ('9', '14', '2', '0');
INSERT INTO `rb_produk_diskon` VALUES ('10', '16', '2', '342');
INSERT INTO `rb_produk_diskon` VALUES ('11', '12', '1', '0');
INSERT INTO `rb_produk_diskon` VALUES ('12', '11', '1', '0');
INSERT INTO `rb_produk_diskon` VALUES ('13', '10', '1', '0');
INSERT INTO `rb_produk_diskon` VALUES ('14', '26', '3', '0');
INSERT INTO `rb_produk_diskon` VALUES ('15', '25', '3', '0');
INSERT INTO `rb_produk_diskon` VALUES ('16', '24', '3', '0');
INSERT INTO `rb_produk_diskon` VALUES ('17', '23', '3', '0');
INSERT INTO `rb_produk_diskon` VALUES ('18', '21', '3', '0');
INSERT INTO `rb_produk_diskon` VALUES ('19', '28', '11', '0');
INSERT INTO `rb_produk_diskon` VALUES ('20', '36', '13', '0');
INSERT INTO `rb_produk_diskon` VALUES ('21', '37', '13', '0');
INSERT INTO `rb_produk_diskon` VALUES ('22', '41', '15', '0');
INSERT INTO `rb_produk_diskon` VALUES ('23', '42', '15', '10');
INSERT INTO `rb_produk_diskon` VALUES ('24', '43', '15', '999');
INSERT INTO `rb_produk_diskon` VALUES ('25', '44', '15', '999');
INSERT INTO `rb_produk_diskon` VALUES ('26', '45', '15', '999');
INSERT INTO `rb_produk_diskon` VALUES ('27', '46', '15', '999');
INSERT INTO `rb_produk_diskon` VALUES ('28', '47', '15', '999');

-- ----------------------------
-- Table structure for rb_produk_varian
-- ----------------------------
DROP TABLE IF EXISTS `rb_produk_varian`;
CREATE TABLE `rb_produk_varian` (
  `id_varian` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk` int(11) DEFAULT NULL,
  `nama_varian` varchar(255) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_varian`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of rb_produk_varian
-- ----------------------------
INSERT INTO `rb_produk_varian` VALUES ('1', '47', 'Mantap', '0');
INSERT INTO `rb_produk_varian` VALUES ('2', '47', 'oke', '12');
INSERT INTO `rb_produk_varian` VALUES ('3', '48', 'mantap 1', '10');
INSERT INTO `rb_produk_varian` VALUES ('4', '48', 'mantap2', '12');

-- ----------------------------
-- Table structure for rb_provinsi
-- ----------------------------
DROP TABLE IF EXISTS `rb_provinsi`;
CREATE TABLE `rb_provinsi` (
  `provinsi_id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_provinsi` varchar(50) NOT NULL,
  PRIMARY KEY (`provinsi_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_provinsi
-- ----------------------------
INSERT INTO `rb_provinsi` VALUES ('1', 'Bali');
INSERT INTO `rb_provinsi` VALUES ('2', 'Bangka Belitung');
INSERT INTO `rb_provinsi` VALUES ('3', 'Banten');
INSERT INTO `rb_provinsi` VALUES ('4', 'Bengkulu');
INSERT INTO `rb_provinsi` VALUES ('5', 'DI Yogyakarta');
INSERT INTO `rb_provinsi` VALUES ('6', 'DKI Jakarta');
INSERT INTO `rb_provinsi` VALUES ('7', 'Gorontalo');
INSERT INTO `rb_provinsi` VALUES ('8', 'Jambi');
INSERT INTO `rb_provinsi` VALUES ('9', 'Jawa Barat');
INSERT INTO `rb_provinsi` VALUES ('10', 'Jawa Tengah');
INSERT INTO `rb_provinsi` VALUES ('11', 'Jawa Timur');
INSERT INTO `rb_provinsi` VALUES ('12', 'Kalimantan Barat');
INSERT INTO `rb_provinsi` VALUES ('13', 'Kalimantan Selatan');
INSERT INTO `rb_provinsi` VALUES ('14', 'Kalimantan Tengah');
INSERT INTO `rb_provinsi` VALUES ('15', 'Kalimantan Timur');
INSERT INTO `rb_provinsi` VALUES ('16', 'Kalimantan Utara');
INSERT INTO `rb_provinsi` VALUES ('17', 'Kepulauan Riau');
INSERT INTO `rb_provinsi` VALUES ('18', 'Lampung');
INSERT INTO `rb_provinsi` VALUES ('19', 'Maluku');
INSERT INTO `rb_provinsi` VALUES ('20', 'Maluku Utara');
INSERT INTO `rb_provinsi` VALUES ('21', 'Nanggroe Aceh Darussalam (NAD)');
INSERT INTO `rb_provinsi` VALUES ('22', 'Nusa Tenggara Barat (NTB)');
INSERT INTO `rb_provinsi` VALUES ('23', 'Nusa Tenggara Timur (NTT)');
INSERT INTO `rb_provinsi` VALUES ('24', 'Papua');
INSERT INTO `rb_provinsi` VALUES ('25', 'Papua Barat');
INSERT INTO `rb_provinsi` VALUES ('26', 'Riau');
INSERT INTO `rb_provinsi` VALUES ('27', 'Sulawesi Barat');
INSERT INTO `rb_provinsi` VALUES ('28', 'Sulawesi Selatan');
INSERT INTO `rb_provinsi` VALUES ('29', 'Sulawesi Tengah');
INSERT INTO `rb_provinsi` VALUES ('30', 'Sulawesi Tenggara');
INSERT INTO `rb_provinsi` VALUES ('31', 'Sulawesi Utara');
INSERT INTO `rb_provinsi` VALUES ('32', 'Sumatera Barat');
INSERT INTO `rb_provinsi` VALUES ('33', 'Sumatera Selatan');
INSERT INTO `rb_provinsi` VALUES ('34', 'Sumatera Utara');

-- ----------------------------
-- Table structure for rb_rekening
-- ----------------------------
DROP TABLE IF EXISTS `rb_rekening`;
CREATE TABLE `rb_rekening` (
  `id_rekening` int(5) NOT NULL AUTO_INCREMENT,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL,
  PRIMARY KEY (`id_rekening`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_rekening
-- ----------------------------
INSERT INTO `rb_rekening` VALUES ('1', 'Bank BNI Syariah', '0817 0242 31', 'PT. BUKAKAPAK Indonesia');
INSERT INTO `rb_rekening` VALUES ('2', 'Bank Mandiri Syariah', '7128 5288 67', 'PT. BUKAKAPAK Indonesia ');

-- ----------------------------
-- Table structure for rb_rekening_reseller
-- ----------------------------
DROP TABLE IF EXISTS `rb_rekening_reseller`;
CREATE TABLE `rb_rekening_reseller` (
  `id_rekening_reseller` int(11) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `nama_bank` varchar(50) NOT NULL,
  `no_rekening` varchar(50) NOT NULL,
  `pemilik_rekening` varchar(150) NOT NULL,
  PRIMARY KEY (`id_rekening_reseller`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_rekening_reseller
-- ----------------------------
INSERT INTO `rb_rekening_reseller` VALUES ('1', '2', 'Bank Danamon', '56234234000', 'Syarii Sentral');
INSERT INTO `rb_rekening_reseller` VALUES ('2', '2', 'Bank BCA', '10823422', 'Syarii Sentral');
INSERT INTO `rb_rekening_reseller` VALUES ('3', '3', 'Bank Mandiri', '234123123332', 'Kalifah Umayyah');
INSERT INTO `rb_rekening_reseller` VALUES ('6', '15', 'admin', '341414', 'adada');

-- ----------------------------
-- Table structure for rb_reseller
-- ----------------------------
DROP TABLE IF EXISTS `rb_reseller`;
CREATE TABLE `rb_reseller` (
  `id_reseller` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_reseller` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `kota_id` int(11) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `kode_pos` int(7) NOT NULL,
  `keterangan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `referral` varchar(50) NOT NULL,
  `tanggal_daftar` datetime NOT NULL,
  PRIMARY KEY (`id_reseller`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_reseller
-- ----------------------------
INSERT INTO `rb_reseller` VALUES ('1', 'reseller', 'd073f60ff87c6ffe0abd48687b939667c3bdfd019df58d670ed45d230c470b94a0389d825453d40978c48e6f49ddb1368b16c069ab8bf27cfe8a9e1e2c15e954', 'Umar Lapakers', 'Laki-laki', '318', 'Jl. Angkasa Pura Raya, No 456 BG', '681267771355', 'reseller.bukittinggi@gmail.com', '26125', 'Tidak ada keterangan...', 'Mozilla_Firefox.png', '', '2017-05-23 00:00:00');
INSERT INTO `rb_reseller` VALUES ('2', 'reseller2', '097ee0662e53882111f603eb2de4dc9070d65782eee9f8bcb42829024c03af2813596b4b7d07dc05d55e9e345bc9a0eb9b2fb41565c529015660296ed7a96953', 'Syarii Sentral', 'Perempuan', '321', 'Jl. Ulak Karang Raya, No 165', '681966552310', 'reseller.padang@gmail.com', '34234', 'Kami merupakan perusahaan yang bergerak dalam bidang kecantikan. Produk yang kami hasilkan secara ilmiah terbukti bermanfaat.  Harapan perusahaan kami adalah, menciptakan produk kecantikan produksi Indonesia yang berstandar internasional.', 'reseller.png', 'reseller', '2017-05-23 00:00:00');
INSERT INTO `rb_reseller` VALUES ('3', 'reseller3', 'b75f92610f21b882cd791b99cc4cc177d3e274017656a63ad61d65bd956b99d7773b56011828305259f1fd61b02ca855e5a28eee34e146ad137fea554c9f35e3', 'Kalifah Umayyah', 'Perempuan', '56', 'Jl. Tiaka Raya, No 678', '685423020111', 'reseller.payakumbuh@gmail.com', '34124', 'Tidak ada keterangan...', 'reseller.png', 'reseller', '2017-05-28 00:00:00');
INSERT INTO `rb_reseller` VALUES ('4', 'udinn', '0944c75d38d1d77c1e2386c85c13be6cc008df927cd40a9ea9683babefe81d00b845f2261331c7c34c0697f36351ddb80eecc8da7475d55d1912ef4813e0627a', 'Al-Bukhori Lapak', 'Laki-laki', '114', 'Jl. Kenduri Miranti Jaya, No 4B', '684521212121', 'uidn@gmail.com', '234234', '', 'reseller.png', 'reseller1', '2017-06-08 08:15:49');
INSERT INTO `rb_reseller` VALUES ('8', 'karani', 'f0ee173a710fee0135db96e3611ccb97ce6b957859608df87b2b0cbf3ff7515a2ac453a3b390ebb5fff9e4096880e607ab222b03b3cb102174f8270256e9acaa', 'Khalid Walid', 'Laki-laki', '455', 'Jl. Gumarang Jaya', '681267901211', 'karani.reseller@gmail.com', '45098', 'Tidak ada keterangan,..', 'reseller.png', '', '2019-02-03 00:00:00');
INSERT INTO `rb_reseller` VALUES ('6', 'reseller1', '26b9d5c44e21c2e826528389b8f5a25cf6be8fc9664bb350a587f5389c2cf63802ba5f38939af4ec489e7ceab1c5262070d0b620bfba446160fad09758301553', 'Cut Kebaya', 'Laki-laki', '62', 'Jl. Gang Cinta Suci, No 333 UT', '688834771222', 'sadasd@sdfsd.dssdf', '32423423', '', 'reseller.png', 'reseller1', '2017-06-08 08:52:21');
INSERT INTO `rb_reseller` VALUES ('7', 'pataros', '23bf71807cbf8d06afe79f43ea3c645ca2a1ec572529bf349b0f2e50a09f86153fafcc9aaba730db2f2645262dab6184c0fb79097c955d90b4a69ec60eca81d1', 'Portanida Judo', 'Laki-laki', '79', 'jl. parakansaat no 21', '688910126225', 'ganiez.julians@gmail.com', '40293', '', '', '', '2018-09-11 11:28:43');
INSERT INTO `rb_reseller` VALUES ('9', 'udin', '701b8e57d1f5bea33aff7748846c47dc113f0d1d5c340086b174a9836f0600ca5db28ae8a02b295cd7d5edbe38d4519a0396fe0aaf2efd4d8d561754ce4cdff7', 'Toko Udin', 'Laki-laki', '318', 'Kec. Koto Tangah, Tunggul Hitam', '081276661433', 'toko.udin@gmail.com', '24125', '', '', 'reseller', '2019-09-07 15:11:28');
INSERT INTO `rb_reseller` VALUES ('10', 'khadijah', 'bd27913d7609368f05579482b683c416f3f9087fa7c1882cf06fdef4ef62564c1179c654018f097b14625729d855d771ac143326210bc9ec4d78de74f129ab77', 'Klinik Sitti Khadijah', 'Perempuan', '0', 'Jalan Minasa Upa M14 Ruko M, Gn. Sari, Kec. Rappocini, Kota Makassar, Sulawesi Selatan', '081345234344', 'khadijahklinik@gmail.com', '90221', 'Klinik Umum dan Gigi', 'sitti_khadijah.jpg', '', '2020-02-25 00:00:00');
INSERT INTO `rb_reseller` VALUES ('11', 'alauddin', '2887b01c395540a6854340f58b80a43aa95fd35521fe8b18c803670b8852b4d1f04256ff4333972e20f2da8b861ab0fd827c2b0f18c9efc49262d14b89eaf802', 'Griya Sehat Alauddin', 'Perempuan', '254', 'Jl Sultan Alauddin Makassar', '0813434335545', 'griyaalauddin@gmail.com', '90223', 'Klinik Bekam', 'griya_alauddin.jpeg', '', '2020-02-25 00:00:00');
INSERT INTO `rb_reseller` VALUES ('12', 'mardha', '2dcec97ff944348d9638dc1a0939a57a2a9d101a3a3b1eec001e0cd70924fc715a78415b66f881a341d1ce85b3580decd92bbf0f82c886b8ba543607aa68067e', 'Klinik AL 1', 'Perempuan', '254', 'Sultan Alauddin', '082344545455', 'mardha.097@gmail.com', '90223', '', '', 'alauddin', '2020-02-25 10:13:04');
INSERT INTO `rb_reseller` VALUES ('13', 'adminapotek', '43fd33c23a4963c4477b7ffa2d2c0d075668bbd19ac951390f2f8b9f2efa2884c65f5c3759d01968761f3bb8273911f1b36343da25561b324a5eff069fdda55d', 'Apotek Bakti Praja', 'Laki-laki', '171', 'Jl. A.R Hakim no 107 karawang', '081213766401', 'baktiprajamediak@gmail.com', '41313', '', '', 'fahri', '2020-06-10 10:06:11');
INSERT INTO `rb_reseller` VALUES ('14', 'jualan', '43fd33c23a4963c4477b7ffa2d2c0d075668bbd19ac951390f2f8b9f2efa2884c65f5c3759d01968761f3bb8273911f1b36343da25561b324a5eff069fdda55d', 'jualan', 'Laki-laki', '171', 'jaajad', '0811293848474', 'udab@gmail.com', '40455', '', '', 'admin', '2020-06-18 19:19:19');
INSERT INTO `rb_reseller` VALUES ('15', 'tyagita88', '43fd33c23a4963c4477b7ffa2d2c0d075668bbd19ac951390f2f8b9f2efa2884c65f5c3759d01968761f3bb8273911f1b36343da25561b324a5eff069fdda55d', 'tyagita', 'Laki-laki', '171', 'kaawaa', '081213766401', 'tyagita88@gmailcom', '412313', '', '', 'admin', '2020-06-21 18:25:56');

-- ----------------------------
-- Table structure for rb_reseller_cod
-- ----------------------------
DROP TABLE IF EXISTS `rb_reseller_cod`;
CREATE TABLE `rb_reseller_cod` (
  `id_cod` int(11) NOT NULL AUTO_INCREMENT,
  `id_reseller` int(11) NOT NULL,
  `nama_alamat` varchar(255) NOT NULL,
  `biaya_cod` int(11) NOT NULL,
  PRIMARY KEY (`id_cod`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_reseller_cod
-- ----------------------------
INSERT INTO `rb_reseller_cod` VALUES ('1', '1', 'Ulak Karang', '5500');
INSERT INTO `rb_reseller_cod` VALUES ('2', '1', 'Tunggul Hitam', '6500');
INSERT INTO `rb_reseller_cod` VALUES ('4', '1', 'Lubuk Begalung', '7600');
INSERT INTO `rb_reseller_cod` VALUES ('5', '13', 'Karawang Kota', '10000');
INSERT INTO `rb_reseller_cod` VALUES ('6', '15', 'karawang kota', '10000');

-- ----------------------------
-- Table structure for rb_reward
-- ----------------------------
DROP TABLE IF EXISTS `rb_reward`;
CREATE TABLE `rb_reward` (
  `id_reward` int(5) NOT NULL AUTO_INCREMENT,
  `posisi` int(100) NOT NULL,
  `reward` varchar(255) NOT NULL,
  PRIMARY KEY (`id_reward`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_reward
-- ----------------------------
INSERT INTO `rb_reward` VALUES ('1', '100000', 'Samsung Galaxy Senilai 2.500.000');
INSERT INTO `rb_reward` VALUES ('2', '500000', 'Laptop Asus Senilai 5.000.000');
INSERT INTO `rb_reward` VALUES ('3', '1000000', 'Pergi Umroh Senilai 25.000.000');
INSERT INTO `rb_reward` VALUES ('4', '90000000', 'Mobil Seken Senilai 50.000.000');
INSERT INTO `rb_reward` VALUES ('5', '120000000', 'Mobil Mewah Senilai 80.000.000');
INSERT INTO `rb_reward` VALUES ('7', '150000000', 'Rumah Mewah Senilai 100.000.000');

-- ----------------------------
-- Table structure for rb_saldo_konsumen
-- ----------------------------
DROP TABLE IF EXISTS `rb_saldo_konsumen`;
CREATE TABLE `rb_saldo_konsumen` (
  `id_saldo` int(11) NOT NULL AUTO_INCREMENT,
  `id_konsumen` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `transaction_date` datetime DEFAULT NULL ON UPDATE current_timestamp(),
  `tipe` int(11) NOT NULL COMMENT '1=> masuk, 2=>keluar',
  PRIMARY KEY (`id_saldo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of rb_saldo_konsumen
-- ----------------------------

-- ----------------------------
-- Table structure for rb_setting
-- ----------------------------
DROP TABLE IF EXISTS `rb_setting`;
CREATE TABLE `rb_setting` (
  `id_setting` int(11) NOT NULL AUTO_INCREMENT,
  `referral` int(11) NOT NULL,
  `tanggal_pencairan` varchar(11) NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  PRIMARY KEY (`id_setting`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_setting
-- ----------------------------
INSERT INTO `rb_setting` VALUES ('1', '5', '1', 'Y');

-- ----------------------------
-- Table structure for rb_solusi
-- ----------------------------
DROP TABLE IF EXISTS `rb_solusi`;
CREATE TABLE `rb_solusi` (
  `id_solusi` int(5) NOT NULL AUTO_INCREMENT,
  `kode_solusi` varchar(5) NOT NULL,
  `nama_solusi` varchar(150) NOT NULL,
  `solusi` text NOT NULL,
  `definisi` text NOT NULL,
  PRIMARY KEY (`id_solusi`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_solusi
-- ----------------------------
INSERT INTO `rb_solusi` VALUES ('1', 'P001', 'Abses Periodontal', '<p>Melakukan Scalling, root planing, curattage atau bedah flap yang disesuaikan dengan tingkat keparahannya</p>', '<p>Radang yang terlokalisasi dimana salah satu manifestasinya dalam bentuk nanah pada jaringan pendukung gigi</p>');
INSERT INTO `rb_solusi` VALUES ('2', 'P002', 'Bau mulut', '<p>Menghilangkan faktor etiologi bisa juga menggunakan mouthwash</p>', '<p>Bau tak sedap pada rongga mulut</p>');
INSERT INTO `rb_solusi` VALUES ('3', 'P003', 'Cheilitis', '<p>Memberikan pelembab pada bibir, menambah asupan vitamin, memberikan obat antibiotik/minosep, meningkatkan asupan air</p>', '<p>Peradangan yang terjadi pada bibir, umumnya ada pada sudut-sudut bibir</p>');
INSERT INTO `rb_solusi` VALUES ('4', 'P004', 'Eritema Multiformis', '<p>pemberian obat-obat immunomodulasi , kortikosteroid sistemis dosis rendah dan atau azatropin Kumur-kumur paliatif topikal</p>', '<p>suatu penyakit kulit dan membran mulkosa yang terrbatas. Umumnya terjadi pada pria dewasa muda tapi bisa juga pada anak-anak. umumnya penyebab tidak diketahui, mungkin berupa reaksi terhadap mikroorganisme atau obat</p>');
INSERT INTO `rb_solusi` VALUES ('5', 'P005', 'Gingivitis', '<p>Melakukan scalling dan meningkatkan DHE</p>', '<p>Radang gigi</p>');
INSERT INTO `rb_solusi` VALUES ('6', 'P006', 'Herpes Simpleks (Primary herpetic Gingivostomatitis)', '<p>Pemberian antivirus, Perbaikan nutrisi tubuh, dan pemberian obat anti nyeri, istrahat yang cukup.</p>', '<p>Gelembung yang merupakan infeksi virus HSV (Herpes Simpleks Virus) pada bagian sudut.</p>');
INSERT INTO `rb_solusi` VALUES ('7', 'P007', 'Kalkulus', '<p>Melakukan scalling, root planing, curattage atau bedah flap yang disesuaikan dengan tingkat keparahannya.</p>', '<p>Karang Gigi</p>');
INSERT INTO `rb_solusi` VALUES ('8', 'P008', 'Kandidiasis', '<p>Pembersihan jamur pada daerah yang terserang, pemberian obat anti jamur, dan peningkatan DHE.</p>', '<p>Infeksi jamur (Candida Albicans) pada rongga mulut yang disebabkan ketidakseimbangan flora normal pada mulut.</p>');
INSERT INTO `rb_solusi` VALUES ('9', 'P009', 'Kanker', '<p>Pemberian obat anti kanker atau kemoterapi, atau radioterapi, peningkatan DHE.</p>', '<p>Pertumbuhan sel yang tidak terkendali dan bersifat ganas.</p>');
INSERT INTO `rb_solusi` VALUES ('10', 'P010', 'Karies Media', '<p>Restorasi</p>', '<p>Gigi berlubang yang baru mengenai lapisan dentin.</p>');
INSERT INTO `rb_solusi` VALUES ('11', 'P011', 'karies Profunda', '<p>Restorasi, pembersihan dan sterilisasi saluran akar.</p>', '<p>Gigi berlubang yang sudah mengenai jaringan pulpa.</p>');
INSERT INTO `rb_solusi` VALUES ('12', 'P012', 'Karies Superfisial', '<p>Restorasi</p>', '<p>Gigi berlubang yang hanya sampai la[isan terluar atau email.</p>');
INSERT INTO `rb_solusi` VALUES ('13', 'P013', 'Kelainan Sendi Temporomandibuler', '<p>Perbaikan Oklusi Gigi, tindakan pembedahan jika parah.</p>', '<p>Kelainan pada otot atau sendi disekitar temporo mandibular joint.</p>');
INSERT INTO `rb_solusi` VALUES ('14', 'P014', 'Linken Planus', '<p>Pemberian krim atau salep betametason valerat 0,1%, dirawat dengan steroid dan immunosupresan topikal atau sistemik.</p>', '<p>Penyakit gatal yang kambuhan, dimulai sebagai ruam dari benjolan kecil yang menyebar, yang kemudian menyatu membentuk plak yang bersisik dan kasar.</p>');
INSERT INTO `rb_solusi` VALUES ('15', 'P015', 'Masalah Kelenjar ludah', '<p>Pemberian antibiotik atau antivirus sesuai faktor penyebabnya, pembedahan.</p>', '<p>Pembengkakan pada saluran kelenjar ludah.</p>');
INSERT INTO `rb_solusi` VALUES ('16', 'P016', 'Nekrosis Pulpa', '<p>Perawatan saluran akar (PSA / Endodontic treatment) atau pencabutan gigi.</p>', '<p>Kematian jaringan pulpa akibat peradangan pada pulpa yang berlangsung kronis.</p>');
INSERT INTO `rb_solusi` VALUES ('17', 'P017', 'Periodontitis', '<p>Melakukan scalling, root planing, curattage atau bedah flap yang disesuaikan dengan tingkat keparahannya, serta pemberian antibiotik jika sudah parah.</p>', '<p>Peradangan gusi yang sudah menyebar ke daerah penyangga gigi.</p>');
INSERT INTO `rb_solusi` VALUES ('18', 'P018', 'Pulpitis Akut', '<p>Dipulpotomi (pemotongan pulpa), restorasi, pemberishan dan sterilisasi saluran kar serta pemberian obat pereda nyeri.</p>', '<p>Radang pada jaringan pulpa yang tidak parah, jika penyebab peradangan telah dihilangkan maka pulpa akan pulih seperti semula.</p>');
INSERT INTO `rb_solusi` VALUES ('19', 'P019', 'Pulpitis Kronis', '<p>Dipulpotomi (pemotongan pulpa), Restorasi dan pemberian obat pereda nyeri, devitalisasi (syaraf dimatikan) dan dilakukan perawatan saluran akar (PSA / endodontic treatment).</p>', '<p>Peradangan parah pada pulpa yang tidak akan pulih kembali sekalipun penyebabnya dihilangkan, labat laun akan menyebabkan kematian jaringan.</p>');
INSERT INTO `rb_solusi` VALUES ('20', 'P020', 'Sariawan', '<p>Penigkatan asupan nutrisi, vitamin dan air, pemberian minosep, meminimalisir faktor pencetus (predisposisi).</p>', '<p>Peradangan pada jaringan mukosa mulut</p>');
INSERT INTO `rb_solusi` VALUES ('21', 'P021', 'Mohon Maaf, System tidak dapat mendiagnosis penyakit anda. Silahkan kirim pesan atau gejala anda.', '<p>-</p>', '<p>-</p>');

-- ----------------------------
-- Table structure for rb_supplier
-- ----------------------------
DROP TABLE IF EXISTS `rb_supplier`;
CREATE TABLE `rb_supplier` (
  `id_supplier` int(11) NOT NULL AUTO_INCREMENT,
  `nama_supplier` varchar(255) NOT NULL,
  `kontak_person` varchar(100) NOT NULL,
  `alamat_lengkap` text NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat_email` varchar(100) NOT NULL,
  `kode_pos` int(10) NOT NULL,
  `no_telpon` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `keterangan` text NOT NULL,
  PRIMARY KEY (`id_supplier`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rb_supplier
-- ----------------------------
INSERT INTO `rb_supplier` VALUES ('1', 'PT. Elektronik Jaya Abadi', 'Muhammad Arsen', 'Jl. Siti Nurbayara, No 23 D, Tunggul Hitam, Padang', '082173054522', 'jaya.abadi@gmail.com', '56123', '0751461692', '0751461691', 'Tidak ada keterangan,..');
INSERT INTO `rb_supplier` VALUES ('2', 'PT. Muda Hardware Sejahtera', 'Saiful Tanjung', 'Jl. Persada Ramayana, Ulak Karang, Padang', '098912334566', 'hardware.sejahtera@gmail.com', '87632', '075165321', '075165312', 'Tidak ada keterangan,..');
INSERT INTO `rb_supplier` VALUES ('3', 'PT.Antasari Jaya Melajaya', 'Roberto Duransi', 'Jl. Kilometer Jaya Raya', '081288991244', 'roberto.melajaya@gmail.com', '12456', '0751890231', '0751890234', 'Tidak ada keterangan untuk supplier ini...');

-- ----------------------------
-- Table structure for sekilasinfo
-- ----------------------------
DROP TABLE IF EXISTS `sekilasinfo`;
CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL AUTO_INCREMENT,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  PRIMARY KEY (`id_sekilas`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of sekilasinfo
-- ----------------------------
INSERT INTO `sekilasinfo` VALUES ('1', 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2015-04-11', '', 'Y');
INSERT INTO `sekilasinfo` VALUES ('2', 'WHO merilis, 30 persen anak di dunia kecanduan komputer dan menonton televisi.', '2015-03-16', '', 'Y');
INSERT INTO `sekilasinfo` VALUES ('3', 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lama.', '2015-04-17', '', 'Y');
INSERT INTO `sekilasinfo` VALUES ('4', 'Menurut United Stated Trade Representatives, 25% obat yang beredar di adalah palsu.', '2015-04-17', '', 'Y');

-- ----------------------------
-- Table structure for slide
-- ----------------------------
DROP TABLE IF EXISTS `slide`;
CREATE TABLE `slide` (
  `id_slide` int(5) NOT NULL AUTO_INCREMENT,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `waktu` datetime NOT NULL,
  PRIMARY KEY (`id_slide`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of slide
-- ----------------------------
INSERT INTO `slide` VALUES ('1', 'Hijab makes a woman as beautiful as an angel', 'hijab3.jpg', '2016-05-13 08:09:18');
INSERT INTO `slide` VALUES ('2', 'Beautiful Indonesian Women with Beautiful Eyes hijab niqab', 'hijab2.jpg', '2016-05-13 08:10:18');
INSERT INTO `slide` VALUES ('4', 'Hijabers - Be inspiring woman with hijab', 'hijab1.jpg', '2018-02-18 00:42:22');

-- ----------------------------
-- Table structure for spk_gejala
-- ----------------------------
DROP TABLE IF EXISTS `spk_gejala`;
CREATE TABLE `spk_gejala` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of spk_gejala
-- ----------------------------
INSERT INTO `spk_gejala` VALUES ('1', 'G001', 'Demam');
INSERT INTO `spk_gejala` VALUES ('2', 'G002', 'Nafsu makan berkurang');
INSERT INTO `spk_gejala` VALUES ('3', 'G003', 'Gelisah');
INSERT INTO `spk_gejala` VALUES ('4', 'G004', 'Muntah');
INSERT INTO `spk_gejala` VALUES ('5', 'G005', 'Badan lemas/lemah');
INSERT INTO `spk_gejala` VALUES ('6', 'G006', 'Berat badan menurun');
INSERT INTO `spk_gejala` VALUES ('7', 'G007', 'Bolak-balik ke wc');
INSERT INTO `spk_gejala` VALUES ('8', 'G008', 'Cengeng');
INSERT INTO `spk_gejala` VALUES ('9', 'G009', 'Dehidrasi seperti turgor (kelenturan) kulit berkurang, mata cekung, ubun-ubun cekung, mulut merah & kering');
INSERT INTO `spk_gejala` VALUES ('10', 'G010', 'Tinjanya cair mungkin disertai lender/darah');
INSERT INTO `spk_gejala` VALUES ('11', 'G011', 'Dispnea (sesak napas)');
INSERT INTO `spk_gejala` VALUES ('12', 'G012', 'Ekspirasi (penghembusan napas) berbunyi wheezing (bising mengi) & sianosis (kebiruan kulit) bibir');
INSERT INTO `spk_gejala` VALUES ('13', 'G013', 'Pilek');
INSERT INTO `spk_gejala` VALUES ('14', 'G014', 'Batuk kering');
INSERT INTO `spk_gejala` VALUES ('15', 'G015', 'Pernapasan dangkal dan cepat');
INSERT INTO `spk_gejala` VALUES ('16', 'G016', 'Ekspirasi (penghembusan napas) berbunyi wheezing (bising mengi)');
INSERT INTO `spk_gejala` VALUES ('17', 'G017', 'Nafas kering & nyeri');
INSERT INTO `spk_gejala` VALUES ('18', 'G018', 'Pernapasan menjadi cepat dan sianosis (kebiruan kulit) bibir & lidah');
INSERT INTO `spk_gejala` VALUES ('19', 'G019', 'Batuk pilek');
INSERT INTO `spk_gejala` VALUES ('20', 'G020', 'Sakit Perut');
INSERT INTO `spk_gejala` VALUES ('21', 'G021', 'Sakit tenggorokan');
INSERT INTO `spk_gejala` VALUES ('22', 'G022', 'Susah Menelan');
INSERT INTO `spk_gejala` VALUES ('23', 'G023', 'Batuk');
INSERT INTO `spk_gejala` VALUES ('24', 'G024', 'Kejang');
INSERT INTO `spk_gejala` VALUES ('25', 'G025', 'Membuka hidung lebar-lebar pada saat menarik napas & sianosis (kebiruan kulit) hidung & bibir');
INSERT INTO `spk_gejala` VALUES ('26', 'G026', 'Diare');
INSERT INTO `spk_gejala` VALUES ('27', 'G027', 'Gangguan kesadaran');
INSERT INTO `spk_gejala` VALUES ('28', 'G028', 'Anoreksia atau batuk');
INSERT INTO `spk_gejala` VALUES ('29', 'G029', ' Kaku di leher');
INSERT INTO `spk_gejala` VALUES ('30', 'G030', 'Kolaps');
INSERT INTO `spk_gejala` VALUES ('31', 'G031', 'Batuk kuat serta kering');
INSERT INTO `spk_gejala` VALUES ('32', 'G032', 'Demam & terkadang berkeringat');
INSERT INTO `spk_gejala` VALUES ('33', 'G033', 'Inspirasi (tarikan napas) berbunyi stidor (kasar)');
INSERT INTO `spk_gejala` VALUES ('34', 'G034', 'Suara serak');
INSERT INTO `spk_gejala` VALUES ('35', 'G035', 'Tenggorokan dengan guratan merah');
INSERT INTO `spk_gejala` VALUES ('36', 'G036', 'Kesulitan mengeluarkan napas dari paru-paru');
INSERT INTO `spk_gejala` VALUES ('37', 'G037', 'Rasa haus atau lapar udara');
INSERT INTO `spk_gejala` VALUES ('38', 'G038', 'Sianosis (kebiruan kulit)');
INSERT INTO `spk_gejala` VALUES ('39', 'G039', 'Batuk-batuk selama lebih dari 3 minggu');
INSERT INTO `spk_gejala` VALUES ('40', 'G040', 'Demam tidak terlalu tinggi yang berlangsung lama');
INSERT INTO `spk_gejala` VALUES ('41', 'G041', 'Influenza');
INSERT INTO `spk_gejala` VALUES ('42', 'G042', 'Keringat dingin');
INSERT INTO `spk_gejala` VALUES ('43', 'G043', 'Perasaan tidak enak (malaise) & lemah');

-- ----------------------------
-- Table structure for spk_penyakit
-- ----------------------------
DROP TABLE IF EXISTS `spk_penyakit`;
CREATE TABLE `spk_penyakit` (
  `id` int(5) NOT NULL,
  `penyakit` varchar(50) DEFAULT NULL,
  `info` longtext NOT NULL,
  `solusi` longtext NOT NULL,
  KEY `id` (`id`),
  CONSTRAINT `spk_penyakit_ibfk_1` FOREIGN KEY (`id`) REFERENCES `spk_rule` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of spk_penyakit
-- ----------------------------
INSERT INTO `spk_penyakit` VALUES ('1', 'ISPA (Bronkiolitis)', 'infeksi saluran pernapasan yang menyebabkan terjadinya adang dan penyumbatan di dalam \r\n bronkiolus atau saluran pernapasan kecil di dalam paru-paru. Kondisi ini umumnya dialami oleh bayi sampai anak-anak \r\n usia dua tahun ke bawah.', 'Mengistirahatkan anak, berikan dia banyak cairan (termasuk ASI dan susu formula)\r\n	  Hali ini dilakukan untuk mencegah terjadinya dehidrasi, Mensterilkan ruangan kamar anak Anda dari polusi udara (terutama asap rokok),\r\n	  Memberikan obat tetes saline (larutan mengandung garam) yang bisa dibeli secara bebas di apotek untuk meredakan hidung \r\n	  anak Anda yang tersumbat.');
INSERT INTO `spk_penyakit` VALUES ('2', 'ISPA (Pneumoia)', 'infeksi yang memicu inflamasi pada kantong-kantong udara di salah satu atau kedua paru-paru. \r\n	      Pada pengidap pneumonia, sekumpulan kantong-kantong udara kecil di ujung saluran pernapasan dalam paru-paru \r\n	      akan membengkak dan dipenuhi cairan.', 'Mengonsumsi analgesik (obat pereda sakit), Menghindari konsumsi obat batuk');
INSERT INTO `spk_penyakit` VALUES ('3', 'ISPA (Tonsilitis)', 'merupakan dua kelenjar kecil yang terdapat di dalam tenggorokan. \r\n	        Organ ini berfungsi sebagai pencegah infeksi, terutama pada anak-anak. \r\n	        Seiring  dengan perkembangan umur, sistem kekebalan tubuh mereka makin kuat dan perlahan-lahan tugas \r\n	        tonsil sebagai penangkal infeksi mulai tergantikan. Ketika peran tonsil sudah tidak dibutuhkan lagi, \r\n	        kedua kelenjar ini kemudian berangsur-angsur menyusut.', 'menggunakan obat pereda rasa sakit seperti ibuprofen, parasetamol, atau aspirin.');
INSERT INTO `spk_penyakit` VALUES ('4', 'ISPA (Brochitis)', 'Bronkitis adalah infeksi pada saluran pernapasan utama dari paru-paru atau bronkus yang menyebabkan terjadinya peradangan atau inflamasi pada saluran tersebut. Kondisi ini termasuk sebagai salah satu penyakit pernapasan.', 'minum banyak cairan dan juga banyak istirahat.');
INSERT INTO `spk_penyakit` VALUES ('5', 'Diare', 'Diare merupakan kondisi yang ditandai dengan encernya tinja yang dikeluarkan dengan frekuensi buang air besar (BAB) yang lebih sering dibandingkan dengan biasanya. Pada umumnya, diare terjadi akibat konsumsi makanan atau minuman yang terkontaminasi bakteri, virus, atau parasit.', 'Meningkatkan konsumsi cairan, Penggunaan antibiotik untuk diare');
INSERT INTO `spk_penyakit` VALUES ('6', 'Typhoid', 'enyakit akut dengan gejala demam yang disebabkan oleh bakteri Salmonella typhi. Serupa dengan tifoid, ada gejala tipes yang dalam bahasa medis disebut dengan paratifoid, disebabkan oleh Salmonella paratyphi, biasanya menyebabkan penyakit seperti tifoid namun dengan klinis yang lebih ringan. Bakteri ini ada dalam air atau makanan yang kemudian menyebar ke orang lain melalui jalur makanan.', 'konsumsi makanan lunak yang tinggi kalori dan tinggi protein, pemberian obat penurun panas seperti paracetamol dan menghindari makanan yang mengandung banyak serat');
INSERT INTO `spk_penyakit` VALUES ('7', 'Meningitis', 'infeksi pada meninges (selaput pelindung) yang menyelimuti otak dan saraf tulang belakang. Ketika meradang, meninges membengkak karena infeksi yang terjadi. Sistem saraf dan otak bisa rusak pada beberapa kasus. Tiga gejala meningitis yang patut diwaspadai adalah demam, sakit kepala, dan leher yang terasa kaku.', 'banyak istirahat dan minum obat pereda rasa sakit untuk sakit kepala. Sedangkan pengobatan meningitis pada pasien meningitis bakterialis, bisa dirawat dengan antibiotik atau obat-obatan untuk mengatasi infeksi yang disebabkan bakteri.');
INSERT INTO `spk_penyakit` VALUES ('8', 'ISPA (Laringitis)', 'peradangan yang terjadi pada laring (kotak pita suara di dalam tenggorokan). Gejala yang umum pada laringitis yaitu nyeri tenggorokan, batuk, demam, suara yang dikeluarkan serak, atau bahkan kehilangan suara sama sekali.', 'Minumlah banyak air putih untuk mencegah dehidrasi. konsumsilah obat-obatan pereda rasa sakit seperti ibuprofen atau paracetamol. Aturlah tingkat kelembapan udara di rumah ');
INSERT INTO `spk_penyakit` VALUES ('9', 'TBC', 'Penyakit TBC atau yang sering dikenal tuberkulosis merupakan suatu penaykit infeksi kronis / menahun dan menular yang disebabkan oleh bakteri Mikobakterium tuberkulosa yang dapat menyerang pada siapa saja tanpa memandang usia dan jenis kelamin.', 'Olahraga teratur untuk membantu menyehatkan tubuh. makan makanan yang sehat dan bergizi.');
INSERT INTO `spk_penyakit` VALUES ('10', 'Asma', 'membuat penderita sulit bernapas sama sekali. Kondisi ini bisa terjadi pada siapa saja, tidak peduli berapa usia dan apa jenis kelaminnya. Mulai dari bayi hingga orang dewasa, wanita juga pria bisa terjangkit penyakit ini. Dan walaupun tidak dapat disembuhkan, penyakit asma setidaknya bisa diredakan. Dengan pengobatan sederhana, gejala asma dapat dikendalikan hingga tidak mengganggu kehidupan penderitanya.', 'Duduk dan ambil napas pelan-pelan dengan stabil. Semprotkan inhaler setiap 30-60 detik, maksimal 10 semprotan.');

-- ----------------------------
-- Table structure for spk_rule
-- ----------------------------
DROP TABLE IF EXISTS `spk_rule`;
CREATE TABLE `spk_rule` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL,
  `G016` tinyint(1) DEFAULT NULL,
  `G017` tinyint(1) DEFAULT NULL,
  `G018` tinyint(1) DEFAULT NULL,
  `G019` tinyint(1) DEFAULT NULL,
  `G020` tinyint(1) DEFAULT NULL,
  `G021` tinyint(1) DEFAULT NULL,
  `G022` tinyint(1) DEFAULT NULL,
  `G023` tinyint(1) DEFAULT NULL,
  `G024` tinyint(1) DEFAULT NULL,
  `G025` tinyint(1) DEFAULT NULL,
  `G026` tinyint(1) DEFAULT NULL,
  `G027` tinyint(1) DEFAULT NULL,
  `G028` tinyint(1) DEFAULT NULL,
  `G029` tinyint(1) DEFAULT NULL,
  `G030` tinyint(1) DEFAULT NULL,
  `G031` tinyint(1) DEFAULT NULL,
  `G032` tinyint(1) DEFAULT NULL,
  `G033` tinyint(1) DEFAULT NULL,
  `G034` tinyint(1) DEFAULT NULL,
  `G035` tinyint(1) DEFAULT NULL,
  `G036` tinyint(1) DEFAULT NULL,
  `G037` tinyint(1) DEFAULT NULL,
  `G038` tinyint(1) DEFAULT NULL,
  `G039` tinyint(1) DEFAULT NULL,
  `G040` tinyint(1) DEFAULT NULL,
  `G041` tinyint(1) DEFAULT NULL,
  `G042` tinyint(1) DEFAULT NULL,
  `G043` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of spk_rule
-- ----------------------------
INSERT INTO `spk_rule` VALUES ('1', '1', '1', '1', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spk_rule` VALUES ('2', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spk_rule` VALUES ('3', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spk_rule` VALUES ('4', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spk_rule` VALUES ('5', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spk_rule` VALUES ('6', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spk_rule` VALUES ('7', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spk_rule` VALUES ('8', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `spk_rule` VALUES ('9', '0', '1', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1');
INSERT INTO `spk_rule` VALUES ('10', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for statistik
-- ----------------------------
DROP TABLE IF EXISTS `statistik`;
CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of statistik
-- ----------------------------
INSERT INTO `statistik` VALUES ('223.255.231.148', '2014-05-06', '1', '1399357334');
INSERT INTO `statistik` VALUES ('223.255.231.147', '2014-05-15', '3', '1400119147');
INSERT INTO `statistik` VALUES ('223.255.224.73', '2014-05-15', '12', '1400123797');
INSERT INTO `statistik` VALUES ('223.255.224.69', '2014-05-16', '2', '1400215103');
INSERT INTO `statistik` VALUES ('118.96.51.231', '2014-05-16', '19', '1400233044');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-05-16', '2', '1400228049');
INSERT INTO `statistik` VALUES ('::1', '2014-06-20', '2', '1403230579');
INSERT INTO `statistik` VALUES ('::1', '2014-06-22', '8', '1403436591');
INSERT INTO `statistik` VALUES ('223.255.231.154', '2014-06-26', '1', '1403739948');
INSERT INTO `statistik` VALUES ('223.255.231.148', '2014-06-26', '6', '1403745715');
INSERT INTO `statistik` VALUES ('223.255.224.74', '2014-06-26', '1', '1403748060');
INSERT INTO `statistik` VALUES ('223.255.224.69', '2014-06-26', '1', '1403753239');
INSERT INTO `statistik` VALUES ('223.255.224.77', '2014-06-29', '1', '1404039342');
INSERT INTO `statistik` VALUES ('::1', '2014-07-02', '6', '1404277263');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-07-17', '2', '1405582494');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-07-21', '1', '1405929828');
INSERT INTO `statistik` VALUES ('36.76.60.43', '2014-07-21', '1', '1405951864');
INSERT INTO `statistik` VALUES ('223.255.231.154', '2014-07-21', '2', '1405957200');
INSERT INTO `statistik` VALUES ('223.255.227.21', '2014-07-22', '1', '1405995171');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-07-22', '1', '1405997152');
INSERT INTO `statistik` VALUES ('223.255.227.21', '2014-07-23', '1', '1406100212');
INSERT INTO `statistik` VALUES ('223.255.227.17', '2014-07-23', '1', '1406104552');
INSERT INTO `statistik` VALUES ('223.255.227.23', '2014-07-24', '1', '1406168095');
INSERT INTO `statistik` VALUES ('223.255.231.153', '2014-07-24', '1', '1406204439');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-07-25', '1', '1406268985');
INSERT INTO `statistik` VALUES ('180.76.5.193', '2014-08-06', '1', '1407302738');
INSERT INTO `statistik` VALUES ('180.76.5.23', '2014-08-06', '1', '1407304739');
INSERT INTO `statistik` VALUES ('202.67.36.241', '2014-08-06', '1', '1407305643');
INSERT INTO `statistik` VALUES ('198.148.27.22', '2014-08-06', '1', '1407306703');
INSERT INTO `statistik` VALUES ('180.251.170.42', '2014-08-06', '7', '1407310167');
INSERT INTO `statistik` VALUES ('128.199.171.191', '2014-08-06', '3', '1407323435');
INSERT INTO `statistik` VALUES ('223.255.231.149', '2014-08-06', '2', '1407309879');
INSERT INTO `statistik` VALUES ('223.255.227.28', '2014-08-06', '8', '1407311801');
INSERT INTO `statistik` VALUES ('103.24.49.242', '2014-08-06', '1', '1407312326');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-08-06', '1', '1407313297');
INSERT INTO `statistik` VALUES ('180.214.233.34', '2014-08-06', '1', '1407321063');
INSERT INTO `statistik` VALUES ('66.249.77.87', '2014-08-06', '1', '1407323509');
INSERT INTO `statistik` VALUES ('223.255.227.30', '2014-08-06', '1', '1407325862');
INSERT INTO `statistik` VALUES ('180.254.207.13', '2014-08-06', '5', '1407330687');
INSERT INTO `statistik` VALUES ('114.79.13.199', '2014-08-06', '1', '1407336900');
INSERT INTO `statistik` VALUES ('202.152.199.34', '2014-08-06', '7', '1407337100');
INSERT INTO `statistik` VALUES ('180.76.6.21', '2014-08-07', '1', '1407347753');
INSERT INTO `statistik` VALUES ('114.79.13.55', '2014-08-07', '3', '1407354277');
INSERT INTO `statistik` VALUES ('114.125.41.136', '2014-08-07', '1', '1407352625');
INSERT INTO `statistik` VALUES ('180.76.6.147', '2014-08-07', '1', '1407355344');
INSERT INTO `statistik` VALUES ('180.76.6.64', '2014-08-07', '1', '1407367237');
INSERT INTO `statistik` VALUES ('69.171.247.116', '2014-08-07', '1', '1407379834');
INSERT INTO `statistik` VALUES ('69.171.247.119', '2014-08-07', '1', '1407379834');
INSERT INTO `statistik` VALUES ('69.171.247.114', '2014-08-07', '1', '1407379834');
INSERT INTO `statistik` VALUES ('69.171.247.115', '2014-08-07', '1', '1407379834');
INSERT INTO `statistik` VALUES ('202.67.34.29', '2014-08-07', '2', '1407380415');
INSERT INTO `statistik` VALUES ('36.76.52.112', '2014-08-07', '1', '1407380496');
INSERT INTO `statistik` VALUES ('223.255.231.145', '2014-08-07', '5', '1407387045');
INSERT INTO `statistik` VALUES ('223.255.231.153', '2014-08-07', '2', '1407388883');
INSERT INTO `statistik` VALUES ('223.255.227.27', '2014-08-07', '1', '1407393087');
INSERT INTO `statistik` VALUES ('180.76.5.25', '2014-08-07', '1', '1407394749');
INSERT INTO `statistik` VALUES ('223.255.231.146', '2014-08-07', '1', '1407397183');
INSERT INTO `statistik` VALUES ('157.55.39.248', '2014-08-07', '1', '1407397231');
INSERT INTO `statistik` VALUES ('180.254.200.55', '2014-08-07', '2', '1407399466');
INSERT INTO `statistik` VALUES ('110.139.67.15', '2014-08-07', '8', '1407399221');
INSERT INTO `statistik` VALUES ('180.242.17.64', '2014-08-07', '11', '1407414373');
INSERT INTO `statistik` VALUES ('141.0.8.59', '2014-08-07', '1', '1407412384');
INSERT INTO `statistik` VALUES ('110.76.149.91', '2014-08-07', '1', '1407422367');
INSERT INTO `statistik` VALUES ('223.255.231.151', '2014-08-07', '3', '1407426943');
INSERT INTO `statistik` VALUES ('82.145.209.206', '2014-08-07', '1', '1407430369');
INSERT INTO `statistik` VALUES ('223.255.227.28', '2014-08-08', '3', '1407469589');
INSERT INTO `statistik` VALUES ('66.93.156.50', '2014-08-08', '1', '1407472340');
INSERT INTO `statistik` VALUES ('202.62.17.47', '2014-08-08', '1', '1407484393');
INSERT INTO `statistik` VALUES ('36.70.135.163', '2014-08-08', '6', '1407485987');
INSERT INTO `statistik` VALUES ('173.252.74.115', '2014-08-08', '1', '1407485153');
INSERT INTO `statistik` VALUES ('118.96.58.136', '2014-08-08', '2', '1407486347');
INSERT INTO `statistik` VALUES ('114.79.29.68', '2014-08-08', '1', '1407502537');
INSERT INTO `statistik` VALUES ('66.220.156.113', '2014-08-08', '1', '1407503375');
INSERT INTO `statistik` VALUES ('112.215.66.79', '2014-08-08', '1', '1407503381');
INSERT INTO `statistik` VALUES ('125.163.113.156', '2014-08-08', '9', '1407508824');
INSERT INTO `statistik` VALUES ('180.76.5.94', '2014-08-08', '1', '1407508624');
INSERT INTO `statistik` VALUES ('120.172.9.192', '2014-08-08', '1', '1407515634');
INSERT INTO `statistik` VALUES ('202.67.41.51', '2014-08-08', '1', '1407515702');
INSERT INTO `statistik` VALUES ('180.253.243.222', '2014-08-09', '1', '1407542724');
INSERT INTO `statistik` VALUES ('36.75.224.20', '2014-08-09', '1', '1407548005');
INSERT INTO `statistik` VALUES ('180.76.5.65', '2014-08-09', '1', '1407548865');
INSERT INTO `statistik` VALUES ('66.249.77.77', '2014-08-09', '2', '1407582711');
INSERT INTO `statistik` VALUES ('180.76.6.137', '2014-08-09', '1', '1407553037');
INSERT INTO `statistik` VALUES ('66.249.77.87', '2014-08-09', '1', '1407554836');
INSERT INTO `statistik` VALUES ('66.249.77.97', '2014-08-09', '2', '1407562640');
INSERT INTO `statistik` VALUES ('120.177.44.126', '2014-08-09', '2', '1407558625');
INSERT INTO `statistik` VALUES ('223.255.231.145', '2014-08-09', '3', '1407558663');
INSERT INTO `statistik` VALUES ('36.73.64.113', '2014-08-09', '1', '1407558640');
INSERT INTO `statistik` VALUES ('36.72.187.12', '2014-08-09', '1', '1407560351');
INSERT INTO `statistik` VALUES ('202.67.41.51', '2014-08-09', '1', '1407561096');
INSERT INTO `statistik` VALUES ('114.125.60.68', '2014-08-09', '4', '1407561514');
INSERT INTO `statistik` VALUES ('202.67.40.50', '2014-08-09', '1', '1407562007');
INSERT INTO `statistik` VALUES ('180.76.6.136', '2014-08-09', '1', '1407562581');
INSERT INTO `statistik` VALUES ('110.232.81.2', '2014-08-09', '5', '1407563275');
INSERT INTO `statistik` VALUES ('146.185.28.59', '2014-08-09', '1', '1407564768');
INSERT INTO `statistik` VALUES ('120.174.157.139', '2014-08-09', '1', '1407568139');
INSERT INTO `statistik` VALUES ('223.255.227.23', '2014-08-09', '2', '1407570163');
INSERT INTO `statistik` VALUES ('193.105.210.119', '2014-08-09', '1', '1407577518');
INSERT INTO `statistik` VALUES ('125.162.57.66', '2014-08-09', '2', '1407579822');
INSERT INTO `statistik` VALUES ('180.241.163.1', '2014-08-09', '8', '1407580493');
INSERT INTO `statistik` VALUES ('36.76.44.163', '2014-08-09', '6', '1407603574');
INSERT INTO `statistik` VALUES ('180.76.5.144', '2014-08-09', '1', '1407582757');
INSERT INTO `statistik` VALUES ('107.167.103.40', '2014-08-09', '1', '1407586189');
INSERT INTO `statistik` VALUES ('36.68.48.23', '2014-08-09', '1', '1407586974');
INSERT INTO `statistik` VALUES ('192.99.218.151', '2014-08-09', '4', '1407587574');
INSERT INTO `statistik` VALUES ('36.74.55.24', '2014-08-09', '3', '1407589161');
INSERT INTO `statistik` VALUES ('118.97.212.184', '2014-08-09', '8', '1407595169');
INSERT INTO `statistik` VALUES ('36.72.114.118', '2014-08-09', '2', '1407597684');
INSERT INTO `statistik` VALUES ('180.76.5.153', '2014-08-09', '1', '1407602870');
INSERT INTO `statistik` VALUES ('180.76.5.59', '2014-08-09', '1', '1407603153');
INSERT INTO `statistik` VALUES ('180.76.5.18', '2014-08-10', '1', '1407606581');
INSERT INTO `statistik` VALUES ('180.254.155.156', '2014-08-10', '2', '1407607003');
INSERT INTO `statistik` VALUES ('180.76.6.42', '2014-08-10', '1', '1407608363');
INSERT INTO `statistik` VALUES ('36.68.242.217', '2014-08-10', '5', '1407627100');
INSERT INTO `statistik` VALUES ('66.249.77.77', '2014-08-10', '2', '1407633623');
INSERT INTO `statistik` VALUES ('202.67.44.64', '2014-08-10', '1', '1407629598');
INSERT INTO `statistik` VALUES ('180.76.6.43', '2014-08-10', '1', '1407631270');
INSERT INTO `statistik` VALUES ('118.97.212.182', '2014-08-10', '4', '1407632228');
INSERT INTO `statistik` VALUES ('139.0.102.140', '2014-08-10', '1', '1407633944');
INSERT INTO `statistik` VALUES ('66.249.77.87', '2014-08-10', '1', '1407636902');
INSERT INTO `statistik` VALUES ('66.249.77.97', '2014-08-10', '1', '1407639983');
INSERT INTO `statistik` VALUES ('180.76.6.159', '2014-08-10', '1', '1407640798');
INSERT INTO `statistik` VALUES ('118.97.212.181', '2014-08-10', '3', '1407642556');
INSERT INTO `statistik` VALUES ('36.68.46.37', '2014-08-10', '2', '1407642940');
INSERT INTO `statistik` VALUES ('180.76.5.69', '2014-08-10', '1', '1407645158');
INSERT INTO `statistik` VALUES ('180.76.5.80', '2014-08-10', '1', '1407648268');
INSERT INTO `statistik` VALUES ('180.76.5.143', '2014-08-10', '1', '1407650068');
INSERT INTO `statistik` VALUES ('223.255.231.145', '2014-08-10', '1', '1407650216');
INSERT INTO `statistik` VALUES ('180.76.6.149', '2014-08-10', '1', '1407657020');
INSERT INTO `statistik` VALUES ('36.77.183.218', '2014-08-10', '2', '1407657119');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-10', '2', '1407660057');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-11', '2', '1407725194');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-12', '1', '1407862185');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-13', '1', '1407899819');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-17', '44', '1408287630');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-18', '253', '1408372590');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2014-08-19', '4', '1408413702');
INSERT INTO `statistik` VALUES ('::1', '2014-08-19', '90', '1408433250');
INSERT INTO `statistik` VALUES ('::1', '2014-08-31', '1', '1409487043');
INSERT INTO `statistik` VALUES ('::1', '2015-03-11', '11', '1426061663');
INSERT INTO `statistik` VALUES ('::1', '2015-03-12', '1', '1426114982');
INSERT INTO `statistik` VALUES ('::1', '2015-03-15', '32', '1426430637');
INSERT INTO `statistik` VALUES ('::1', '2015-03-18', '137', '1426666506');
INSERT INTO `statistik` VALUES ('::1', '2015-03-19', '143', '1426751746');
INSERT INTO `statistik` VALUES ('::1', '2015-03-21', '198', '1426912294');
INSERT INTO `statistik` VALUES ('::1', '2015-03-22', '554', '1427039069');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2015-03-22', '1', '1427030317');
INSERT INTO `statistik` VALUES ('::1', '2015-03-23', '275', '1427093113');
INSERT INTO `statistik` VALUES ('::1', '2015-03-24', '42', '1427179474');
INSERT INTO `statistik` VALUES ('::1', '2015-03-25', '45', '1427251499');
INSERT INTO `statistik` VALUES ('39.225.164.2', '2015-05-14', '7', '1431584409');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-14', '30', '1431595368');
INSERT INTO `statistik` VALUES ('89.145.95.2', '2015-05-14', '1', '1431582645');
INSERT INTO `statistik` VALUES ('66.220.158.118', '2015-05-14', '1', '1431582842');
INSERT INTO `statistik` VALUES ('66.220.158.115', '2015-05-14', '1', '1431582852');
INSERT INTO `statistik` VALUES ('66.220.158.112', '2015-05-14', '3', '1431595371');
INSERT INTO `statistik` VALUES ('66.220.158.119', '2015-05-14', '1', '1431582942');
INSERT INTO `statistik` VALUES ('114.125.43.185', '2015-05-14', '5', '1431602132');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-15', '1', '1431673658');
INSERT INTO `statistik` VALUES ('114.125.45.206', '2015-05-16', '18', '1431741581');
INSERT INTO `statistik` VALUES ('66.220.158.116', '2015-05-16', '1', '1431741049');
INSERT INTO `statistik` VALUES ('66.220.158.118', '2015-05-16', '1', '1431741224');
INSERT INTO `statistik` VALUES ('66.220.158.114', '2015-05-16', '1', '1431741233');
INSERT INTO `statistik` VALUES ('39.229.6.148', '2015-05-16', '11', '1431791037');
INSERT INTO `statistik` VALUES ('39.225.236.155', '2015-05-17', '8', '1431862096');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-19', '6', '1432006569');
INSERT INTO `statistik` VALUES ('89.145.95.42', '2015-05-19', '2', '1432006661');
INSERT INTO `statistik` VALUES ('114.121.133.117', '2015-05-19', '3', '1432046663');
INSERT INTO `statistik` VALUES ('124.195.114.65', '2015-05-28', '16', '1432832381');
INSERT INTO `statistik` VALUES ('66.220.158.119', '2015-05-28', '1', '1432831000');
INSERT INTO `statistik` VALUES ('66.220.158.115', '2015-05-28', '1', '1432831013');
INSERT INTO `statistik` VALUES ('66.220.158.116', '2015-05-28', '1', '1432832385');
INSERT INTO `statistik` VALUES ('124.195.114.65', '2015-05-29', '77', '1432836214');
INSERT INTO `statistik` VALUES ('66.220.158.113', '2015-05-29', '1', '1432835961');
INSERT INTO `statistik` VALUES ('66.249.84.178', '2015-05-29', '1', '1432836220');
INSERT INTO `statistik` VALUES ('103.246.200.14', '2015-05-29', '1', '1432851867');
INSERT INTO `statistik` VALUES ('103.246.200.59', '2015-05-29', '1', '1432851916');
INSERT INTO `statistik` VALUES ('114.124.5.250', '2015-05-29', '6', '1432852876');
INSERT INTO `statistik` VALUES ('173.252.105.114', '2015-05-29', '1', '1432852770');
INSERT INTO `statistik` VALUES ('120.180.175.150', '2015-05-29', '36', '1432864082');
INSERT INTO `statistik` VALUES ('103.246.200.50', '2015-05-29', '1', '1432863615');
INSERT INTO `statistik` VALUES ('103.246.200.1', '2015-05-29', '1', '1432863650');
INSERT INTO `statistik` VALUES ('103.246.200.33', '2015-05-29', '1', '1432863711');
INSERT INTO `statistik` VALUES ('103.246.200.44', '2015-05-29', '1', '1432863795');
INSERT INTO `statistik` VALUES ('120.174.144.115', '2015-05-29', '1', '1432908445');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-05-29', '27', '1432912022');
INSERT INTO `statistik` VALUES ('173.252.90.117', '2015-05-29', '1', '1432910852');
INSERT INTO `statistik` VALUES ('173.252.90.116', '2015-05-29', '1', '1432910873');
INSERT INTO `statistik` VALUES ('173.252.90.118', '2015-05-29', '1', '1432911344');
INSERT INTO `statistik` VALUES ('173.252.90.122', '2015-05-29', '1', '1432911470');
INSERT INTO `statistik` VALUES ('66.249.84.190', '2015-05-30', '1', '1432945579');
INSERT INTO `statistik` VALUES ('39.254.117.222', '2015-05-30', '1', '1432991226');
INSERT INTO `statistik` VALUES ('66.249.84.178', '2015-05-31', '1', '1433037242');
INSERT INTO `statistik` VALUES ('120.176.92.190', '2015-06-01', '3', '1433128955');
INSERT INTO `statistik` VALUES ('66.102.6.210', '2015-06-01', '1', '1433134430');
INSERT INTO `statistik` VALUES ('120.164.44.28', '2015-06-01', '13', '1433149419');
INSERT INTO `statistik` VALUES ('124.195.118.227', '2015-06-01', '1', '1433170960');
INSERT INTO `statistik` VALUES ('120.177.28.244', '2015-06-02', '8', '1433220043');
INSERT INTO `statistik` VALUES ('66.249.84.190', '2015-06-02', '1', '1433247837');
INSERT INTO `statistik` VALUES ('120.190.75.179', '2015-06-03', '7', '1433302768');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-06-03', '4', '1433302761');
INSERT INTO `statistik` VALUES ('89.145.95.2', '2015-06-03', '1', '1433302690');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-07', '46', '1433696370');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-07', '30', '1433696150');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-07', '37', '1433696154');
INSERT INTO `statistik` VALUES ('173.252.74.113', '2015-06-07', '8', '1433694061');
INSERT INTO `statistik` VALUES ('173.252.74.117', '2015-06-07', '3', '1433676319');
INSERT INTO `statistik` VALUES ('66.249.64.57', '2015-06-07', '1', '1433674283');
INSERT INTO `statistik` VALUES ('173.252.88.89', '2015-06-07', '5', '1433677999');
INSERT INTO `statistik` VALUES ('173.252.88.86', '2015-06-07', '2', '1433677597');
INSERT INTO `statistik` VALUES ('173.252.74.119', '2015-06-07', '7', '1433694862');
INSERT INTO `statistik` VALUES ('66.249.79.117', '2015-06-07', '1', '1433674983');
INSERT INTO `statistik` VALUES ('173.252.88.84', '2015-06-07', '2', '1433676738');
INSERT INTO `statistik` VALUES ('173.252.74.115', '2015-06-07', '3', '1433676460');
INSERT INTO `statistik` VALUES ('173.252.74.114', '2015-06-07', '2', '1433694204');
INSERT INTO `statistik` VALUES ('173.252.74.118', '2015-06-07', '3', '1433676180');
INSERT INTO `statistik` VALUES ('173.252.74.112', '2015-06-07', '5', '1433695314');
INSERT INTO `statistik` VALUES ('173.252.88.85', '2015-06-07', '2', '1433677804');
INSERT INTO `statistik` VALUES ('173.252.88.90', '2015-06-07', '1', '1433676251');
INSERT INTO `statistik` VALUES ('173.252.74.116', '2015-06-07', '5', '1433695249');
INSERT INTO `statistik` VALUES ('173.252.88.87', '2015-06-07', '2', '1433677488');
INSERT INTO `statistik` VALUES ('173.252.88.88', '2015-06-07', '1', '1433677370');
INSERT INTO `statistik` VALUES ('66.249.79.130', '2015-06-07', '1', '1433694848');
INSERT INTO `statistik` VALUES ('66.220.156.116', '2015-06-07', '2', '1433696197');
INSERT INTO `statistik` VALUES ('66.249.67.104', '2015-06-07', '1', '1433696147');
INSERT INTO `statistik` VALUES ('66.220.156.112', '2015-06-07', '2', '1433696173');
INSERT INTO `statistik` VALUES ('66.220.146.22', '2015-06-07', '1', '1433696162');
INSERT INTO `statistik` VALUES ('66.249.67.117', '2015-06-07', '1', '1433696288');
INSERT INTO `statistik` VALUES ('66.220.156.114', '2015-06-07', '1', '1433696309');
INSERT INTO `statistik` VALUES ('66.220.156.117', '2015-06-08', '3', '1433711204');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-08', '32', '1433779112');
INSERT INTO `statistik` VALUES ('66.220.146.25', '2015-06-08', '2', '1433736854');
INSERT INTO `statistik` VALUES ('66.220.156.116', '2015-06-08', '2', '1433709422');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-08', '29', '1433748751');
INSERT INTO `statistik` VALUES ('66.220.156.112', '2015-06-08', '4', '1433715007');
INSERT INTO `statistik` VALUES ('66.220.146.20', '2015-06-08', '1', '1433696744');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-08', '38', '1433777391');
INSERT INTO `statistik` VALUES ('66.220.156.118', '2015-06-08', '2', '1433712628');
INSERT INTO `statistik` VALUES ('66.220.146.27', '2015-06-08', '1', '1433712556');
INSERT INTO `statistik` VALUES ('66.220.146.26', '2015-06-08', '1', '1433712746');
INSERT INTO `statistik` VALUES ('66.249.67.104', '2015-06-08', '4', '1433746797');
INSERT INTO `statistik` VALUES ('66.220.146.22', '2015-06-08', '1', '1433714244');
INSERT INTO `statistik` VALUES ('66.220.156.115', '2015-06-08', '2', '1433714821');
INSERT INTO `statistik` VALUES ('66.249.67.117', '2015-06-08', '2', '1433780504');
INSERT INTO `statistik` VALUES ('120.176.251.49', '2015-06-08', '2', '1433737104');
INSERT INTO `statistik` VALUES ('66.220.156.119', '2015-06-08', '1', '1433737457');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-09', '3', '1433836081');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-09', '4', '1433835126');
INSERT INTO `statistik` VALUES ('66.249.67.104', '2015-06-09', '1', '1433788622');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-09', '1', '1433823064');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-10', '5', '1433953790');
INSERT INTO `statistik` VALUES ('66.249.67.117', '2015-06-10', '1', '1433911605');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-10', '3', '1433954890');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-10', '2', '1433953573');
INSERT INTO `statistik` VALUES ('66.249.71.147', '2015-06-11', '1', '1433957808');
INSERT INTO `statistik` VALUES ('66.249.71.164', '2015-06-11', '2', '1433990805');
INSERT INTO `statistik` VALUES ('68.180.228.104', '2015-06-11', '1', '1433975257');
INSERT INTO `statistik` VALUES ('66.249.71.130', '2015-06-11', '1', '1433991891');
INSERT INTO `statistik` VALUES ('36.68.28.19', '2015-06-14', '5', '1434224041');
INSERT INTO `statistik` VALUES ('120.164.46.127', '2015-06-14', '2', '1434239557');
INSERT INTO `statistik` VALUES ('66.249.67.248', '2015-06-15', '1', '1434362861');
INSERT INTO `statistik` VALUES ('104.193.10.50', '2015-06-15', '3', '1434372762');
INSERT INTO `statistik` VALUES ('104.193.10.50', '2015-06-16', '2', '1434454308');
INSERT INTO `statistik` VALUES ('36.80.234.114', '2015-06-16', '4', '1434443273');
INSERT INTO `statistik` VALUES ('173.252.74.115', '2015-06-16', '1', '1434443264');
INSERT INTO `statistik` VALUES ('173.252.74.114', '2015-06-16', '1', '1434443279');
INSERT INTO `statistik` VALUES ('119.110.72.130', '2015-06-16', '1', '1434467216');
INSERT INTO `statistik` VALUES ('124.195.116.71', '2015-06-17', '3', '1434551738');
INSERT INTO `statistik` VALUES ('120.184.130.21', '2015-06-27', '1', '1435386862');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2015-06-27', '1', '1435387150');
INSERT INTO `statistik` VALUES ('120.176.176.106', '2015-06-28', '7', '1435461088');
INSERT INTO `statistik` VALUES ('66.220.158.114', '2015-06-28', '1', '1435461007');
INSERT INTO `statistik` VALUES ('66.249.84.129', '2015-06-28', '1', '1435466083');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2015-06-29', '2', '1435563211');
INSERT INTO `statistik` VALUES ('66.249.84.252', '2015-06-29', '1', '1435563206');
INSERT INTO `statistik` VALUES ('66.249.84.246', '2015-06-30', '3', '1435677685');
INSERT INTO `statistik` VALUES ('66.249.84.252', '2015-06-30', '1', '1435645799');
INSERT INTO `statistik` VALUES ('66.249.84.252', '2015-07-01', '1', '1435710707');
INSERT INTO `statistik` VALUES ('66.249.84.129', '2015-07-01', '1', '1435711780');
INSERT INTO `statistik` VALUES ('120.177.18.200', '2015-07-02', '1', '1435824891');
INSERT INTO `statistik` VALUES ('::1', '2015-11-25', '15', '1448407930');
INSERT INTO `statistik` VALUES ('::1', '2015-12-01', '12', '1448944568');
INSERT INTO `statistik` VALUES ('::1', '2015-12-03', '9', '1449138520');
INSERT INTO `statistik` VALUES ('::1', '2015-12-05', '26', '1449279360');
INSERT INTO `statistik` VALUES ('::1', '2015-12-07', '4', '1449442678');
INSERT INTO `statistik` VALUES ('::1', '2015-12-08', '8', '1449532582');
INSERT INTO `statistik` VALUES ('::1', '2015-12-13', '31', '1449974628');
INSERT INTO `statistik` VALUES ('::1', '2015-12-18', '9', '1450418535');
INSERT INTO `statistik` VALUES ('::1', '2015-12-21', '10', '1450654644');
INSERT INTO `statistik` VALUES ('::1', '2015-12-24', '3', '1450917714');
INSERT INTO `statistik` VALUES ('::1', '2015-12-25', '4', '1451037761');
INSERT INTO `statistik` VALUES ('::1', '2015-12-26', '5', '1451086546');
INSERT INTO `statistik` VALUES ('::1', '2016-01-01', '1', '1451626224');
INSERT INTO `statistik` VALUES ('::1', '2016-01-12', '2', '1452564572');
INSERT INTO `statistik` VALUES ('::1', '2016-01-16', '7', '1452913899');
INSERT INTO `statistik` VALUES ('::1', '2016-01-17', '150', '1453036730');
INSERT INTO `statistik` VALUES ('::1', '2016-07-24', '24', '1469318037');
INSERT INTO `statistik` VALUES ('::1', '2016-07-29', '1', '1469767572');
INSERT INTO `statistik` VALUES ('::1', '2016-07-31', '1', '1469936872');
INSERT INTO `statistik` VALUES ('::1', '2016-08-01', '14', '1470019073');
INSERT INTO `statistik` VALUES ('::1', '2016-08-12', '4', '1470940786');
INSERT INTO `statistik` VALUES ('::1', '2016-08-14', '3', '1471191885');
INSERT INTO `statistik` VALUES ('::1', '2016-08-22', '5', '1471851644');
INSERT INTO `statistik` VALUES ('::1', '2016-08-26', '4', '1472207940');
INSERT INTO `statistik` VALUES ('::1', '2016-08-29', '9', '1472475500');
INSERT INTO `statistik` VALUES ('::1', '2016-08-30', '1', '1472531831');
INSERT INTO `statistik` VALUES ('::1', '2016-09-13', '4', '1473760584');
INSERT INTO `statistik` VALUES ('::1', '2016-09-16', '7', '1473998550');
INSERT INTO `statistik` VALUES ('::1', '2016-09-17', '3', '1474076080');
INSERT INTO `statistik` VALUES ('::1', '2016-09-20', '4', '1474335445');
INSERT INTO `statistik` VALUES ('::1', '2016-09-21', '5', '1474470987');
INSERT INTO `statistik` VALUES ('::1', '2016-09-26', '8', '1474866854');
INSERT INTO `statistik` VALUES ('::1', '2016-11-21', '20', '1479719811');
INSERT INTO `statistik` VALUES ('::1', '2016-11-22', '26', '1479795839');
INSERT INTO `statistik` VALUES ('::1', '2016-12-24', '1', '1482592503');
INSERT INTO `statistik` VALUES ('::1', '2016-12-23', '2', '1482451494');
INSERT INTO `statistik` VALUES ('::1', '2016-12-20', '7', '1482205377');
INSERT INTO `statistik` VALUES ('::1', '2016-12-14', '4', '1481717872');
INSERT INTO `statistik` VALUES ('::1', '2016-12-13', '24', '1481593512');
INSERT INTO `statistik` VALUES ('::1', '2016-12-09', '1', '1481243159');
INSERT INTO `statistik` VALUES ('::1', '2016-12-03', '3', '1480741491');
INSERT INTO `statistik` VALUES ('::1', '2016-11-28', '32', '1480303392');
INSERT INTO `statistik` VALUES ('::1', '2016-11-27', '2', '1480224412');
INSERT INTO `statistik` VALUES ('::1', '2016-11-24', '403', '1479984680');
INSERT INTO `statistik` VALUES ('::1', '2016-11-23', '2', '1479913316');
INSERT INTO `statistik` VALUES ('::1', '2017-01-03', '9', '1483421812');
INSERT INTO `statistik` VALUES ('::1', '2017-01-04', '2', '1483534977');
INSERT INTO `statistik` VALUES ('::1', '2017-01-05', '3', '1483627230');
INSERT INTO `statistik` VALUES ('::1', '2017-01-14', '1', '1484352852');
INSERT INTO `statistik` VALUES ('::1', '2017-01-17', '3', '1484663823');
INSERT INTO `statistik` VALUES ('::1', '2017-01-25', '12', '1485359750');
INSERT INTO `statistik` VALUES ('::1', '2017-01-26', '37', '1485414680');
INSERT INTO `statistik` VALUES ('::1', '2017-01-27', '70', '1485508785');
INSERT INTO `statistik` VALUES ('::1', '2017-01-28', '1', '1485567010');
INSERT INTO `statistik` VALUES ('::1', '2017-02-04', '1', '1486213804');
INSERT INTO `statistik` VALUES ('::1', '2017-02-09', '14', '1486659480');
INSERT INTO `statistik` VALUES ('::1', '2017-02-10', '3', '1486684650');
INSERT INTO `statistik` VALUES ('::1', '2017-02-11', '11', '1486773431');
INSERT INTO `statistik` VALUES ('::1', '2017-02-12', '6', '1486869838');
INSERT INTO `statistik` VALUES ('::1', '2017-02-13', '5', '1486995163');
INSERT INTO `statistik` VALUES ('::1', '2017-02-15', '3', '1487123924');
INSERT INTO `statistik` VALUES ('::1', '2017-02-21', '1', '1487659967');
INSERT INTO `statistik` VALUES ('::1', '2017-02-23', '7', '1487832476');
INSERT INTO `statistik` VALUES ('::1', '2017-02-26', '4', '1488064851');
INSERT INTO `statistik` VALUES ('::1', '2017-03-13', '44', '1489366890');
INSERT INTO `statistik` VALUES ('::1', '2017-03-17', '24', '1489744337');
INSERT INTO `statistik` VALUES ('::1', '2017-03-20', '1', '1489988038');
INSERT INTO `statistik` VALUES ('::1', '2017-03-25', '1', '1490413626');
INSERT INTO `statistik` VALUES ('::1', '2017-03-29', '7', '1490744633');
INSERT INTO `statistik` VALUES ('::1', '2017-04-02', '1', '1491122695');
INSERT INTO `statistik` VALUES ('::1', '2017-04-06', '56', '1491462329');
INSERT INTO `statistik` VALUES ('::1', '2017-04-07', '59', '1491524075');
INSERT INTO `statistik` VALUES ('::1', '2017-04-09', '20', '1491711058');
INSERT INTO `statistik` VALUES ('::1', '2017-04-11', '9', '1491877995');
INSERT INTO `statistik` VALUES ('::1', '2017-04-12', '124', '1492006218');
INSERT INTO `statistik` VALUES ('::1', '2017-04-13', '53', '1492088580');
INSERT INTO `statistik` VALUES ('::1', '2017-05-14', '133', '1494767093');
INSERT INTO `statistik` VALUES ('::1', '2017-05-20', '167', '1495299592');
INSERT INTO `statistik` VALUES ('::1', '2017-05-21', '234', '1495359950');
INSERT INTO `statistik` VALUES ('::1', '2018-04-19', '1', '1524111568');
INSERT INTO `statistik` VALUES ('::1', '2018-04-21', '1', '1524249582');
INSERT INTO `statistik` VALUES ('::1', '2018-04-24', '19', '1524509093');
INSERT INTO `statistik` VALUES ('::1', '2018-05-04', '13', '1525441129');
INSERT INTO `statistik` VALUES ('::1', '2018-05-05', '36', '1525494921');
INSERT INTO `statistik` VALUES ('::1', '2018-05-06', '5', '1525614861');
INSERT INTO `statistik` VALUES ('::1', '2018-05-11', '15', '1525998298');
INSERT INTO `statistik` VALUES ('::1', '2018-05-18', '4', '1526611139');
INSERT INTO `statistik` VALUES ('::1', '2018-05-19', '6', '1526701697');
INSERT INTO `statistik` VALUES ('::1', '2018-05-20', '13', '1526833607');
INSERT INTO `statistik` VALUES ('::1', '2018-05-22', '13', '1526947912');
INSERT INTO `statistik` VALUES ('::1', '2018-05-23', '16', '1527056425');
INSERT INTO `statistik` VALUES ('::1', '2018-05-31', '1', '1527743948');
INSERT INTO `statistik` VALUES ('::1', '2018-06-01', '2', '1527815549');
INSERT INTO `statistik` VALUES ('::1', '2018-06-03', '191', '1528045141');
INSERT INTO `statistik` VALUES ('::1', '2018-06-04', '100', '1528127678');
INSERT INTO `statistik` VALUES ('::1', '2018-12-11', '315', '1544522200');
INSERT INTO `statistik` VALUES ('::1', '2018-12-21', '68', '1545398144');
INSERT INTO `statistik` VALUES ('::1', '2018-12-22', '81', '1545450822');
INSERT INTO `statistik` VALUES ('::1', '2018-12-23', '310', '1545529051');
INSERT INTO `statistik` VALUES ('::1', '2018-12-26', '70', '1545792411');
INSERT INTO `statistik` VALUES ('::1', '2018-12-28', '21', '1545959894');
INSERT INTO `statistik` VALUES ('::1', '2019-01-01', '40', '1546327662');
INSERT INTO `statistik` VALUES ('::1', '2019-01-11', '1', '1547192056');
INSERT INTO `statistik` VALUES ('::1', '2019-01-15', '1', '1547535461');
INSERT INTO `statistik` VALUES ('::1', '2019-02-03', '21', '1549151755');
INSERT INTO `statistik` VALUES ('::1', '2019-02-08', '2', '1549583794');
INSERT INTO `statistik` VALUES ('::1', '2019-02-14', '5', '1550143909');
INSERT INTO `statistik` VALUES ('::1', '2019-02-16', '139', '1550293098');
INSERT INTO `statistik` VALUES ('::1', '2019-02-17', '12', '1550360900');
INSERT INTO `statistik` VALUES ('::1', '2019-02-18', '9', '1550451537');
INSERT INTO `statistik` VALUES ('::1', '2019-02-19', '11', '1550552634');
INSERT INTO `statistik` VALUES ('::1', '2019-02-20', '115', '1550632680');
INSERT INTO `statistik` VALUES ('::1', '2019-02-20', '115', '1550632680');
INSERT INTO `statistik` VALUES ('::1', '2019-02-22', '83', '1550824388');
INSERT INTO `statistik` VALUES ('::1', '2019-02-23', '143', '1550910213');
INSERT INTO `statistik` VALUES ('::1', '2019-03-03', '2', '1551627040');
INSERT INTO `statistik` VALUES ('::1', '2019-03-05', '1', '1551794436');
INSERT INTO `statistik` VALUES ('::1', '2019-03-21', '127', '1553174723');
INSERT INTO `statistik` VALUES ('::1', '2019-03-22', '25', '1553221802');
INSERT INTO `statistik` VALUES ('::1', '2019-03-23', '255', '1553343322');
INSERT INTO `statistik` VALUES ('::1', '2019-03-24', '151', '1553429554');
INSERT INTO `statistik` VALUES ('::1', '2019-03-25', '292', '1553521395');
INSERT INTO `statistik` VALUES ('::1', '2019-03-26', '236', '1553603754');
INSERT INTO `statistik` VALUES ('::1', '2019-03-27', '135', '1553688661');
INSERT INTO `statistik` VALUES ('::1', '2019-07-03', '36', '1562116358');
INSERT INTO `statistik` VALUES ('::1', '2019-07-05', '1', '1562284598');
INSERT INTO `statistik` VALUES ('::1', '2019-07-14', '2', '1563088030');
INSERT INTO `statistik` VALUES ('::1', '2019-08-03', '2', '1564790513');
INSERT INTO `statistik` VALUES ('::1', '2019-08-10', '1', '1565406009');
INSERT INTO `statistik` VALUES ('::1', '2019-08-17', '20', '1566001489');
INSERT INTO `statistik` VALUES ('::1', '2019-08-31', '58', '1567260005');
INSERT INTO `statistik` VALUES ('::1', '2019-09-01', '181', '1567296028');
INSERT INTO `statistik` VALUES ('::1', '2019-09-05', '15', '1567643036');
INSERT INTO `statistik` VALUES ('::1', '2019-09-07', '34', '1567844461');
INSERT INTO `statistik` VALUES ('::1', '2019-09-08', '51', '1567913869');
INSERT INTO `statistik` VALUES ('::1', '2019-09-11', '25', '1568208517');
INSERT INTO `statistik` VALUES ('::1', '2019-09-12', '42', '1568244671');
INSERT INTO `statistik` VALUES ('::1', '2019-09-15', '11', '1568514021');
INSERT INTO `statistik` VALUES ('::1', '2019-09-17', '3', '1568684826');
INSERT INTO `statistik` VALUES ('::1', '2019-09-18', '90', '1568802276');
INSERT INTO `statistik` VALUES ('::1', '2019-09-19', '43', '1568850172');
INSERT INTO `statistik` VALUES ('::1', '2020-01-14', '53', '1578980130');
INSERT INTO `statistik` VALUES ('::1', '2020-02-05', '2', '1580888341');
INSERT INTO `statistik` VALUES ('::1', '2020-02-24', '8', '1582557565');
INSERT INTO `statistik` VALUES ('::1', '2020-02-25', '19', '1582645186');
INSERT INTO `statistik` VALUES ('::1', '2020-02-26', '1', '1582650652');
INSERT INTO `statistik` VALUES ('::1', '2020-02-27', '18', '1582778929');
INSERT INTO `statistik` VALUES ('::1', '2020-02-28', '13', '1582870399');
INSERT INTO `statistik` VALUES ('::1', '2020-03-03', '19', '1583243065');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2020-03-03', '12', '1583241418');
INSERT INTO `statistik` VALUES ('::1', '2020-03-08', '11', '1583648292');
INSERT INTO `statistik` VALUES ('::1', '2020-03-10', '24', '1583792896');
INSERT INTO `statistik` VALUES ('::1', '2020-04-13', '3', '1586730693');
INSERT INTO `statistik` VALUES ('::1', '2020-04-17', '1', '1587113032');
INSERT INTO `statistik` VALUES ('::1', '2020-04-19', '4', '1587280029');
INSERT INTO `statistik` VALUES ('::1', '2020-05-05', '1', '1588680355');
INSERT INTO `statistik` VALUES ('::1', '2020-05-11', '5', '1589210455');
INSERT INTO `statistik` VALUES ('::1', '2020-05-14', '5', '1589399027');
INSERT INTO `statistik` VALUES ('::1', '2020-05-17', '1', '1589703588');
INSERT INTO `statistik` VALUES ('::1', '2020-06-08', '1', '1591550563');
INSERT INTO `statistik` VALUES ('::1', '2020-06-09', '22', '1591717990');
INSERT INTO `statistik` VALUES ('::1', '2020-06-10', '6', '1591777058');
INSERT INTO `statistik` VALUES ('::1', '2020-06-11', '183', '1591894794');
INSERT INTO `statistik` VALUES ('::1', '2020-06-12', '40', '1591895453');
INSERT INTO `statistik` VALUES ('::1', '2020-06-13', '169', '1592067531');
INSERT INTO `statistik` VALUES ('::1', '2020-06-14', '201', '1592153889');
INSERT INTO `statistik` VALUES ('::1', '2020-06-15', '181', '1592237741');
INSERT INTO `statistik` VALUES ('::1', '2020-06-18', '19', '1592482986');
INSERT INTO `statistik` VALUES ('::1', '2020-06-21', '169', '1592751637');
INSERT INTO `statistik` VALUES ('::1', '2020-06-22', '88', '1592845179');
INSERT INTO `statistik` VALUES ('::1', '2020-06-23', '46', '1592849154');
INSERT INTO `statistik` VALUES ('::1', '2020-06-25', '78', '1593104388');
INSERT INTO `statistik` VALUES ('::1', '2020-06-26', '317', '1593190744');
INSERT INTO `statistik` VALUES ('::1', '2020-06-27', '95', '1593262484');
INSERT INTO `statistik` VALUES ('::1', '2020-06-28', '18', '1593339630');
INSERT INTO `statistik` VALUES ('::1', '2020-06-29', '5', '1593438971');
INSERT INTO `statistik` VALUES ('::1', '2020-07-02', '22', '1593701843');
INSERT INTO `statistik` VALUES ('::1', '2020-07-04', '79', '1593830727');
INSERT INTO `statistik` VALUES ('::1', '2020-07-05', '14', '1593957529');
INSERT INTO `statistik` VALUES ('::1', '2020-07-07', '10', '1594123065');
INSERT INTO `statistik` VALUES ('::1', '2020-07-09', '14', '1594305052');
INSERT INTO `statistik` VALUES ('::1', '2020-07-09', '14', '1594305052');
INSERT INTO `statistik` VALUES ('::1', '2020-07-10', '3', '1594398864');
INSERT INTO `statistik` VALUES ('::1', '2020-07-13', '1', '1594609758');
INSERT INTO `statistik` VALUES ('::1', '2020-07-23', '8', '1595477713');
INSERT INTO `statistik` VALUES ('127.0.0.1', '2020-07-23', '67', '1595500421');
INSERT INTO `statistik` VALUES ('::1', '2020-07-24', '35', '1595598953');

-- ----------------------------
-- Table structure for tag
-- ----------------------------
DROP TABLE IF EXISTS `tag`;
CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM AUTO_INCREMENT=55 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of tag
-- ----------------------------
INSERT INTO `tag` VALUES ('22', 'Hiburan', '', 'hiburan', '19');
INSERT INTO `tag` VALUES ('28', 'Teknologi', '', 'teknologi', '12');
INSERT INTO `tag` VALUES ('27', 'Metropolitan', '', 'metropolitan', '32');
INSERT INTO `tag` VALUES ('26', 'Nasional', '', 'nasional', '42');
INSERT INTO `tag` VALUES ('25', 'Kesehatan', '', 'kesehatan', '16');
INSERT INTO `tag` VALUES ('24', 'Olahraga', '', 'olahraga', '11');
INSERT INTO `tag` VALUES ('34', 'Wisata', '', 'wisata', '4');
INSERT INTO `tag` VALUES ('36', 'Hukum', '', 'hukum', '16');
INSERT INTO `tag` VALUES ('37', 'Film', '', 'film', '25');
INSERT INTO `tag` VALUES ('40', 'Internasional', '', 'internasional', '28');
INSERT INTO `tag` VALUES ('41', 'Bola', '', 'bola', '21');
INSERT INTO `tag` VALUES ('43', 'Selebritis', '', 'selebritis', '9');
INSERT INTO `tag` VALUES ('49', 'Palestina', 'admin', 'palestina', '6');
INSERT INTO `tag` VALUES ('50', 'Israel', 'admin', 'israel', '3');
INSERT INTO `tag` VALUES ('51', 'Yahudi', 'admin', 'yahudi', '4');

-- ----------------------------
-- Table structure for tagvid
-- ----------------------------
DROP TABLE IF EXISTS `tagvid`;
CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL AUTO_INCREMENT,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL,
  PRIMARY KEY (`id_tag`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of tagvid
-- ----------------------------
INSERT INTO `tagvid` VALUES ('34', 'perang', 'admin', 'perang', '2');
INSERT INTO `tagvid` VALUES ('35', 'Teknologi', 'admin', 'teknologi', '0');
INSERT INTO `tagvid` VALUES ('36', 'Nasional', 'admin', 'nasional', '1');

-- ----------------------------
-- Table structure for tbl_comment
-- ----------------------------
DROP TABLE IF EXISTS `tbl_comment`;
CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL AUTO_INCREMENT,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL,
  PRIMARY KEY (`id_komentar`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tbl_comment
-- ----------------------------
INSERT INTO `tbl_comment` VALUES ('1', '0', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00');
INSERT INTO `tbl_comment` VALUES ('2', '1', 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00');
INSERT INTO `tbl_comment` VALUES ('3', '0', 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00');
INSERT INTO `tbl_comment` VALUES ('4', '1', 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00');
INSERT INTO `tbl_comment` VALUES ('5', '3', 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00');
INSERT INTO `tbl_comment` VALUES ('6', '0', 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00');
INSERT INTO `tbl_comment` VALUES ('7', '6', 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00');
INSERT INTO `tbl_comment` VALUES ('9', '3', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00');
INSERT INTO `tbl_comment` VALUES ('14', '0', 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31');
INSERT INTO `tbl_comment` VALUES ('15', '6', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50');
INSERT INTO `tbl_comment` VALUES ('23', '20', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47');
INSERT INTO `tbl_comment` VALUES ('24', '14', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23');

-- ----------------------------
-- Table structure for templates
-- ----------------------------
DROP TABLE IF EXISTS `templates`;
CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL AUTO_INCREMENT,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  PRIMARY KEY (`id_templates`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of templates
-- ----------------------------
INSERT INTO `templates` VALUES ('22', 'PHPMU-Tigo - Swarakalibata Template', 'admin', 'Robby Prihandaya', 'phpmu-tigo', 'Y');

-- ----------------------------
-- Table structure for testimoni
-- ----------------------------
DROP TABLE IF EXISTS `testimoni`;
CREATE TABLE `testimoni` (
  `id_testimoni` int(11) NOT NULL AUTO_INCREMENT,
  `id_konsumen` int(11) NOT NULL,
  `isi_testimoni` text NOT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `waktu_testimoni` datetime NOT NULL,
  PRIMARY KEY (`id_testimoni`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of testimoni
-- ----------------------------
INSERT INTO `testimoni` VALUES ('1', '1', 'Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur ini. ', 'Y', '2016-09-11 03:25:21');
INSERT INTO `testimoni` VALUES ('2', '3', '<p>Menjadi seorang sukses dengan cara instan memang impian banyak orang dan saya yakin anda pun akan menyetujuinya. Namun, kembali lagi kepada diri anda sendiri apakah anda benar-benar memahami makna menjadi seorang entrepreneur sesungguhnya atau hanya memaknai seperti halnya membuat mie instan.</p>\n', 'Y', '2016-09-12 07:09:16');
INSERT INTO `testimoni` VALUES ('5', '6', 'Saya berusaha mencoba memaklumi mereka tentang kesan menjadi entrepreneur instan ini dengan menjadi seorang MLM-ers, dengan menanyakan penyebab bisa memunculkan kesan instan tersebut. Mereka memberikan jawaban beragam berkaitan dengan proses instan seorang entrepreneur ini.', 'Y', '2016-09-14 14:11:36');

-- ----------------------------
-- Table structure for topup_setting
-- ----------------------------
DROP TABLE IF EXISTS `topup_setting`;
CREATE TABLE `topup_setting` (
  `id_topup_setting` int(11) NOT NULL AUTO_INCREMENT,
  `nominal` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_topup_setting`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of topup_setting
-- ----------------------------
INSERT INTO `topup_setting` VALUES ('1', '50000');
INSERT INTO `topup_setting` VALUES ('2', '100000');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('admin', 'bff0cc42103de1b4721370e84dc24f635a7afeca41198c9b3e03946a1b6b7191d14356408a5e57ce6daf77e6e800c66fac7ab0482d57d48d23e6808e4b562daa', 'Robby Prihandaya', 'robby.prihandaya@gmail.com', '081267771344', 'robbyprihandaya-708967734.jpg', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');
INSERT INTO `users` VALUES ('kontributor', '8275b32f5a1f93bc050d6c6df188697b0d066a1b9153ab8d0af733cc653efcf4ae75b5355e48ab0319da3ae5ab5850d705b1b90c6c49ca7d9f82e9bc76f00f92', 'Kontributor', 'kontributor@gmail.com', '056567567567', 'kandidat.png', 'kontributor', 'N', '67cfd69a4e5fb27fc4aeb0fa8383161e-20200308094729');
INSERT INTO `users` VALUES ('adminutama', 'abeb8635bb893d823f56cf9823ce2ce6a56d78d8f8926b5cd03814ad5c83957a814c14ef374232ac2911d9be75decb9f5929df6fa9b8764e29d254441df635f7', 'Admin Foresheo', 'forsheo89@gmail.com', '081213766401', '', 'admin', 'N', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736');
INSERT INTO `users` VALUES ('tyagita89', '43fd33c23a4963c4477b7ffa2d2c0d075668bbd19ac951390f2f8b9f2efa2884c65f5c3759d01968761f3bb8273911f1b36343da25561b324a5eff069fdda55d', 'Admin', 'fahri.android@gmail.com', '08112909400', '', 'kontributor', 'Y', '0879805ce692e287fa3b345ecb8ed806-20200611234156');

-- ----------------------------
-- Table structure for users_modul
-- ----------------------------
DROP TABLE IF EXISTS `users_modul`;
CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL AUTO_INCREMENT,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL,
  PRIMARY KEY (`id_umod`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users_modul
-- ----------------------------
INSERT INTO `users_modul` VALUES ('1', 'ed1d859c50262701d92e5cbf39652792-20170120090507', '70');
INSERT INTO `users_modul` VALUES ('2', 'ed1d859c50262701d92e5cbf39652792-20170120090507', '65');
INSERT INTO `users_modul` VALUES ('3', 'ed1d859c50262701d92e5cbf39652792-20170120090507', '63');
INSERT INTO `users_modul` VALUES ('23', 'f76ad5ee772ac196cbc09824e24859ee', '46');
INSERT INTO `users_modul` VALUES ('22', 'f76ad5ee772ac196cbc09824e24859ee', '59');
INSERT INTO `users_modul` VALUES ('6', 'f76ad5ee772ac196cbc09824e24859ee', '63');
INSERT INTO `users_modul` VALUES ('7', 'ed1d859c50262701d92e5cbf39652792-20170120090507', '18');
INSERT INTO `users_modul` VALUES ('8', 'ed1d859c50262701d92e5cbf39652792-20170120090507', '66');
INSERT INTO `users_modul` VALUES ('9', 'ed1d859c50262701d92e5cbf39652792-20170120090507', '33');
INSERT INTO `users_modul` VALUES ('10', '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', '18');
INSERT INTO `users_modul` VALUES ('11', 'ed1d859c50262701d92e5cbf39652792-20170120090507', '41');
INSERT INTO `users_modul` VALUES ('12', '6bec9c852847242e384a4d5ac0962ba0-20170406140423', '18');
INSERT INTO `users_modul` VALUES ('13', 'fa7688658d8b38aae731826ea1daebb5-20170521103501', '18');
INSERT INTO `users_modul` VALUES ('14', 'cfcd208495d565ef66e7dff9f98764da-20180421112213', '18');
INSERT INTO `users_modul` VALUES ('15', 'f76ad5ee772ac196cbc09824e24859ee', '46');
INSERT INTO `users_modul` VALUES ('16', 'f76ad5ee772ac196cbc09824e24859ee', '44');
INSERT INTO `users_modul` VALUES ('17', 'f76ad5ee772ac196cbc09824e24859ee', '43');
INSERT INTO `users_modul` VALUES ('18', 'f76ad5ee772ac196cbc09824e24859ee', '35');
INSERT INTO `users_modul` VALUES ('19', 'f76ad5ee772ac196cbc09824e24859ee', '34');
INSERT INTO `users_modul` VALUES ('24', 'f76ad5ee772ac196cbc09824e24859ee', '45');
INSERT INTO `users_modul` VALUES ('21', 'f76ad5ee772ac196cbc09824e24859ee', '18');
INSERT INTO `users_modul` VALUES ('25', 'f76ad5ee772ac196cbc09824e24859ee', '44');
INSERT INTO `users_modul` VALUES ('26', 'f76ad5ee772ac196cbc09824e24859ee', '33');
INSERT INTO `users_modul` VALUES ('27', 'f76ad5ee772ac196cbc09824e24859ee', '31');
INSERT INTO `users_modul` VALUES ('28', 'f76ad5ee772ac196cbc09824e24859ee', '18');
INSERT INTO `users_modul` VALUES ('29', 'f76ad5ee772ac196cbc09824e24859ee', '10');
INSERT INTO `users_modul` VALUES ('30', 'f76ad5ee772ac196cbc09824e24859ee', '2');
INSERT INTO `users_modul` VALUES ('31', '67cfd69a4e5fb27fc4aeb0fa8383161e-20200308094729', '18');
INSERT INTO `users_modul` VALUES ('32', '67cfd69a4e5fb27fc4aeb0fa8383161e-20200308094729', '43');
INSERT INTO `users_modul` VALUES ('33', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '70');
INSERT INTO `users_modul` VALUES ('34', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '66');
INSERT INTO `users_modul` VALUES ('35', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '65');
INSERT INTO `users_modul` VALUES ('36', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '64');
INSERT INTO `users_modul` VALUES ('37', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '63');
INSERT INTO `users_modul` VALUES ('38', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '62');
INSERT INTO `users_modul` VALUES ('39', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '61');
INSERT INTO `users_modul` VALUES ('40', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '59');
INSERT INTO `users_modul` VALUES ('41', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '57');
INSERT INTO `users_modul` VALUES ('42', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '46');
INSERT INTO `users_modul` VALUES ('43', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '45');
INSERT INTO `users_modul` VALUES ('44', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '44');
INSERT INTO `users_modul` VALUES ('45', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '43');
INSERT INTO `users_modul` VALUES ('46', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '41');
INSERT INTO `users_modul` VALUES ('47', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '35');
INSERT INTO `users_modul` VALUES ('48', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '34');
INSERT INTO `users_modul` VALUES ('49', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '33');
INSERT INTO `users_modul` VALUES ('50', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '31');
INSERT INTO `users_modul` VALUES ('51', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '18');
INSERT INTO `users_modul` VALUES ('52', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '10');
INSERT INTO `users_modul` VALUES ('53', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '2');
INSERT INTO `users_modul` VALUES ('54', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '70');
INSERT INTO `users_modul` VALUES ('55', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '66');
INSERT INTO `users_modul` VALUES ('56', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '65');
INSERT INTO `users_modul` VALUES ('57', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '64');
INSERT INTO `users_modul` VALUES ('58', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '63');
INSERT INTO `users_modul` VALUES ('59', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '62');
INSERT INTO `users_modul` VALUES ('60', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '61');
INSERT INTO `users_modul` VALUES ('61', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '59');
INSERT INTO `users_modul` VALUES ('62', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '57');
INSERT INTO `users_modul` VALUES ('63', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '46');
INSERT INTO `users_modul` VALUES ('64', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '45');
INSERT INTO `users_modul` VALUES ('65', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '44');
INSERT INTO `users_modul` VALUES ('66', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '43');
INSERT INTO `users_modul` VALUES ('67', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '41');
INSERT INTO `users_modul` VALUES ('68', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '35');
INSERT INTO `users_modul` VALUES ('69', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '34');
INSERT INTO `users_modul` VALUES ('70', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '33');
INSERT INTO `users_modul` VALUES ('71', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '31');
INSERT INTO `users_modul` VALUES ('72', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '18');
INSERT INTO `users_modul` VALUES ('73', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '10');
INSERT INTO `users_modul` VALUES ('74', 'bc578b97f566da6c15dd245ef4b2b94c-20200610101736', '2');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id_video` int(5) NOT NULL AUTO_INCREMENT,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL,
  PRIMARY KEY (`id_video`)
) ENGINE=MyISAM AUTO_INCREMENT=175 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('160', '56', 'admin', 'Selamatkan Hutan di Indonesia', 'selamatkan-hutan-di-indonesia', 'Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.', '', '', 'http://www.youtube.com/embed/hkzpLJjZQbA', '31', 'Rabu', '2014-07-02', '07:30:12', '');
INSERT INTO `video` VALUES ('161', '56', 'admin', 'Hutan Hujan Tropis Indonesia', 'hutan-hujan-tropis-indonesia', 'Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.', '', '', 'http://www.youtube.com/embed/5biK_PcT7S0', '24', 'Rabu', '2014-07-02', '07:31:23', '');
INSERT INTO `video` VALUES ('162', '57', 'admin', 'Perang Sengit Pasukan Darat Israel Vs Hamas', 'perang-sengit-pasukan-darat-israel-vs-hamas', 'Israel makin gencar melakukan serangan ke Gaza, baik melalui udara maupun darat. Masjid menjadi salah satu target serangan dari Negara Yahudi itu.\r\n\r\nSekira 15 warga Palestina dilaporkan tewas dan 20 lainnya dalam serangan udara Isarel ke sebuah masjid di Kota Gaza pada Sabtu 19 Juli 2014 lalu. Masjid itu terletak tidak jauh dari rumah milik Komandan Polisi Gaza.\r\n\r\nRudal-rudal dari Israel menghancurkan sebagian dari bangunan masjid. Alquran yang berada di dalam masjid pun tampak rusak akibat serangan. Demikian diberitakan Associated Press, Rabu (23/7/2014).\r\n\r\nSelain itu, serangan Israel juga diarahkan ke rumah sakit yang berada di Gaza. Blokade yang dilakukan oleh Israel makin membuat rumah sakit sulit untuk beroperasi.', '', '', 'https://www.youtube.com/watch?v=CeNjeD8yknI', '16', 'Rabu', '2014-07-23', '15:23:10', '');
INSERT INTO `video` VALUES ('163', '57', 'admin', 'Isael dan Palestina Memanas', 'isael-dan-palestina-memanas', 'Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.\r\n\r\nKomentar paling pedas Khamenei adalah Iran tidak pernah mengenal Israel. Negara ini juga secara terang-terangan mendukung Hamas. Hamas sendiri sudah dimasukan ke dalam daftar hitam terorisme oleh Israel.\r\n\r\nSelain itu, Khamenei dan beberapa pemimpin Iran berjanji akan menghilangkan Israel dari peta dunia. Bahkan, beberapa pekan lalu, Khamenei menyatakan peristiwa pembantaian warga Yahudi oleh Nazi satu abad lalu, hanyalah sebuah ilusi yang tak nyata.', '', '', 'https://www.youtube.com/watch?v=oaJpxuDh5Ds', '31', 'Rabu', '2014-07-23', '15:24:30', '');
INSERT INTO `video` VALUES ('164', '57', 'admin', 'Israel Tembak Mati Warga Palestina Saat Gencatan', 'israel-tembak-mati-warga-palestina-saat-gencatan', 'Seorang tentara Israel dilaporkan menghilang di Jalur Gaza. Hal ini terjadi usai terjadinya pertempuran mematikan yang terjadi di Jalur Gaza pada akhir pekan lalu.\r\n\r\nMelansir Boston Herald, Selasa (22/7/2014), pejabat pertahanan Israel mengatakan, tentaranya hilang usai pertempuran mematikan di Gaza terjadi pada pekan lalu. Namun, tidak jelas apakah tentara tersebut masih hidup atau sudah tewas.\r\n\r\nKonflik yang terjadi antara Israel dan Hamas sejauh ini sudah menyebabkan sekira 25 tentara Israel tewas dan ratusan warga Palestina. Sebagian besar korban warga Palestina adalah anak-anak.\r\n\r\nMemanasnya situasi itu membuat sejumlah desakan gencatan berdatangan dari sejumlah negara dan organisasi internasional.\r\n\r\nSebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.', '', '', 'https://www.youtube.com/watch?v=L6R-5XUcDSY', '44', 'Rabu', '2014-07-23', '15:29:41', '');
INSERT INTO `video` VALUES ('165', '57', 'admin', 'Gaza conflict: Israel & Hamas face allegations of war crimes', 'gaza-conflict-israel--hamas-face-allegations-of-war-crimes', '<p>Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan. Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas.</p>\r\n', '', '', 'http://www.youtube.com/embed/aqI4DOilySg', '24', 'Minggu', '2014-08-17', '16:49:33', '');
INSERT INTO `video` VALUES ('166', '57', 'admin', 'HP Flagship Murah? Preview Samsung Galaxy Note 10 Lite dan S10 Lite - Indonesia', 'hp-flagship-murah-preview-samsung-galaxy-note-10-lite-dan-s10-lite--indonesia', '<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n\r\n<p>Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat, sebut Khamenei, seperti dikutip dari IRNA, Kamis (24/7/2014). Khamenei dikenal sebagai musuh besar Israel. Beberapa komentarnya membuat panas telinga pemimpin Israel.</p>\r\n', '', '', 'https://www.youtube.com/watch?v=qO8ETGlgrVg', '123', 'Minggu', '2014-08-17', '16:51:04', 'nasional');
SET FOREIGN_KEY_CHECKS=1;
