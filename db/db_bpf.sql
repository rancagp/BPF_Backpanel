-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2025 at 03:53 AM
-- Server version: 8.0.30
-- PHP Version: 8.3.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_bpf`
--

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `order`, `is_active`, `created_at`, `updated_at`) VALUES
(34, 'Testing Carousel 1', 'Testing Carousel For Debugging 1', 'banners/ONAYFjNMtuxJJHxqGLTLiFQLdt49hQ4GZaR0x8P0.png', 1, 1, '2025-09-24 18:34:43', '2025-09-24 18:34:43'),
(35, 'Testing Carousel 2', 'Testing Carousel For Debugging 2', 'banners/7vigCIpfmht6dG0crorbnPEIRBuOBSmPWrbhVdx9.png', 2, 1, '2025-09-24 18:35:08', '2025-09-24 18:35:08');

-- --------------------------------------------------------

--
-- Table structure for table `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text,
  `kategori` enum('Info & Kegiatan','Pengumuman') NOT NULL,
  `status` enum('draft','published') NOT NULL DEFAULT 'draft',
  `judul` varchar(100) NOT NULL,
  `slug` text NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritas`
--

INSERT INTO `beritas` (`id`, `image`, `kategori`, `status`, `judul`, `slug`, `isi`, `created_at`, `updated_at`) VALUES
(5, '2025-09-10-12-26-48-kegiatan-upacara-penghormatan-di-taman-makam-pahlawan-kesenden-kota-cirebon-2023.jpeg', 'Info & Kegiatan', 'published', 'Kegiatan Upacara Penghormatan di Taman Makam Pahlawan Kesenden Kota Cirebon 2023', 'kegiatan-upacara-penghormatan-di-taman-makam-pahlawan-kesenden-kota-cirebon-2023', '<p>Cirebon, 17 Agustus 2023 &ndash; PT Equityworld Futures Cirebon, sebagai salah satu perusahaan terbaik dalam industri perdagangan berjangka komoditi di Indonesia. Dipimpin oleh Ernest Firman sebagai kepala cabang, merayakan kemerdekaan Republik Indonesia dengan menggelar rangkaian acara yang mengusung tema \"Warrior,Brave and Strong.\"</p>\r\n<p>Acara yang digelar dalam rangka memperingati HUT RI ke-78 ini mencerminkan komitmen PT Equityworld Futures Cirebon untuk mewujudkan semangat para pejuang, keberanian para pahlawan dan kekuatan bangsa yang bersatu. Tema tersebut bertujuan untuk menanamkan keberanian, ketangguhan, dan persatuan di antara karyawan, pemangku kepentingan dan mitra PT Equityworld Futures Cirebon untuk menginspirasi mereka agar berani menghadapi tantangan dengan tekad dan kekuatan yang tak tergoyahkan seperti para pejuang pemberani yang memperjuangkan kemerdekaan bangsa Indonesia.</p>\r\n<p>Bapak Ernest Firman mengatakan, &ldquo;Pada kesempatan penting Hari Kemerdekaan Indonesia ini, Kami turut merasakan semangat para pahlawan yang telah bermandikan keringat dan darah selama merebut kemerdekaan Indonesia. Sebagai bagian dari bangsa yang besar ini kita harus melanjutkan warisan mereka dengan mewujudkan sifat-sifat Warrior, Brave And Strong, dalam menjalani kehidupan pribadi kita dan dalam upaya kita mengembangkan sebuah bisnis.\"</p>\r\n<p>Sesuai dengan tema \"Warrior, Brave, And Strong\" PT Equityworld Futures Cirebon menyelenggarakan berbagai kegiatan yaitu Outbond, Turnamen Bulutangkis, Upacara Penghormatan dan di tutup dengan Upacara Bendera yang khidmat selama perayaan di beberapa tempat dan waktu tersebut. Karyawan dan mitra serta tamu undangan secara aktif berpartisipasi dalam acara-acara seperti Outbond, Turnamen Bulutangkis, Upacara Penghormatan dan Upacara Bendera yang mencerminkan Kekuatan dan Keberanian Seorang Pejuang, serta mengenang jasa pejuang kemerdekaan dalam merebut kemerdekaan Indonesia.</p>\r\n<p>PT Equityworld Futures Cirebon membuka rangkaian acara peringatan HUT RI ke-78 dengan melakukan kegiatan Outbond di Lembang, Bandung pada saat 5 Agustus 2023. Acara Outbond ini mendapat partisipasi antusias dari karyawan dan mitra di berbagai divisi dengan jumlah peserta lebih dari 100 orang. Melalui serangkaian aktivitas dan tantangan membangun tim yang menarik para peserta didorong untuk keluar dari zona nyaman mereka, berkolaborasi, dan saling mendukung seperti yang dilakukan para pejuang kemerdekaan Bangsa Indonesia di medan perang.</p>\r\n<p>Beberapa kegiatan penting dari acara ini termasuk \"Warrior Quest\" yaitu sebuah rintangan yang menuntut kekuatan fisik dan mental, \"Bravery Test\", di mana karyawan memamerkan kreativitas dan pemikiran cepat mereka, dan \"Strength of Unity\", yang menekankan kekuatan kerja sama tim untuk mencapai tujuan bersama. Kegiatan tersebut tidak hanya mendebarkan tetapi juga berfungsi sebagai wadah bagi karyawan untuk membangun ikatan dan rasa persaudaraan yang kuat, suatu hal yang penting untuk tim yang kohesif dan berkinerja tinggi.</p>\r\n<p>Komentar dari salah satu kontestan yang mengikuti acara Outbond, Ryandi Komara selaku Business Manager dan Wakil Pialang Berjangka di PT Equityworld Futures Cirebon, &ldquo;Acara ini sangat inspiratif, di tambah karyawan kantor pusat kami yang berada di sekitaran Kuningan Jakarta turut hadir, menambah rasa persatuan kami sebagai keluarga besar yang sangat solid dan berani menghadapi tantangan dalam mengembangkan bisnis ke depan nya&rdquo;</p>\r\n<p>Selain itu PT Equityworld Futures mengadakan Turnamen Bulutangkis yang di ikuti oleh seluruh Mitra Bisnis, Wartawan dan Back Office yang berlangsung sangat meriah dan kompetitif yang di adakan pada tanggal 11 Agustus 2023 di 2 lokasi yang menawarkan hadiah utama jutaan rupiah, Acara ini memiliki arti yang sangat besar bagi PT Equityworld Futures karena teman-teman media dapat turut hadir dan ikut berkompetisi di dalam turnamen tersebut.</p>\r\n<p>Selanjutnya dalam rangka memperingati Hari Kemerdekaan Indonesia yang telah diwariskan oleh para pejuang kemerdekaan yang di laksanakan 16 Agustus 2023 PT Equityworld Futures mengadakan kegiatan Upacara Penghormatan yang dilaksanakan di Taman Makam Pahlawan Kesenden Cirebon. Acara tersebut dihadiri oleh Kepala Cabang EWF Cirebon, Bussines Development serta jajaran Manager dari Bussines Manager Hingga Senior Excecutive Manager.</p>\r\n<p>Acara ini sebagai wujud nyata seluruh karyawan dan mitra PT Equityworld Futures sangat apresiasi tinggi atas pengorbanan pahlawan pejuang kemerdekaan, dan di jadikan momentum agar sifat pejuang yang memiliki keberanian dalam menghadapi tantangan dan kuat dalam menjalani perjuangan dapat di contoh dalam melaksanakan tugas dan tanggung jawab yang sudah di berikan perusahaan.</p>\r\n<p>Acara di tutup dengan Upacara Bendera, Dalam Upacara Bendera yang di laksanakan pada tanggal 17 Agustus 2023 di kantor PT Equityworld Futures menampilkan pidato inspiratif oleh Bapak Ernest Firman sebagai Kepala Cabang Equityworld Futures Cirebon, di mana beliau menyoroti pentingnya persatuan dan tekad dalam mencapai kesuksesan. Dia mendorong semua orang untuk bekerja sama sebagai unit yang kohesif, menerima halangan dengan keberanian dan kekuatan untuk melanjutkan perjalanan dalam pengembangan bisnis.</p>\r\n<p>PT Equityworld Futures Cirebon tetap berdedikasi pada tujuan utamanya menjadi perusahaan yang handal dan maju yang memberikan kontribusi positif bagi masyarakat dan menjunjung tinggi nilai-nilai bangsa yang berani dan kuat. Seiring kemajuan Indonesia PT EWF Cirebon bertekad untuk terus berperan aktif dalam pembangunan dan pertumbuhan bangsa sekaligus membentuk karyawannya untuk memiliki jiwa &ldquo;Warrior, Brave and Strong&rdquo;, dalam setiap langkah yang mereka ambil.</p>\r\n<p>Video Kegiatan:&nbsp;https://t.ly/ouXTdhttps://t.ly/ouXTd<a href=\"https://t.ly/ouXTd\">https://t.ly/ouXTd</a></p>', '2025-09-10 05:26:48', '2025-09-10 05:26:48'),
(6, '2025-09-10-12-32-10-ewf-cirebon-apresiasi-peran-habib-jafar-bin-muhammad-alkaff-dalam-membangun-toleransi.jpeg', 'Info & Kegiatan', 'published', 'EWF Cirebon Apresiasi Peran Habib Jafar bin Muhammad Alkaff dalam Membangun Toleransi', 'ewf-cirebon-apresiasi-peran-habib-jafar-bin-muhammad-alkaff-dalam-membangun-toleransi', '<p>PT Equityworld Futures (EWF) Cabang Cirebon menggelar perayaan Tahun Baru Islam, 1 Muharam 1445 H, dan Haul Nasional untuk mengenang sosok Habib Jafar bin Muhammad Alkaff di Masjid Agung Sang Cipta Rasa Cirebon pada Selasa, 18 Juli 2024.</p>\r\n<p>Perayaan ini dirangkai dengan kegiatan khataman Al-Qur\'an yang dihadiri oleh para karyawan EWF Cabang Cirebon, mitra bisnis, dan masyarakat umum. Dengan khidmat, mereka bersama-sama melantunkan tawasul dan membaca Al-Qur\'an.</p>\r\n<p>Ernest Firman, Kepala Cabang EWF Cirebon, membuka acara dengan penuh penghormatan kepada almarhum Habib Jafar bin Muhammad Alkaff. Dalam pidatonya, Ernest mengungkapkan rasa hormat dan penghargaan yang tinggi terhadap sosok ulama kharismatik tersebut.</p>\r\n<p>\"Habib Jafar bin Muhammad Alkaff adalah seorang ulama yang meninggalkan warisan berharga bagi perusahaan kami. Guru kami menekankan pentingnya menghormati dan meneruskan nilai-nilai kebaikan yang ditinggalkan oleh ulama terdahulu,\" ungkap Ernest dengan tegas.</p>\r\n<p>Selain itu, Ernest Firman juga mengapresiasi peran Habib Jafar bin Muhammad Alkaff dalam membangun sikap toleransi yang tinggi. Bahkan, EWF telah mengadopsi nilai-nilai toleransi yang ditinggalkan oleh beliau.</p>\r\n<p>Hal ini dianggap sangat relevan dengan semangat persatuan dan kebersamaan yang menjadi karakter bangsa Indonesia. \"Kami akan selalu mengenang pesan dari guru kami mengenai pentingnya persatuan dan toleransi yang tinggi ini,\" tambahnya.</p>\r\n<p>Ernest juga menyampaikan bahwa peringatan 1 Muharram 1445 H dan Haul Nasional untuk mengenang Habib Jafar bin Muhammad Alkaff diisi dengan pembacaan doa, solawat, dan khataman Al-Qur\'an sebagai bentuk penghormatan dan kecintaan kepada Nabi Muhammad SAW.</p>\r\n<p>Seluruh peserta juga diberikan kesempatan untuk berdoa bersama dan mengenang jasa-jasa para ulama yang berkontribusi bagi perkembangan agama dan masyarakat di Kota Cirebon.</p>\r\n<p>Selain acara di dalam masjid, EWF Cirebon juga secara rutin menyelenggarakan pengajian khataman Al-Qur\'an bagi para muslim dan renungan Alkitab bagi karyawan beragama nasrani setiap bulan.</p>\r\n<p>\"Kajian ini juga diikuti oleh karyawan dan mitra bisnis dengan harapan dapat meningkatkan semangat persatuan dan spiritualitas di masing-masing individu,\" tambahnya.</p>\r\n<p>Melalui acara ini, EWF Cirebon berharap dapat terus memberikan kontribusi positif bagi masyarakat dan menjadi wadah pengembangan spiritual bagi seluruh anggota perusahaan.</p>\r\n<p>\"Dengan tema Equityworld Futures Cirebon, Bersama Kita Membangun Jiwa Bangsa,\" tutup Ernest.</p>\r\n<p>&nbsp;</p>\r\n<p>EWF Cirebon Link Youtube :&nbsp;<a href=\"https://youtu.be/jo4S7de7_Es?si=j1vNAol_K4zzVneh\">https://youtu.be/jo4S7de7_Es?si=j1vNAol_K4zzVneh</a></p>', '2025-09-10 05:32:10', '2025-09-10 05:35:37'),
(7, '2025-09-10-12-36-44-sambut-tahun-baru-1445-hijriah,-pt-equityworld-futures-semarang-gelar-khataman-al-quran-di-7-tempat.jpeg', 'Info & Kegiatan', 'published', 'Sambut Tahun Baru 1445 Hijriah, PT Equityworld Futures Semarang Gelar Khataman Al-Quran di 7 Tempat', 'sambut-tahun-baru-1445-hijriah-pt-equityworld-futures-semarang-gelar-khataman-al-quran-di-7-tempat', '<p>Astana Mengadeg adalah makam dari Raja Mangkunegaran pertama, yaitu KGPAA Mangkunegoro I atau dikenal sebagai Pangeran Sambernyawa, sedangkan Astana Girilayu adalah makam dari Raja Mangkunegaran keempat, yaitu KGPAA Mangkunegoro IV yang memiliki nama asli RM Sudiro.</p>\r\n<p>Masjid Riyadh berdiri di kompleks Keraton Kasunanan Surakarta dan merupakan tanah wakaf dari keraton pada masa pemerintahan Raja Pakubuwono X. Di Masjid Riyadh Solo juga terdapat makam Habib Alwi bin Ali Al Habsy dan Habib Muhammad Anis Bin Alwi Bin Ali Al Habsy.</p>\r\n<p>Dengan tema \"Bersama PT Equityworld Futures Semarang Kita Bangun Jiwa Bangsa,\" diharapkan kegiatan spiritual ini mampu memberikan semangat kepada seluruh anggota perusahaan dalam perjuangan untuk mencapai kebaikan dengan mengutamakan nilai-nilai spiritualisme, profesionalisme, dan nasionalisme.</p>\r\n<p>Melalui acara ini, PT. Equityworld Futures Semarang berharap dapat terus memberikan kontribusi positif bagi masyarakat dan menjadi wadah pengembangan spiritual bagi seluruh anggota perusahaan.</p>\r\n<p>\"Ibaratkan seperti acara tahunan bagi PT Equityworld Futures Semarang, ini merupakan sarana untuk meningkatkan spiritualisme dan menghormati jasa-jasa para leluhur kita, agar kita dapat meneladani kelebihan dari mereka sebagai bekal batin bagi seluruh karyawan PT Equityworld Futures Semarang,\" ungkap Ismet Faradis (Kepala PT Equityworld Futures Cabang Semarang).</p>\r\n<p>&nbsp;</p>\r\n<p>EWF Semarang Link Youtube :&nbsp;<a href=\"https://youtu.be/gE0QzKBatDw?si=JRzQRzv6fLuMowSI\">https://youtu.be/gE0QzKBatDw?si=JRzQRzv6fLuMowSI</a></p>', '2025-09-10 05:36:44', '2025-09-10 05:36:44'),
(8, '2025-09-10-12-38-09-pre-opening-kantor-pt-equityworld-futures-cirebon.jpeg', 'Pengumuman', 'published', 'Pre Opening Kantor PT Equityworld Futures Cirebon', 'pre-opening-kantor-pt-equityworld-futures-cirebon', '<p data-start=\"112\" data-end=\"473\">Cirebon &ndash; PT Equityworld Futures menggelar acara <em data-start=\"161\" data-end=\"174\">pre opening</em> kantor barunya di Kota Cirebon sebagai langkah memperluas layanan kepada masyarakat Jawa Barat. Kehadiran kantor ini diharapkan dapat menjadi pusat edukasi dan informasi seputar perdagangan berjangka, sekaligus memberikan pelayanan yang lebih dekat bagi nasabah di wilayah Cirebon dan sekitarnya.</p>\r\n<p data-start=\"475\" data-end=\"779\">Acara ini dihadiri oleh jajaran manajemen perusahaan, mitra bisnis, serta calon nasabah yang antusias menyambut kehadiran PT Equityworld Futures di Cirebon. Pembukaan resmi kantor dijadwalkan dalam waktu dekat dengan berbagai program dan layanan unggulan untuk mendukung kebutuhan investasi masyarakat.</p>', '2025-09-10 05:38:09', '2025-09-10 05:38:09'),
(9, '2025-09-10-12-39-01-pembukaan-cabang-pt-equityworld-futures-surabaya-praxis.jpeg', 'Info & Kegiatan', 'published', 'Pembukaan Cabang PT Equityworld Futures Surabaya-Praxis', 'pembukaan-cabang-pt-equityworld-futures-surabaya-praxis', '<p data-start=\"111\" data-end=\"407\">Surabaya &ndash; PT Equityworld Futures resmi membuka cabang baru yang berlokasi di Gedung Praxis, Surabaya. Kehadiran cabang ini menjadi bagian dari komitmen perusahaan dalam memperluas jaringan dan memberikan layanan terbaik bagi masyarakat Jawa Timur, khususnya dalam bidang perdagangan berjangka.</p>\r\n<p data-start=\"409\" data-end=\"722\">Acara pembukaan dihadiri oleh manajemen PT Equityworld Futures, mitra bisnis, serta sejumlah undangan. Dengan fasilitas yang representatif dan tenaga profesional, cabang Surabaya-Praxis diharapkan mampu menjadi pusat edukasi sekaligus layanan investasi yang aman dan terpercaya bagi nasabah di wilayah tersebut.</p>', '2025-09-10 05:39:01', '2025-09-10 05:39:01'),
(10, '2025-09-10-12-40-53-pt-equityworld-futures-mengadakan-yasin-&-tahlil-bersama-anak-yatim-al-rosyidu-shoburih-&-al-jihad.jpg', 'Info & Kegiatan', 'published', 'PT Equityworld Futures Mengadakan Yasin & Tahlil Bersama Anak Yatim AL ROSYIDU SHOBURIH & Al-JIHAD', 'pt-equityworld-futures-mengadakan-yasin-tahlil-bersama-anak-yatim-al-rosyidu-shoburih-al-jihad', '<p><strong>PT Equityworld Futures Trillium Surabaya menyambut 10 Muharram 1442 H</strong> tahun ini, yaitu Hari Asyura yang jatuh pada Sabtu, 29 Agustus 2020, kami mengadakan Yasin &amp; Tahlil Bersama Anak Yatim pada hari Kamis 27 Agustus 2020.Acara di mulai pada pukul, 16.00 sampai selesai 18.00, dengan mengundang anak&nbsp;<strong>yatim piatu AL ROSYIDU SHOBURIH Surabaya. Semoga dengan diadakan acara ini kita semua di berikan kemakmuran, kemudahan, keberkahan, kesehatan, dan kesuksesan. Aminn.</strong>Momentum 10 Muharram dijadikan sebagai Idul Yatama, berdasarkan anjuran untuk menyantuni anak-anak yatim pada hari tersebut. Dalam sebuah hadits disebutkan bahwa Rasulullah SAW sangat menyayangi anak-anak yatim.Dan beliau lebih menyayangi lagi pada hari Asyura (tanggal 10 Muharram). Di mana pada tanggal tersebut, Beliau menjamu dan bersedekah bukan hanya kepada anak yatim, tapi juga keluarganya.<br><br></p>\r\n<p>Kemudian dalam kitab Tanbihul Ghafilin bi-Ahaditsi Sayyidil Anbiyaa-i wal Mursalin disebutkan bahwa Rasulullah SAW. bersabda:</p>\r\n<p>مَنْ صَامَ يَوْمَ عَاشُورَاءَ مِنَ الْمُحَرَّمِ أَعْطَاهُ اللَّهُ تَعَالَى ثَوَابَ عَشْرَةِ آلافِ مَلَكٍ ، وَمَنْ صَامَ يَوْمَ عَاشُورَاءَ مِنَ الْمُحَرَّمِ أُعْطِيَ ثَوَابَ عَشْرَةِ آلَافِ حَاجٍّ وَمُعْتَمِرٍ وَعَشْرَةِ آلافِ شَهِيدٍ ، وَمَنْ مَسَحَ يَدَهُ عَلَى رَأْسِ يَتِيمٍ يَوْمَ عَاشُورَاءَ رَفَعَ اللَّهُ تَعَالَى لَهُ بِكُلِّ شَعْرَةٍ دَرَجَةً</p>\r\n<p>&ldquo;Barangsiapa berpuasa para hari Asyura (tanggal 10) Muharram, niscaya Allah akan memberikan seribu pahala malaikat dan pahala 10.000 pahala syuhada&rsquo;. Dan barang siapa mengusap kepala anak yatim pada hari Asyura, niscaya Allah mengangkat derajatnya pada setiap rambut yang diusapnya&ldquo;.</p>\r\n<p><strong>Bagi kami nilai PROFESIONAL sebuah Perusahaan dan Tenaga Kerja, harus didasari Jiwa SPIRITUAL &amp; NASIONALIS yang kuat.</strong></p>\r\n<p>Budaya perusahaan itu merupakan perilaku yang mengekspresikan kepribadian kerja, dan akan menjadi alat untuk meningkatkan daya saing bisnis.</p>\r\n<p>Budaya universal, yang memungkinkan keragaman dan perbedaan hidup dalam satu ruang secara harmonis dan optimis. Dalam hal ini, pola perilaku kerja yang dimiliki oleh semua insan perusahaan kami, tidak peduli latar belakang atau dari budaya mana para karyawan berasal, Kami saling menyatu di dalam kolaborasi, komunikasi, koordinasi, kontribusi, dan melayani dengan hati.</p>\r\n<p>DAN&nbsp;<strong>PT EQUITYWORLD FUTURES</strong>&nbsp;SELALU BEKERJA DENGAN 3 PILAR UTAMA :</p>\r\n<p><strong>&nbsp; \" SPIRITUAL, NASIONALIS, PROFESIONAL \"</strong></p>\r\n<p>Doa pagi kami panjatkan agar dalam melaksanakan tugas kita diberi keselamatan, kelancaran dan kesehatan, sehingga kita dimampukan untuk memberikan pelayanan yang terbaik.</p>\r\n<p>Kita bersyukur masih diberikan waktu oleh Allah SWT untuk berkarya &amp; semoga kedepan semakin berkah dan bermanfaat,Kecintaan dan rasa patriotisme bangsa Indonesia terhadap tanah airnya, yang direalisasikan atau diwujudkan dengan cara mengabdi atau berbakti, yang didasari oleh keikhlasan. Dan bentuk pengabdian tersebut Kami apreasiasikan dalam berbagai bidang.</p>\r\n<p>&nbsp;</p>', '2025-09-10 05:40:53', '2025-09-10 05:40:53'),
(11, '2025-09-10-12-41-28-isu-virus-korona-dongkrak-komoditas-emas-oleh-analis-pt-equityworld-futures,-bp-suhendra.jpg', 'Pengumuman', 'published', 'Isu Virus Korona Dongkrak Komoditas Emas oleh Analis PT Equityworld Futures, Bp Suhendra', 'isu-virus-korona-dongkrak-komoditas-emas-oleh-analis-pt-equityworld-futures-bp-suhendra', '<p>Saat ini dengan merebaknya Virus Corona, yang sangat berpengaruh sangat besar sentimen pasar untuk komoditi Emas , yang mana akan menjadi pilihan untuk safe heaven, terbukti hari ini mengalami kenaikan sampai 30 poin.</p>\r\n<p>Harga Emas Dunia untuk hari ini , mencapai rekor tertinggi sejak tahun 2013 dan Analis PT Equityworld Futures, Bp Suhendra memprediksi bahwa Emas manjadi pilihan utama karena perekonomian Dunia yang belum stabil dan para investor banyak yang beralih ke Emas.</p>\r\n<p>Sepekan ini pelaku pasar akan menunggu perkembangan dari China soal Virus Corona, dan hal itu akan sangat mempengaruhi sentimen para pelaku pasar, dan menurut Analisa Bp. Suhendra Emas adalah pilihan paling tepat untuk mengamankan aset, sebagai save heaven yang paling aman dan untuk ber investasi jangka panjang.</p>', '2025-09-10 05:41:28', '2025-09-10 05:41:28');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jfxes`
--

CREATE TABLE `jfxes` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text,
  `name` varchar(50) NOT NULL,
  `slug` text NOT NULL,
  `deskripsi` text NOT NULL,
  `specs` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jfxes`
--

INSERT INTO `jfxes` (`id`, `image`, `name`, `slug`, `deskripsi`, `specs`, `created_at`, `updated_at`) VALUES
(1, 'jfx/07072025-mengenal-minyak-sawit-merah-dan-manfaatnya-bagi-tubuh-tingkatkan-kesehatan-otak.jpg', 'Kontrak Berjangka Olein (OLE)', 'kontrak-berjangka-olein-ole', 'Kontrak Berjangka Olein (OLE) adalah produk perdagangan berjangka berbasis komoditas minyak kelapa sawit olahan (RBD Olein) yang diperdagangkan di Bursa Berjangka Jakarta (JFX). Produk ini memberikan kesempatan kepada investor untuk memperoleh keuntungan dari pergerakan harga komoditas sekaligus berfungsi sebagai sarana lindung nilai (hedging) terhadap volatilitas harga pasar. Dengan tingkat likuiditas yang baik dan transparansi harga, Kontrak Berjangka Olein menjadi salah satu pilihan investasi menarik di sektor komoditas, khususnya bagi para pelaku pasar yang ingin memanfaatkan potensi pasar minyak sawit yang terus berkembang.', '<p><strong>Spesifikasi Kontrak Berjangka Olein</strong></p>\r\n<div align=\"center\">\r\n<p>&nbsp;</p>\r\n<table border=\"1\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p><strong>Kode Kontrak</strong></p>\r\n</td>\r\n<td>\r\n<p>OLE</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Dasar Kontrak</strong></p>\r\n</td>\r\n<td>\r\n<p>Olein dengan kualitas Standar Pasar</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Satuan Kontrak</strong></p>\r\n</td>\r\n<td>\r\n<p>20 ton (20.000 Kg)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Bulan Kontrak</strong></p>\r\n</td>\r\n<td>\r\n<p>6 (enam) bulan berturut-turut, sehingga setiap hari perdagangan terdapat enam Bulan Kontrak</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Hari &amp; Jam Perdagangan</strong></p>\r\n</td>\r\n<td>\r\n<p>Setiap hari perdagangan</p>\r\n<p>Pukul 09.30 &ndash; 17.30 wib</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Pasca Penutupan</strong></p>\r\n</td>\r\n<td>\r\n<p>Sesi Pasca Penutupan dilaksanakan setiap hari perdagangan, yaitu mulai pukul 17.45 WIB sampai dengan 18.00 WIB.</p>\r\n<p>Amanat beli dan jual yang dimasukkan ke dalam JAFeTS adalah pada Harga Penyelesaian hari itu.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Tukar Fisik dengan Berjangka</strong></p>\r\n</td>\r\n<td>\r\n<p>Pihak-pihak yang melakukan transaksi jual/beli Olein, PPO lainnya dan CPO diluar bursa dapat mendaftarkannya ke Bursa untuk ditukar dengan transaksi berjangka bagi kedua belah pihak.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Hari Perdagangan Terakhir</strong></p>\r\n</td>\r\n<td>\r\n<p>Perdagangan untuk suatu Bulan Kontrak berakhir pada akhir sesi Pasca Penutupan tanggal 15 bulan yang bersangkutan, jika tanggal 15 bukan merupakan hari perdagangan, maka perdagangan berakhir pada hari perdagangan sesudahnya.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Harga</strong></p>\r\n</td>\r\n<td>\r\n<p>Rupiah per kilogram (termasuk PPN)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Perubahan Harga Minimum</strong></p>\r\n</td>\r\n<td>\r\n<p>Rp 5,- /kg (termasuk PPN)</p>\r\n<p>Rp. 100.000,- per lot (termasuk PPN)</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Batas Perubahan Harga</strong></p>\r\n</td>\r\n<td>\r\n<p>Rp.150,- per kilogram diatas atau dibawah Harga Penyelesaian hari perdagangan sebelumnya. Batas perubahan harga ini tidak berlaku untuk Bulan Berjalan dan Bulan Terdekat, kalau Bulan Berjalan sudah tidak diperdagangkan lagi.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Penyelesaian Akhir</strong></p>\r\n</td>\r\n<td>\r\n<p>Penyerahan DO Terdaftar dengan kualitas Standar Pasar</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Waktu Pemberitahuan Penyerahan</strong></p>\r\n</td>\r\n<td>\r\n<p>5 (lima) hari perdagangan terakhir. Kalau tanggal 15 itu bukan hari perdagangan maka hari perdagangan sesudahnya menjadi hari Pemberitahuan Penyerahan terakhir.</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Waktu Pemberitahuan Alokasi</strong></p>\r\n</td>\r\n<td>\r\n<p>Sebelum sesi pertama hari perdagangan pertama setelah hari pemberitahuan penyerahan</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Waktu Serah</strong></p>\r\n</td>\r\n<td>\r\n<p>Sebelum sesi pertama hari perdagangan kedua setelah dilakukan pemberitahuan penyerahan</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Mutu</strong></p>\r\n</td>\r\n<td>\r\n<p>Standard PASAR</p>\r\n<p>Free Fatty Acids (FFA) &lt; 0,15% AOCS Method Ca 5a-40</p>\r\n<p>Moisture &amp; Impurities &lt; 0,1% AOCS Method Ca 2b-38</p>\r\n<p>AOCS Method Ca 3a-46</p>\r\n<p>Iodine Value (WIJS) &gt; 56 AOCS Method Cd 1d-92</p>\r\n<p>Warna Merah (Lovibond 5,25 inci) &lt; 4 Red AOCS Method Cc 13b-45</p>\r\n<p>Slip Melt Point &lt; 24o C AOCS Method Cc 1-25</p>\r\n<p>Cloud Point 10,75o</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Tempat Penyerahan</strong></p>\r\n</td>\r\n<td>\r\n<p>Pilihan DO berada pada Penjual dengan batas maksimum 5 (lima) lot per penerbit DO Tangki Terdaftar per hari penyerahan</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Satuan Penyerahan</strong></p>\r\n</td>\r\n<td>\r\n<p>20 ton dengan toleransi + 2%</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Posisi Wajib Lapor</strong></p>\r\n</td>\r\n<td>\r\n<p>150 lot</p>\r\n</td>\r\n</tr>\r\n<tr>\r\n<td>\r\n<p><strong>Batas Posisi</strong></p>\r\n</td>\r\n<td>\r\n<p>500 lot</p>\r\n</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>', '2025-07-07 15:01:38', '2025-07-24 06:17:19'),
(3, 'jfx/30072025-27042025_122418-680e21f24188c-emas-3_169.jpeg', 'Kontrak Berjangka Emas (GOL)', 'kontrak-berjangka-emas-gol', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nWhy do we use it?\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).\r\n\r\n\r\nWhere does it come from?\r\nContrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\r\n\r\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.\r\n\r\nWhere can I get some?\r\nThere are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.\r\n\r\n5\r\n	paragraphs\r\n	words\r\n	bytes\r\n	lists\r\n	Start with \'Lorem\r\nipsum dolor sit amet...\'', '<p>s</p>', '2025-07-30 07:56:25', '2025-07-30 08:24:27'),
(7, 'jfx/10092025-27042025-a_67aed98b33fc2.jpg', 'Kontrak Berjangka Emas 250 Gram (GOL250)', 'kontrak-berjangka-emas-250-gram-gol250', 'Testing Product', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n<div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', '2025-09-10 01:53:56', '2025-09-10 01:53:56');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kategori_wakil_pialang`
--

CREATE TABLE `kategori_wakil_pialang` (
  `id` bigint UNSIGNED NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori_wakil_pialang`
--

INSERT INTO `kategori_wakil_pialang` (`id`, `nama_kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Jakarta', 'jakarta', '2025-07-31 06:19:50', '2025-07-31 06:20:43'),
(2, 'Yogyakarta', 'yogyakarta', '2025-07-31 06:38:30', '2025-07-31 06:38:30'),
(3, 'Bali', 'bali', '2025-07-31 07:54:12', '2025-07-31 07:54:12'),
(4, 'Makasar', 'makasar', '2025-07-31 07:54:38', '2025-07-31 07:54:38'),
(5, 'Bandung', 'bandung', '2025-07-31 07:54:43', '2025-07-31 07:54:43'),
(6, 'Semarang', 'semarang', '2025-07-31 07:54:54', '2025-07-31 07:54:54');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(10, '0001_01_01_000000_create_users_table', 1),
(11, '0001_01_01_000001_create_cache_table', 1),
(12, '0001_01_01_000002_create_jobs_table', 1),
(13, '2025_04_25_060913_create_kategori_wakil_pialangs_table', 1),
(14, '2025_04_25_062529_create_wakil_pialangs_table', 1),
(15, '2025_04_27_052036_create_jfxes_table', 1),
(16, '2025_04_27_114838_create_spas_table', 1),
(17, '2025_04_28_053826_create_beritas_table', 1),
(18, '2025_04_29_154000_create_profiles_table', 1),
(19, '2025_07_24_100019_create_banners_table', 2),
(20, '2025_07_29_140319_add_cta_buttons_to_banners_table', 3),
(21, '2025_09_10_052455_modify_beritas_table_image_column', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profiles`
--

CREATE TABLE `profiles` (
  `id` bigint UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spas`
--

CREATE TABLE `spas` (
  `id` bigint UNSIGNED NOT NULL,
  `image` text,
  `name` varchar(50) NOT NULL,
  `slug` text NOT NULL,
  `deskripsi` text NOT NULL,
  `specs` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spas`
--

INSERT INTO `spas` (`id`, `image`, `name`, `slug`, `deskripsi`, `specs`, `created_at`, `updated_at`) VALUES
(1, 'spa/07072025_223049-686be829f04df-images (1).jpeg', 'AU1010_BBJ & AU10F_BBJ', 'au1010-bbj-au10f-bbj', 'Kontrak derivatif yang diperdagangkan di Bursa Berjangka Jakarta (JFX), berfokus pada pergerakan nilai tukar Dolar Australia (AUD) terhadap Dolar AS (USD). Keduanya dirancang untuk memberikan fleksibilitas bagi trader dalam memilih mata uang transaksi, yaitu IDR Tetap dan USD Mengambang.', '<h3 style=\"text-align: center;\"><strong>FOREX TRADE TABLE</strong></h3>\r\n<h4 style=\"text-align: center;\"><strong>AU10F_BBJ &nbsp;&amp; &nbsp;AU1010_BBJ</strong></h4>\r\n<table class=\"table-auto w-full border border-gray-300\" style=\"border-collapse: collapse; width: 100%; height: 431.064px; border-width: 1px; margin-left: auto; margin-right: auto;\" border=\"1\"><colgroup><col style=\"width: 33.3333%;\"><col style=\"width: 33.3333%;\"><col style=\"width: 33.3333%;\"></colgroup>\r\n<tbody>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 58.7814px; text-align: center; background-color: rgb(53, 152, 219); vertical-align: middle;\" rowspan=\"3\"><strong>SPESIFICATIONS</strong></td>\r\n<td style=\"height: 19.5938px; text-align: center; background-color: rgb(53, 152, 219); vertical-align: middle;\" colspan=\"2\"><strong>REMARKS</strong></td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; text-align: center; background-color: rgb(53, 152, 219); vertical-align: middle;\" colspan=\"2\"><strong>AUSTRALIAN DOLLAR</strong></td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"text-align: center; height: 19.5938px; background-color: rgb(53, 152, 219); vertical-align: middle;\" colspan=\"2\"><strong>AUD/USD</strong></td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Trade Code</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"center\" valign=\"BOTTOM\">AU10F_BBJ</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"center\" valign=\"BOTTOM\">&nbsp;AU1010_BBJ</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Rate</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\"><strong>Floating ( USD )</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\"><strong>( USD 1 = IDR 10.000 )</strong></td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Contract Size</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">AUD 100,000</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">AUD 100,000</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Trading Days</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">Senin - Jumat</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">Senin - Jumat</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Trading Hours</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"BOTTOM\">&nbsp;</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>- Summer (Daylight Saving Time)</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">07:00-03:00 WIB</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">07:00-03:00 WIB</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>- Winter</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">07:00-04:00 WIB</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">07:00-04:00 WIB</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\">&nbsp;</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">&nbsp;</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Initial Margin for Daytrade</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">USD 1,000 / Lot</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">IDR 10.000.000 / Lot</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Initial Margin for Overnight</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">USD 2,000 / Lot</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">IDR 20.000.000 / Lot</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"vertical-align: middle; background-color: rgb(53, 152, 219); height: 19.5938px;\"><strong>&nbsp;</strong></td>\r\n<td style=\"vertical-align: middle; background-color: rgb(53, 152, 219); height: 19.5938px;\">&nbsp;</td>\r\n<td style=\"vertical-align: middle; background-color: rgb(53, 152, 219); height: 19.5938px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Facility Fee</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">USD15/Lot/Side</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">IDR 150.000/Lot/Side</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Rollover Fee For Buy/Sell</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">USD5/Lot/Night</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">IDR 50.000/Lot/Night</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Value Added Tax (VAT)*</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">11% of Commission Fee</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">11% of Commission Fee</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"vertical-align: middle; background-color: rgb(53, 152, 219); height: 19.5938px;\"><strong>&nbsp;</strong></td>\r\n<td style=\"vertical-align: middle; background-color: rgb(53, 152, 219); height: 19.5938px;\">&nbsp;</td>\r\n<td style=\"vertical-align: middle; background-color: rgb(53, 152, 219); height: 19.5938px;\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Maintenance Margin</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">70% of Initial Margin</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">70% of Initial Margin</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Auto Liquidation</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">30% of Initial Margin</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">30% of Initial Margin</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\">&nbsp;</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">&nbsp;</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">&nbsp;</td>\r\n</tr>\r\n<tr style=\"height: 19.5938px;\">\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Price Source</strong></td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">Telequote</td>\r\n<td style=\"height: 19.5938px; vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">Telequote</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Price Guidance</strong></td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">Last Trade</td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">Last Trade</td>\r\n</tr>\r\n<tr>\r\n<td style=\"background-color: rgb(53, 152, 219); vertical-align: middle;\"><strong>&nbsp;</strong></td>\r\n<td style=\"background-color: rgb(53, 152, 219); vertical-align: middle;\">&nbsp;</td>\r\n<td style=\"background-color: rgb(53, 152, 219); vertical-align: middle;\">&nbsp;</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Minimum Price Spread Quote</strong></td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">4 pips/side</td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">4 pips/side</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Hectic Price Spread Quote</strong></td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">Based on Market</td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">Based on Market</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Minimum Price Movement</strong></td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">0.0001 pip (Tick value : USD 10)</td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">0.0001 pip (Tick value : USD 10)</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Range for limit and stop order</strong></td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">20-2000 Points/pips</td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">20-2000 Points/pips</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\" bgcolor=\"#f3f3f3\"><strong>Hectic Range Price For Limit &amp; Stop Order</strong></td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">Base On Market</td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\" bgcolor=\"#f3f3f3\">Base On Market</td>\r\n</tr>\r\n<tr>\r\n<td style=\"vertical-align: middle;\" align=\"LEFT\" valign=\"BOTTOM\"><strong>Delivery By</strong></td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">Cash Settlement</td>\r\n<td style=\"vertical-align: middle;\" align=\"CENTER\" valign=\"MIDDLE\">Cash Settlement</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style=\"text-align: justify;\">* Changes in VAT fees to 11% (Effective as of April 01<sup>st</sup>, 2022)</p>', '2025-07-07 15:12:58', '2025-07-08 03:32:39'),
(3, 'spa/10092025_085914-68c0db7238063-27042025_142628-680e3e94912b5-images (1).jpeg', 'Gulir Harian Emas Loco London (XUL10 & XULF)', 'gulir-harian-emas-loco-london-xul10-xulf', 'Testing Prduct SPA', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n<div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', '2025-09-10 01:55:18', '2025-09-10 01:59:14'),
(4, 'spa/10092025_085553-68c0daa9d1a63-27042025_122418-680e21f24188c-emas-3_169.jpeg', 'Testing Products SPA', 'testing-products-spa', 'Gulir Berkala Indeks Saham Hong Kong (HKK50_BBJ & HKK5U_BBJ)', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n<div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', '2025-09-10 01:55:53', '2025-09-10 01:55:53'),
(5, 'spa/10092025_085853-68c0db5d43f1e-07072025_222906-686be7c2af91b-images (1).jpeg', 'BCO10_BBJ & BCOF_BBJ', 'bco10-bbj-bcof-bbj', 'Testing Product SPA', '<div>\r\n<h2>What is Lorem Ipsum?</h2>\r\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n</div>\r\n<div>\r\n<h2>Why do we use it?</h2>\r\n<p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p>\r\n</div>\r\n<div>\r\n<h2>Where does it come from?</h2>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n</div>\r\n<div>\r\n<h2>Where can I get some?</h2>\r\n<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>\r\n</div>', '2025-09-10 01:56:50', '2025-09-10 01:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'admin', 'admin', 'adminbpf@gmail.com', NULL, '$2y$12$i8ZB3CwUJCJqB6qN/98x6uiRwqYCrAndW2epN0FSjevFcUJZ.5b42', 'nudWDFV2P9480h1NAQP2yIN8BT944Ru8Sua6jOdFZFKB8rGyAZ47LXexDiS0', '2025-09-18 03:29:06', '2025-09-18 03:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `wakil_pialangs`
--

CREATE TABLE `wakil_pialangs` (
  `id` bigint UNSIGNED NOT NULL,
  `nama` varchar(100) NOT NULL,
  `nomor_izin` text NOT NULL,
  `status` enum('aktif','non-aktif') NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wakil_pialangs`
--

INSERT INTO `wakil_pialangs` (`id`, `nama`, `nomor_izin`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Wahyu Setiawan', '136/UPTP/SI/10/2021', 'aktif', 1, '2025-07-31 06:21:18', '2025-08-20 06:16:05'),
(2, 'Untari', '561/BAPPEBTI/SI/10/2008', 'aktif', 2, '2025-07-31 06:38:50', '2025-07-31 06:38:50'),
(3, 'NG JOHNSON', '1365/BAPPEBTI/ SI/8/2007', 'aktif', 3, '2025-07-31 07:56:01', '2025-07-31 07:56:01'),
(4, 'SRI MULYANTI', '0034/UPTP/SI/2/2020', 'aktif', 4, '2025-07-31 07:57:27', '2025-07-31 07:57:27'),
(5, 'DIDI DHARMANSYAH', '200/UPTP/SI/9/2024', 'aktif', 5, '2025-07-31 07:58:10', '2025-07-31 07:58:10'),
(6, 'UTAMI NINGSIH', '233/UPTP/SI/10/2020', 'aktif', 6, '2025-07-31 07:59:04', '2025-07-31 07:59:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jfxes`
--
ALTER TABLE `jfxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori_wakil_pialang`
--
ALTER TABLE `kategori_wakil_pialang`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kategori_wakil_pialang_slug_unique` (`slug`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `profiles`
--
ALTER TABLE `profiles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `spas`
--
ALTER TABLE `spas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wakil_pialangs`
--
ALTER TABLE `wakil_pialangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wakil_pialangs_category_id_foreign` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jfxes`
--
ALTER TABLE `jfxes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori_wakil_pialang`
--
ALTER TABLE `kategori_wakil_pialang`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `profiles`
--
ALTER TABLE `profiles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `spas`
--
ALTER TABLE `spas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wakil_pialangs`
--
ALTER TABLE `wakil_pialangs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wakil_pialangs`
--
ALTER TABLE `wakil_pialangs`
  ADD CONSTRAINT `wakil_pialangs_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `kategori_wakil_pialang` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
