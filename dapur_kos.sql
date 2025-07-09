-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jul 2025 pada 13.24
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dapur_kos`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikels`
--

CREATE TABLE `artikels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sumber` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `artikels`
--

INSERT INTO `artikels` (`id`, `judul`, `konten`, `user_id`, `sumber`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Makanan Sehat  dan Bergizi', 'Kriteria makanan sehat dan bergizi yaitu makanan yang memiliki nilai gizi seimbang dan mengandung nilai gizi esensial tubuh seperti vitamin, mineral, karbohidrat, protein, lemak,kalsium, serat dan air. Pola makanan yang sehat tidak perlu menghilangkan makanan yang makanan yang disukai ataupun makanan tertentu dari program diet. Tetapi hanya perlu memilih opsi paling sehat dari setiap kategori, karena sejatinya itu semua dibutuhkan oleh tubuh.\n\nKriteria Makanan Sehat\n\n1. Karbohidrat\n\nKandungan karbohidrat bisa kita dapatkan dari beragam jenis makanan, seperti halnya kentang, ubi, gandum, beras merah dan jagung. Asupan karbohidrat harus diperhatikan karena 60 persen dari asupan kalori adalah karbohidrat yang juga merupakan sumber energi utama tubuh manusia.\n\n2. Protein\n\nTubuh manusia membutuhkan asupan protein 10-15% dari asupan protein harian. Sumber protein yang dapat dikonsumsi cukup beragam, baik protein nabati ataupun protein hewani. Asupan protein bisa didapat dari mengonsumsi telur, ikan, daging ayam, bebek, gandum, kacang almond dannkacang kedelai. Protein yang masuk ke dalam tubuh akan diproses menjadi asam amino yang berfungsi membangun otot, organ tubuh, kulit dan rambut. Disisi lain, fungsi hormon juga diatur oleh protein.\n\n3. Lemak\n\nLemak terbagi menjadi dua, yaitu lemak jenuh yang bisa didapat dari mengonsumsi daging, minyak kelapa dan susu, lalu lemak tak jenuh berasal bisa didapat dari mengonsumsi ikan, alpukat, dan kacang-kacangan. Pada hakikatnya lemak adalah sumber energi yang baik dan dibutuhkan untuk kesehatan tubuh. Akan tetapi, lemak harus dikonsumsi dengan jumlah yang cukup dan tidak berlebihan agar tidak terjadi obesitas. Obesitas terjadi karena adanya penambahan kalori yang berlebih ke dalam tubuh.\n\n4. Vitamin\n\nUntuk meningkatkan daya tahan tubuh, vitamin sangatlah dibutuhkan. Vitamin pun sangat beragam dan bisa didapatkan dari setiap makanan yang dikonsumsi setiap hari. Vitamin merupakan kandungan penting yang terdapat dalam makanan, akan tetapi bisa saja hilang apabila dimasak terlalu lama. Hal ini harus diperhatikan, karena vitamin memegang peran penting dalam menjaga kesehatan badan. Maka dari itu, untuk mencegah hilangnya kandungan vitamin, pilihlah makanan yang mudah diolah dengan cara dikukus, direbus atau ditumis seperti wortel, minyak ikan, bayam, brokoli, jeruk, alpukat, kacang panjang, daging sapi, dan ayam.\n\n5. Kalsium\n\nAsupan kalsium yang tidak memadai dapat menyebabkan tidak hanya osteoporosis, tetapi juga kecemasan, depresi, dan insomnia. Keju, yogurt, almond, dan tahu adalah makanan yang mengandung kalsium.\n\n6. Mineral\n\nMineral adalah zat yang ditemukan di tanah dan dicerna dari makanan. Oleh karena itu, kita dapat mengekstrak mineral dari sumber tumbuhan dan hewan. Realfoodfam dapat mencoba sayuran hijau, alpukat, kacang brazil, sarden, udang merah, dan kalkun. Kandungan mineral yang harus ada dalam tubuh, seperti zat besi, seng, kalsium, selenium, klorida, kalium, yodium, magnesium dan tembaga.\n\n7. Serat\n\nMakan makanan berserat tinggi seperti biji-bijian, buah-buahan, sayuran, kacang-kacangan, dan kacang-kacangan dapat mengurangi risiko penyakit jantung, stroke, dan diabetes. Selain itu, makanan yang mengandung serat tidak hanya baik untuk kulit, tetapi juga membantu menurunkan berat badan.\n\n8. Air\n\nAir adalah bagian penting dari makanan sehat dan bergizi. Padahal, karena tubuh manusia terdiri dari 60% air, maka Realfoodfam perlu memenuhi kebutuhan air hariannya dengan meminum 44.448 gelas air atau setara dengan 2 liter air setiap hari. Kekurangan alkohol dapat menyebabkan berbagai masalah kesehatan seperti batu ginjal dan sembelit. Manfaat air bagi tubuh adalah membantu menyerap, mencerna, mengeluarkan, mendistribusikan nutrisi ke tubuh dan mengatur suhu tubuh.\n\nMenjaga kesehatan bukanlah hal yang sulit, selama kita menjaga pola makan dan asupan gizi agar tubuh kita tidak kekurangan nutrisi dan bisa tetap semangat untuk melakukan aktivitas sehari-hari. Setelah mengetahui apa saja gizi esensial yang dibutuhkan tubuh, mari kita bersama-sama memulai dan membiasakan mengonsumsi makanan yang sehat. ', 5, 'telemed.ihc.id', 'draft', '2025-07-08 09:04:05', '2025-07-09 03:55:05'),
(2, 'Makanan Tidak Sehat', 'Pengertian Makanan Tidak Sehat \nMakanan tidak sehat adalah berbagai jenis atau bahan makanan yang mengandung gizi tidak seimbang. Jenis makanan ini tidak boleh dikonsumsi secara berlebihan. Umumnya, makanan tidak sehat hanya mengandung sedikit zat dan sedikit serat yang dibutuhkan untuk perkembangan tubuh. Kandungan yang ada dalam jenis makanan ini juga bisa berbahaya. Apabila dikonsumsi secara berlebihan makan tidak sehat akan menimbulkan berbagai dampak negatif. Kebiasaan mengonsumsi makanan yang kurang sehat bisa meningkatkan risiko timbulnya penyakit, menghambat perkembangan tubuh, mengurangi kecerdasan otak, mengurangi fungsi gerak anggota badan, bahkan dapat menimbulkan kematian.\n\nJenis Makanan Tidak Sehat \nKarena bisa memberi dampak yang tidak baik, penting untuk mengetahui jenis makanan apa saja yang masuk dalam kelompok makanan tidak sehat. Ada beberapa jenis makanan yang bisa dikategorikan tidak sehat dan sebaiknya dibatasi konsumsinya, seperti: \n\n1. Gorengan\nKandungan kalori pada gorengan terbilang tinggi. Begitu juga dengan kandungan lemak dan oksidan yang terdapat di dalamnya. Bila dikonsumsi terlalu sering, gorengan dapat menjadi makanan tidak sehat karena gorengan merupakan salah satu penyebab obesitas, memicu hyperlipidemia, dan dapat menjadi salah satu penyebab penyakit jantung koroner.\n\n2. Makanan Kalengan \nMakanan kalengan memang terlihat lebih mudah dimakan dan menarik. Namun, gizi makanan kalengan tidak memadai ketika sudah dikemas dalam kaleng, tidak seperti makanan segar. Nilai gizinya sudah berkurang drastis. Kandungan vitamin dan protein makan kalengan kebanyakan sudah rusak saat proses pengalengan itu dilakukan.\n\n3. Makanan Asinan \nMakanan asinan juga termasuk makanan tidak sehat karena mengandung kadar garam tinggi. Sebab, pada saat proses pengasinan dibutuhkan tambahan garam dalam jumlah sangat banyak. Makanan yang memiliki kadar garam melebihi batas normal akan menambah beban beberapa organ dalam tubuh seperti ginjal, usus, dan selaput lendir pada lambung. Selain itu, penyakit darah tinggi, atau hipertensi juga rentan dipicu oleh makanan asin.\n\n4. Daging Olahan \nDaging olahan termasuk makanan yang tidak sehat karena saat proses pengolahan, daging akan diberi bahan tambahan bahan pengawet dan pewarna. Daging olahan juga mengandung amonium nitrit yang menjadi salah satu penyebab kanker. Jika sering memakan daging olahan dalam jumlah banyak, menjadikan tekanan darah kurang stabil dan kinerja ginjal terganggu.\n\n5. Daging Berlemak dan Jeroan \nDua jenis daging ini memang mengandung banyak protein, vitamin dan mineral. Namun, karena memiliki kandungan kolesterol dan lemak jenuh dalam jumlah yang tinggi, makanan ini menjadi tidak sehat. Makan daging berlemak dan jeroan dalam jumlah besar bisa memicu timbulnya penyakit jantung koroner, kanker usus besar dan lain-lain.\n\n6. Olahan Keju \nOlahan keju sebenarnya bermanfaat bagi tubuh jika dimakan sewajarnya. Namun, berbagai macam makanan yang memiliki bahan dasar keju, seperti kue, jika dimakan berlebihan, akan berbahaya bagi tubuh. Saat dikonsumsi berlebihan, olahan keju bisa menyebabkan gairah makan menurun, gula darah naik, berat badan meningkat. Jika gairah makan menurun, perut akan sering kosong dan menjadi rentan terhadap berbagai penyakit.\n\n7. Mi Instan \nMi instan masuk dalam kategori makanan tidak sehat karena memiliki banyak sekali bahaya jika dikonsumsi berlebihan. Sebab, berbagai bahan baku dan bahan pelengkap yang digunakan dalam pembuatan mi instan membuat mi tidak disarankan untuk dikonsumsi.\n\n8. Banyak Gula Tambahan \nMakanan dan minuman yang ditambahkan gula harus dihindari. Konsumsi gula dalam jumlah besar, bisa memicu terjadinya resistensi insulin pada tubuh dan menyebabkan berbagai penyakit serius, termasuk diabetes tipe 2 dan penyakit jantung.\n\nSelain itu, junk food atau makanan cepat saji seperti ayam goreng, kentang goreng, burger, dan keripik juga harus dihindari. Tingkat kalori pada makanan cepat saji tinggi, tetapi nilai nutrisinya rendah. Dorongan untuk makan berlebihan juga bisa ditimbulkan oleh makanan cepat saji.\n\nMakanan atau minuman yang tidak sehat lainnya, seperti es krim, daging olahan, keju olahan dan juga es krim harus dihindari. Namun, apabila kamu ingin, sebaiknya hanya dilakukan sesekali saja. ', 5, 'halodoc.com', 'draft', '2025-07-09 00:14:43', '2025-07-09 00:16:50'),
(3, 'Kenali beberapa jenis tahu', 'Kalau ngomongin bahan makanan dengan harga terjangkau, bergizi, dan gampang diolah, tahu pasti masuk daftar teratas. Mulai dari warung tenda sampai restoran mewah, pasti punya olahan tahu yang nikmat. \n\nJenis-Jenis Tahu Populer yang Wajib Kamu Tahu\n\n1. Tahu putih\nTahu yang satu ini paling umum dan gampang ditemukan. Warnanya putih pucat dengan tekstur agak padat tapi lembut. Biasanya dijual dalam bentuk kotak besar lalu dipotong-potong.\n\n2. Tahu kuning\nTahu kuning ini punya warna khas dari rendaman kunyit, makanya kelihatan lebih mencolok. Teksturnya lebih padat dan aromanya khas.\n\n3. Tahu Sutra (Silken Tofu) \nNah, kalau yang ini teksturnya super halus dan lembut, mirip puding. Harus hati-hati saat mengolahnya karena tahu sutra gampang hancur. Biasanya tahu sutra lebih banyak dipakai dalam masakan Asia Timur, seperti Jepang atau Korea.\n\n4. Tahu pong atau tahu Sumedang\nTahu pong punya bagian dalam yang berongga alias kopong. Kalau digoreng, hasilnya garing di luar tapi empuk di dalam. Khusus tahu Sumedang, biasanya berbentuk kecil-kecil dan langsung siap goreng.', 5, 'dapurumami.com', 'draft', '2025-07-09 03:52:50', '2025-07-09 03:57:49'),
(4, 'Diet dengan Pola Makan Sehat', 'Saat berbicara tentang diet, banyak orang langsung membayangkan pembatasan makanan ketat. Padahal, pola makan sehat untuk diet justru menekankan keseimbangan dan keberagaman asupan gizi yang dibutuhkan tubuh setiap hari. \n\nPerbedaan Diet Sehat dan Diet Ekstrem\nDiet sehat berfokus pada pemenuhan kebutuhan gizi harian dengan memperhatikan kualitas dan kuantitas makanan, sedangkan diet ekstrem sering kali menghilangkan satu kelompok zat gizi secara drastis atau membatasi kalori terlalu rendah. Tubuh memerlukan karbohidrat sebagai sumber energi, protein untuk perbaikan sel, lemak sehat untuk fungsi hormon, serta vitamin dan mineral untuk mendukung metabolisme.\n\nPilihan Makanan Sehat untuk Diet\n \n1. Sumber Karbohidrat Kompleks\nKarbohidrat kompleks dicerna lebih lambat oleh tubuh, membantu menjaga kadar gula darah tetap stabil dan memberikan rasa kenyang lebih lama. Studi dalam American Journal of Clinical Nutrition menunjukkan bahwa konsumsi gandum utuh berkaitan dengan penurunan risiko obesitas dan penyakit jantung.\n\n2. Sumber Protein Tanpa Lemak\nProtein tanpa lemak penting untuk mempertahankan massa otot selama diet dan mempercepat pemulihan sel tubuh. Tahu dan tempe juga memberikan asupan isoflavon yang baik bagi kesehatan jantung dan hormone. \n\n3. Lemak Sehat\nLemak sehat berperan dalam menjaga fungsi otak dan membantu penyerapan vitamin larut lemak (A, D, E, K). Konsumsi lemak tak jenuh dalam jumlah cukup, seperti dari minyak zaitun dan alpukat, terbukti menurunkan kolesterol jahat (LDL) tanpa mengganggu berat badan.\n\n4. Perbanyak Buah dan Sayuran\nBuah dan sayuran kaya serat, antioksidan, dan mikronutrien penting yang mendukung metabolisme dan detoksifikasi tubuh. WHO merekomendasikan konsumsi minimal 200-400 gram buah dan sayur per hari untuk menurunkan risiko penyakit kronis.\n\n5. Pentingnya Air Putih\nAir putih membantu proses pencernaan, menjaga keseimbangan cairan, dan mencegah rasa lapar. Menurut European Journal of Clinical Nutrition, meminum cukup air berkontribusi terhadap penurunan berat badan dengan cara mendukung metabolisme.', 5, 'unimeal.com', 'draft', '2025-07-09 04:18:02', '2025-07-09 04:18:02'),
(5, 'Tempe untuk Penuhi Protein Nabati', 'empe adalah makanan tradisional Indonesia yang kaya akan protein nabati, cocok untuk memenuhi kebutuhan gizi. Setiap 100 gram tempe mengandung sekitar 193 kalori, 19 gram protein, 7 gram karbohidrat, dan 10 gram lemak. Kandungan seratnya sekitar 3 gram, menjadikannya sebagai sumber serat yang baik. Selain itu, tempe juga mengandung berbagai vitamin B kompleks seperti vitamin B6 dan B12, serta mineral penting seperti zat besi, magnesium, dan fosfor.\n\nProses fermentasi pada tempe tidak hanya meningkatkan kecernaan nutrisinya tetapi juga menghasilkan probiotik alami yang baik untuk kesehatan pencernaan. Dengan kandungan gizi yang lengkap dan beragam manfaatnya, tempe menjadi pilihan makanan yang sehat dan bergizi bagi berbagai kelompok usia, termasuk anak-anak dan orang dewasa yang menjalani diet vegetarian atau vegan. Mengolah tempe dengan variasi dan teknik memasak yang tepat tidak hanya meningkatkan cita rasa tetapi juga mempertahankan kandungan gizinya.\n\nTips Memilih Tempe Berkualitas\nMemilih tempe dengan kualitas terbaik sangat penting untuk memastikan kita bisa mendapatkan manfaat gizi yang optimal. Berikut adalah beberapa tips untuk memilih tempe yang berkualitas:\n\n1. Penampilan Luar: Pilih tempe yang terlihat segar dan berwarna cerah. Hindari tempe yang terlalu tua atau berwarna gelap karena bisa menandakan bahwa tempe tersebut sudah terlalu lama.\n\n2. Tekstur: Sentuh tempe untuk memeriksa teksturnya. Tempe yang baik seharusnya kenyal dan padat, bukan lembek atau hancur.\n\n3. Aroma: Bau tempe seharusnya segar dengan aroma yang khas dari proses fermentasi, tidak berbau apek atau amis.\n\n4. Warna: Tempe yang sehat memiliki warna yang seragam dan tidak terlalu banyak bercak putih atau hitam yang berlebihan.\n\n5. Sumber: Belilah tempe dari penjual atau toko yang terpercaya, yang menjual produk segar dan terjamin kualitasnya.', 5, 'rri.com', 'draft', '2025-07-09 04:20:12', '2025-07-09 04:20:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `artikel_kategori`
--

CREATE TABLE `artikel_kategori` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `artikel_id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `artikel_kategori`
--

INSERT INTO `artikel_kategori` (`id`, `artikel_id`, `kategori_id`, `created_at`, `updated_at`) VALUES
(2, 2, 1, NULL, NULL),
(4, 1, 5, NULL, NULL),
(5, 1, 2, NULL, NULL),
(6, 1, 7, NULL, NULL),
(7, 1, 11, NULL, NULL),
(8, 1, 6, NULL, NULL),
(9, 3, 7, NULL, NULL),
(10, 4, 2, NULL, NULL),
(11, 4, 5, NULL, NULL),
(12, 5, 6, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('laravel_cache_1b6453892473a467d07372d45eb05abc2031647a', 'i:1;', 1752047320),
('laravel_cache_1b6453892473a467d07372d45eb05abc2031647a:timer', 'i:1752047320;', 1752047320),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1751990748),
('laravel_cache_356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1751990748;', 1751990748),
('laravel_cache_da4b9237bacccdf19c0760cab7aec4a8359010b0', 'i:1;', 1752037164),
('laravel_cache_da4b9237bacccdf19c0760cab7aec4a8359010b0:timer', 'i:1752037164;', 1752037164),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1752058217),
('laravel_cache_livewire-rate-limiter:a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1752058217;', 1752058217),
('laravel_cache_livewire-rate-limiter:c249f2149727eeb79f1792b01e586e68c4ec6608', 'i:1;', 1752046097),
('laravel_cache_livewire-rate-limiter:c249f2149727eeb79f1792b01e586e68c4ec6608:timer', 'i:1752046097;', 1752046097);

-- --------------------------------------------------------

--
-- Struktur dari tabel `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategoris`
--

CREATE TABLE `kategoris` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategoris`
--

INSERT INTO `kategoris` (`id`, `judul`, `deskripsi`, `created_at`, `updated_at`) VALUES
(1, 'Mie', 'Lagi pengin makan mie? Di sini tempatnya! Ada banyak resep mie enak dan gampang banget dibuat — dari yang berkuah, digoreng, sampai yang kekinian. Tinggal pilih, masak, dan nikmati!', '2025-07-08 09:03:17', '2025-07-08 21:44:03'),
(2, 'Sayuran', 'Mau masak yang sehat dan segar? Yuk, cek resep-resep sayuran di sini! Mulai dari tumisan simpel, sayur berkuah, sampai olahan sayur kekinian yang gak ngebosenin. Cocok buat kamu yang cari menu ringan tapi tetap nikmat!', '2025-07-08 09:06:32', '2025-07-08 21:44:37'),
(4, 'Makanan Kekinian', 'Penasaran sama makanan yang lagi viral? Di sini tempatnya! Kumpulan resep hits yang sering muncul di media sosial — dari camilan kekinian, dessert lumer, sampai minuman ala kafe. Dijamin seru, gampang dibikin, dan bikin ketagihan!', '2025-07-08 19:26:22', '2025-07-08 21:46:52'),
(5, 'Daging', 'Suka yang gurih dan bikin kenyang? Resep-resep olahan daging ini wajib dicoba! Mulai dari daging sapi, ayam, hingga olahan kekinian yang juicy dan penuh rasa. Cocok buat lauk harian sampai menu spesial akhir pekan!', '2025-07-08 20:20:41', '2025-07-08 21:46:29'),
(6, 'Tempe', 'Makanan sederhana tapi serba bisa! Temukan berbagai resep olahan tempe yang enak, murah meriah, dan pastinya bikin nagih. Dari gorengan klasik sampai kreasi tempe kekinian yang gak kalah lezat!', '2025-07-08 20:25:39', '2025-07-08 21:47:14'),
(7, 'Tahu', 'Si lembut serbaguna yang nggak pernah gagal! Di sini kamu bisa nemuin aneka resep olahan tahu — dari yang digoreng renyah, ditumis, sampai tahu isi yang selalu jadi favorit. Simpel, enak, dan cocok buat segala suasana!', '2025-07-08 20:27:17', '2025-07-08 21:47:32'),
(10, 'Nasi', 'Gak lengkap rasanya tanpa nasi! Di sini kamu bisa temukan berbagai resep nasi lezat — dari nasi goreng, nasi uduk, sampai nasi kekinian ala rice bowl. Praktis, mengenyangkan, dan cocok buat semua selera!', '2025-07-08 20:34:48', '2025-07-08 21:49:10'),
(11, 'Telur', 'Bahan andalan sejuta umat! Yuk, olah telur jadi menu yang gak ngebosenin. Ada resep telur dadar, ceplok, balado, hingga kreasi unik yang gampang dibuat tapi tetap lezat. Cocok buat sarapan cepat atau makan malam praktis!', '2025-07-08 21:12:24', '2025-07-08 21:47:59'),
(12, 'Cemilan', 'Ngemil gak harus beli! Di sini ada kumpulan resep cemilan rumahan yang mudah, murah, dan pastinya enak. Mulai dari yang manis, asin, sampai yang lagi viral — cocok buat temen santai kapan aja!', '2025-07-08 21:19:54', '2025-07-08 21:50:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_artikel`
--

CREATE TABLE `kategori_artikel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `artikel_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_artikel`
--

INSERT INTO `kategori_artikel` (`id`, `kategori_id`, `artikel_id`, `created_at`, `updated_at`) VALUES
(3, 5, 1, NULL, NULL),
(4, 2, 1, NULL, NULL),
(5, 7, 1, NULL, NULL),
(6, 11, 1, NULL, NULL),
(7, 6, 1, NULL, NULL),
(8, 10, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori_resep`
--

CREATE TABLE `kategori_resep` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kategori_id` bigint(20) UNSIGNED NOT NULL,
  `resep_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kategori_resep`
--

INSERT INTO `kategori_resep` (`id`, `kategori_id`, `resep_id`, `created_at`, `updated_at`) VALUES
(1, 4, 4, NULL, NULL),
(2, 12, 4, NULL, NULL),
(3, 4, 3, NULL, NULL),
(4, 1, 3, NULL, NULL),
(5, 12, 5, NULL, NULL),
(6, 4, 5, NULL, NULL),
(7, 7, 5, NULL, NULL),
(8, 12, 6, NULL, NULL),
(9, 4, 6, NULL, NULL),
(10, 12, 7, NULL, NULL),
(11, 4, 7, NULL, NULL),
(12, 5, 8, NULL, NULL),
(13, 5, 9, NULL, NULL),
(14, 6, 10, NULL, NULL),
(15, 7, 11, NULL, NULL),
(16, 10, 14, NULL, NULL),
(17, 2, 15, NULL, NULL),
(18, 2, 16, NULL, NULL),
(19, 11, 17, NULL, NULL),
(20, 2, 17, NULL, NULL),
(21, 2, 18, NULL, NULL),
(22, 11, 19, NULL, NULL),
(23, 12, 20, NULL, NULL),
(24, 4, 20, NULL, NULL),
(25, 12, 21, NULL, NULL),
(26, 1, 22, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_06_26_064524_create_kategoris_table', 1),
(5, '2025_06_26_085206_create_reseps_table', 1),
(6, '2025_07_05_113313_create_artikels_table', 1),
(7, '2025_07_05_125129_create_penggunas_table', 1),
(8, '2025_07_08_041414_create_permission_tables', 1),
(9, '2025_07_09_050504_create_kategori_resep_table', 2),
(10, '2025_07_09_054812_create_kategori_artikel__table', 3),
(11, '2025_07_09_065349_create_artikel_kategori_table', 4),
(12, '2025_07_09_070958_remove_kategori_id_from_reseps_table', 5),
(13, '2025_07_09_071307_remove_kategori_id_from_artikels_table', 6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `penggunas`
--

CREATE TABLE `penggunas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `penggunas`
--

INSERT INTO `penggunas` (`id`, `user_id`, `name`, `email`, `gender`, `password`, `foto`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Yaya', 'yaya@gmail.com', 'P', 'yaya1234', 'Foto_Pengguna/01JZQ2FF0DTNF3XSDN5EY2WW6Q.jpg', '2025-07-09 00:47:50', '2025-07-09 00:47:50');

-- --------------------------------------------------------

--
-- Struktur dari tabel `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `reseps`
--

CREATE TABLE `reseps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `alat` text NOT NULL,
  `bahan` text NOT NULL,
  `prosedur` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `sumber` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `reseps`
--

INSERT INTO `reseps` (`id`, `judul`, `gambar`, `deskripsi`, `alat`, `bahan`, `prosedur`, `user_id`, `sumber`, `created_at`, `updated_at`) VALUES
(3, 'Mie Pedas Creamy', 'Foto_Resep/01JZPHW5S8C58J3J20P0X1GB6G.jpg', 'Mie Geprek Creamy adalah versi viral dari mie instan yang dipadukan dengan rasa pedas dan creamy manis dari susu kental dan mayones. Sensasi gurih, manis, dan pedasnya bikin nagih! Cocok untuk anak kos yang pengen menu anti-mainstream tapi tetap gampang bikinnya', '•	Panci kecil (untuk merebus mie)\n•	Teflon / wajan kecil\n•	Spatula atau sendok\n•	Mangkuk untuk mencampur', '•	1 bungkus mie instan (rasa bebas)\n•	1 sdm susu kental manis putih\n•	1 sdt mayones (optional, biar creamy)\n•	1 siung bawang putih (geprek, cincang)\n•	3–5 cabai rawit (iris tipis, sesuai selera)\n•	1/2 sdm margarin\n•	Air secukupnya', '1. Rebus mie instan seperti biasa, tiriskan (sisakan sedikit air).\n2. Tumis margarin, bawang putih, dan cabai sampai harum.\n3. Masukkan mie, tambahkan bumbu mie, kental manis, dan mayones. Aduk cepat.\n4. Masak sebentar sampai tercampur rata dan creamy.\n5. Sajikan! Bisa ditambah topping telur ceplok atau keju parut.', 5, 'Dapur.kos', '2025-07-08 19:36:19', '2025-07-08 20:10:51'),
(4, 'Nugget Geprek', 'Foto_Resep/01JZPJ2ZASPKXWF8946V93B6PF.jpg', 'Nugget Geprek adalah olahan viral yang menggabungkan nugget instan dengan sambal geprek sederhana. Rasanya pedas, gurih, dan renyah, cocok jadi lauk darurat yang tetap mantap di lidah. Praktis banget untuk anak kos karena nggak butuh banyak bahan dan alat.', '•	Wajan kecil / teflon (untuk menggoreng nugget)\n•	Cobek dan ulekan (untuk sambal geprek)\n•	Sendok kecil (untuk menyiram minyak panas)\n•	Pisau dan talenan (jika nugget dipotong)', '•	5–6 potong nugget siap goreng\n•	5 cabai rawit merah (sesuai selera)\n•	1 siung bawang putih\n•	Sejumput garam\n•	Sedikit minyak panas (untuk siram sambal)', '1. Goreng nugget hingga matang dan renyah, tiriskan.\n2. Ulek cabai, bawang putih, dan garam hingga halus.\n3. Siram sambal dengan sedikit minyak panas (biar wangi dan matang).\n4. Geprek nugget di atas sambal, aduk atau tekan-tekan biar meresap.\n5. Sajikan hangat dengan nasi!', 5, 'Dapur.kos', '2025-07-08 20:01:24', '2025-07-09 03:34:21'),
(5, 'Tahu Mercon', 'Foto_Resep/01JZPJ6KWK80TSQHVY7R6N5WWW.jpg', 'Tahu mercon isi sambal pedas ini viral karena meledak di mulut! Pedasnya nampol, murah meriah, dan cocok untuk camilan anak kos.', '•	Wajan kecil (untuk menggoreng tahu)\n•	Cobek dan ulekan (untuk menghaluskan sambal)\n•	Sendok (untuk mencampur sambal & tahu)\n•	Saringan / tisu minyak (untuk tiriskan tahu)', '•	4 tahu putih (belah dan goreng)\n•	5 cabai rawit\n•	2 bawang putih\n•	Garam & penyedap\n•	Minyak panas secukupnya', '1. Ulek cabai, bawang, garam.\n2. Siram sambal dengan minyak panas.\n3. Masukkan tahu goreng ke dalam sambal, aduk dan geprek.', 5, 'Dapur.kos', '2025-07-08 20:03:23', '2025-07-08 20:13:39'),
(6, 'Pisang nugget', 'Foto_Resep/01JZPJAR9C1WVA305X1YS21PC7.jpg', 'Pisang nugget kekinian ini viral karena bisa dibuat tanpa mixer atau oven. Rasanya manis, renyah, cocok buat cemilan manis di kamar kos.', '•	Mangkuk (untuk adonan pisang)\n•	Sendok / garpu (untuk mengaduk dan membentuk)\n•	Wajan kecil (untuk menggoreng)\n•	Saringan atau tisu dapur (untuk tiriskan)\n•	Piring saji', '•	2 buah pisang (haluskan)\n•	3 sdm tepung terigu\n•	1 sdm gula pasir\n•	Tepung panir\n•	Minyak untuk menggoreng', '1. Campur pisang, terigu, dan gula.\n2. Bentuk lonjong, balur panir.\n3. Goreng sampai kecokelatan, sajikan dengan cokelat/keju!', 5, 'Dapur.kos', '2025-07-08 20:05:39', '2025-07-08 20:16:03'),
(7, 'Puding coklat', 'Foto_Resep/01JZPJE6REJVS3NEKZZ21TQ7GR.jpg', 'Puding coklat ini super mudah dan cocok untuk pemula atau anak kos. Teksturnya lembut, rasa coklatnya manis pas, dan bisa dinikmati sebagai camilan atau pencuci mulut. Bisa dimodif pakai susu atau topping biar makin spesial!', '•	Panci kecil (untuk merebus adonan puding)\n•	Spatula / sendok kayu (untuk mengaduk)\n•	Cetakan puding / gelas plastik kecil\n•	Kompor\n•	Kulkas', '•	1 bungkus agar-agar bubuk coklat (±7 gram)\n•	500 ml air (bisa dicampur 200 ml susu cair + 300 ml air biar lebih creamy)\n•	5 sdm gula pasir (sesuai selera)\n•	(Opsional topping: parutan keju, susu kental manis, atau vla instan)', '1. Campurkan agar-agar, air/susu, dan gula dalam panci.\n2. Aduk rata, nyalakan api kecil-sedang, masak sambil terus diaduk sampai mendidih.\n3. Matikan api, tuang ke cetakan atau gelas plastik kecil.\n4. Biarkan uap panas hilang, lalu dinginkan di kulkas minimal 1 jam.\n5. Sajikan dingin dengan topping sesuai selera!', 5, 'Dapur.kos', '2025-07-08 20:07:32', '2025-07-08 20:17:47'),
(8, 'Tumis Daging Cincang', 'Foto_Resep/01JZPMQJRSPHSZ5SJPMVVT7VYJ.webp', 'Daging cincang adalah daging sapi, ayam, atau kambing yang telah digiling halus sehingga mudah diolah menjadi berbagai masakan. Teksturnya lembut, mudah menyerap bumbu, dan cocok dijadikan isian atau lauk seperti tumisan, bakso, perkedel, hingga pasta.', '•	Wajan / Teflon\n•	Kompor\n•	Spatula\n•	Pisau\n•	Talenan\n•	Mangkuk (untuk campur bahan)', '•	150 gr daging sapi giling (bisa beli kemasan mini)\n•	2 siung bawang putih (cincang)\n•	1/2 bawang bombay (iris)\n•	Garam, lada, dan kecap manis secukupnya\n•	1 sdt saus tiram (opsional)\n•	Minyak goreng secukupnya', '1. Panaskan minyak, tumis bawang putih dan bombay sampai harum.\n2. Masukkan daging giling, aduk sampai berubah warna.\n3. Tambahkan kecap, garam, lada, dan saus tiram.\n4. Masak hingga air menyusut, siap disajikan!', 5, 'Dapur.kos', '2025-07-08 20:22:37', '2025-07-08 20:47:36'),
(9, 'Ayam Suwir Pedas Manis', 'Foto_Resep/01JZPMWQZS0ZYCQC1X22J25DZ0.png', 'Ayam suwir adalah olahan ayam yang dimasak dengan cara direbus terlebih dahulu, lalu disuwir menjadi serat-serat kecil. Daging ayam yang sudah disuwir kemudian ditumis dengan bumbu pilihan seperti kecap, cabai, atau rempah-rempah lainnya. Teksturnya lembut dan bumbunya mudah meresap, membuat ayam suwir cocok dijadikan lauk sehari-hari. Menu ini sangat praktis dan populer di kalangan anak kos karena hemat, mudah dibuat, dan bisa disimpan untuk beberapa kali makan.', '•	Panci (untuk merebus ayam)\n•	Wajan / Teflon\n•	Kompor\n•	Spatula\n•	Pisau\n•	Talenan\n•	Garpu (untuk menyuwir ayam)\n•	Mangkuk', '•	1 potong dada ayam (bisa juga paha atas)\n•	2 siung bawang putih (iris tipis)\n•	3 siung bawang merah (iris tipis)\n•	3 cabai merah keriting (iris serong) – bisa ditambah sesuai selera\n•	2 sdm kecap manis\n•	1 sdm saus sambal (opsional)\n•	Garam, lada, dan gula secukupnya\n•	Sedikit air\n•	Minyak untuk menumis', '1. Rebus ayam sampai matang, lalu suwir-suwir kasar pakai garpu. (Kalau tidak ada kompor, bisa rebus di rice cooker dengan air dan garam.)\n2. Panaskan sedikit minyak di teflon, tumis bawang merah, bawang putih, dan cabai sampai harum.\n3. Masukkan ayam suwir, aduk rata.\n4. Tambahkan kecap manis, saus sambal, garam, gula, dan sedikit air.\n5. Aduk terus sampai bumbu meresap dan air menyusut.\n6. Koreksi rasa, lalu angkat dan sajikan dengan nasi hangat!', 5, 'Dapur.kos', '2025-07-08 20:24:25', '2025-07-08 20:50:26'),
(10, 'Tempe Orek', 'Foto_Resep/01JZPMFJ6BHXNSJVS176KAYXY5.jpg', 'Tempe orek adalah menu klasik anak kos: murah, tahan lama, dan cocok untuk teman nasi hangat. Rasanya manis-gurih, bisa dibuat banyak sekaligus untuk beberapa hari.', '•	Wajan / Teflon\n•	Kompor\n•	Spatula\n•	Pisau\n•	Talenan\n•	Mangkuk', '•	1 papan tempe (potong kecil korek api atau dadu, goreng)\n•	2 siung bawang merah (iris tipis)\n•	1 siung bawang putih (iris tipis)\n•	2 sdm kecap manis\n•	1/4 sdt garam dan kaldu bubuk\n•	1/2 sdt gula pasir\n•	Sedikit air\n•	Minyak untuk menumis', '1. Tumis bawang merah dan bawang putih sampai harum.\n2. Masukkan tempe goreng, aduk rata.\n3. Tambahkan kecap, garam, gula, dan sedikit air.\n4. Masak sampai bumbu meresap dan agak kering.\n5. Sajikan hangat atau simpan sebagai stok lauk!', 5, 'Dapur.kos', '2025-07-08 20:26:51', '2025-07-08 20:43:14'),
(11, 'Semur Tahu', 'Foto_Resep/01JZPMK6BFR9XVA0Z7R1EP2W6C.jpg', 'Semur tahu ala anak kos adalah menu rumahan yang manis-gurih, dibuat dari tahu dan bumbu sederhana. Praktis, hemat, dan tetap bikin lahap walau tanggal tua!', '•	Wajan / Panci\n•	Kompor\n•	Spatula\n•	Pisau\n•	Talenan\n•	Mangkuk\n\nSendok sayur', '•	3 buah tahu putih/kuning (potong dadu, goreng setengah matang)\n•	2 siung bawang merah (iris)\n•	1 siung bawang putih (iris)\n•	1–2 sdm kecap manis\n•	1/4 sdt lada bubuk\n•	Garam dan kaldu bubuk secukupnya\n•	100 ml air\n•	Minyak untuk menumis', '1. Tumis bawang merah dan bawang putih sampai harum.\n2. Masukkan tahu goreng, aduk sebentar.\n3. Tambahkan kecap, garam, lada, dan air.\n4. Masak sampai air menyusut dan bumbu meresap.\n5. Koreksi rasa, angkat, dan sajikan!', 5, 'Dapur.kos', '2025-07-08 20:28:33', '2025-07-08 20:45:13'),
(14, 'Nasi Goreng Gila', 'Foto_Resep/01JZPNCGRKANQ71QW3TV42YWKN.jpg', 'Nasi Goreng Gila adalah varian nasi goreng pedas dengan isian lengkap seperti telur, sosis, bakso, dan sayuran, dimasak dengan bumbu cabai dan kecap. Rasanya gurih, pedas, dan sedikit manis, cocok untuk yang doyan makanan beraroma kuat dan mengenyangkan. Disebut “gila” karena isian dan rasa pedasnya yang ramai dan menggugah selera. Menu ini sangat pas untuk anak kos karena mudah dimasak, hemat, dan bisa jadi solusi makan malam anti-bosan.', '• Kompor (untuk menumis)\n• Wajan (untuk menumis bumbu dan mencampur nasi)\n• Spatula / sutil (untuk mengaduk nasi saat ditumis)\n• Pisau dan talenan (untuk memotong sayuran, cabai, sosis, atau bakso)\n• Piring / mangkok besar (untuk menyajikan nasi goreng)\n• Mangkuk kecil (untuk mencampur telur jika mau buat telur dadar di atasnya)\n• Sendok (untuk mencicipi rasa atau mengaduk bumbu cair)', '• 1 piring nasi putih (sebaiknya nasi dingin/kemarin)\n• 1 butir telur\n• 2 buah sosis (iris tipis)\n• 2 butir bakso (iris tipis)\n• 1 lembar kol/sawi (iris tipis, opsional)\n• 2 siung bawang merah (iris tipis)\n• 1 siung bawang putih (cincang)\n• 3 cabai rawit (iris tipis, bisa ditambah sesuai selera)\n• 1 sdm kecap manis\n• 1 sdm saus sambal (opsional)\n• Garam, lada, dan kaldu bubuk secukupnya\n• Minyak untuk menumis', '1. Panaskan sedikit minyak di teflon, tumis bawang merah, bawang putih, dan cabai hingga harum.\n2. Masukkan telur, orak-arik hingga matang.\n3. Tambahkan sosis, bakso, dan sayuran. Aduk rata sampai agak layu.\n4. Masukkan nasi putih, tambahkan kecap manis, saus sambal, garam, dan kaldu bubuk.\n5. Aduk rata hingga nasi berwarna dan bumbu meresap.\n6. Angkat dan sajikan selagi hangat.', 5, 'Dapur.kos', '2025-07-08 20:35:53', '2025-07-08 21:27:44'),
(15, 'Tumis Kangkung', 'Foto_Resep/01JZPN4MNZR62MP69D5YZ3ZM4Q.jpg', 'Tumis kangkung adalah salah satu resep masakan simple yang wajib dikuasai anak kos. Sayur ini mudah didapat, murah, dan kaya nutrisi.', '• Teflon / wajan kecil\n• Pisau dan talenan\n• Sendok / spatula\n• Mangkok/wadah', '• 3 ikat kangkung, siangi\n• 2 siung bawang merah, iris tipis\n• 1 siung bawang putih, iris tipis\n• 1/2-1 sdt terasi\n• 10 buah cabai rawit, iris tipis\n• Garam, gula, dan kaldu jamur secukupnya\n• 50 ml air', '1. Tumis bawang merah, bawang putih, dan cabai sampai harum\n2. Masukkan terasi dan air, tekan-tekan terasi hingga tercampur rata\n3. Masukkan kangkung, garam, gula, dan kaldu jamur\n4. Aduk rata dan masak hingga kangkung layu\n5. Koreksi rasa dan sajikan', 5, 'Dapur.kos', '2025-07-08 20:54:44', '2025-07-08 20:54:44'),
(16, 'Tumis Bayam Tomat', 'Foto_Resep/01JZPNKVP34JT34DWM55T1A88E.jpg', 'Sayur bayam kaya akan zat besi dan vitamin, cocok untuk menjaga stamina anak kos.', '• Teflon / wajan kecil\n• Pisau dan talenan\n• Sendok / spatula\n• Mangkok/wadah', '• 1 ikat bayam, siangi daunnya\n• 1 buah jagung manis, sisir\n• 3 buah tomat, potong-potong\n• 3 siung bawang putih\n• 5 siung bawang merah\n• 2 buah cabai keriting\n• 6 buah cabai rawit\n• 1/2 sdt terasi matang\n• Kecap manis dan saus tiram\n• Gula, garam, merica secukupnya', '1. Haluskan bawang merah, bawang putih, cabai, dan terasi\n2. Tumis bumbu halus hingga harum\n3. Masukkan jagung, masak hingga matang\n4. Tambahkan bayam dan bumbu-bumbu\n5. Terakhir masukkan tomat dan koreksi rasa', 5, 'Dapur.kos', '2025-07-08 21:03:03', '2025-07-08 21:03:03'),
(17, 'Cah Tauge dan Tahu', 'Foto_Resep/01JZPNRSVSYT4AJ0ZAA8YMYCAY.jpg', NULL, '• Teflon / wajan kecil\n• Pisau dan talenan\n• Sendok / spatula\n• Mangkok/wadah', '• 1/4 kg tauge, cuci bersih\n• 3 buah tahu putih, potong dadu\n• 5 buah bakso sapi, belah dua\n• 5 cabai rawit merah\n• 2 cabai merah keriting\n• 3 bawang merah\n• 2 siung bawang putih\n• Garam dan gula secukupnya\n• 1 sdm saus tiram', '1. Goreng tahu dan bakso setengah matang\n2. Iris semua bumbu\n3. Tumis bumbu hingga harum\n4. Tambahkan saus tiram dan bumbu lainnya\n5. Masukkan tauge, tahu, dan bakso\n6. Aduk rata dan sajikan', 5, 'Dapur.kos', '2025-07-08 21:05:45', '2025-07-08 21:05:45'),
(18, 'Oseng Sawi Putih Jagung', 'Foto_Resep/01JZPP02KR2DWZKJPS5RRZ98JN.jpg', 'Oseng Sawi Putih Jagung merupakan menu sayur sederhana yang mengenyangkan.', '• Teflon / wajan kecil\n• Pisau dan talenan\n• Sendok / spatula\n• Mangkok/wadah', '• 1 bonggol sawi putih\n• 1 buah jagung manis\n• 3 siung bawang putih\n• Cabai sesuai selera\n• Garam, gula, kaldu bubuk\n• Air secukupnya', '1. Cincang bawang putih, sisir jagung\n2. Tumis bawang putih dan cabai\n3. Masukkan jagung dan sedikit air\n4. Setelah jagung empuk, masukkan sawi\n5. Bumbui dan masak hingga layu', 5, 'Dapur.kos', '2025-07-08 21:09:43', '2025-07-08 21:09:43'),
(19, 'Telur Geprek', 'Foto_Resep/01JZPPF4T8DCFEZ6MV2DG984F4.png', 'Telur geprek adalah resep masakan simple yang sedang tren dan cocok untuk anak kos karena bahannya murah meriah.', '• Teflon / wajan kecil\n• Sendok / spatula\n• Cobek dan ulekan\n• Mangkuk \n• Pisau dan talenan', '• 1 butir telur\n• Garam secukupnya\n• Tepung bumbu siap pakai\n• Minyak untuk menggoreng\n• Bahan Sambal:\n• 15 cabai rawit merah\n• 5 cabai rawit hijau\n• 3 siung bawang merah\n• 1 siung bawang putih\n• Garam secukupnya\n• Minyak goreng panas', '1. Dadar telur dengan sedikit garam, potong sesuai selera\n2. Buat adonan tepung basah dan kering\n3. Celupkan telur ke adonan basah lalu gulingkan di tepung kering\n4. Goreng hingga krispy dan kecokelatan\n5. Uleg kasar semua bahan sambal, siram dengan minyak panas\n6. Geprek telur dengan sambal dan sajikan', 5, 'Dapur.kos', '2025-07-08 21:17:57', '2025-07-08 21:17:57'),
(20, 'Jamur Crispy', 'Foto_Resep/01JZPPP0AD87704GKZD70B8WMY.jpg', 'Jamur crispy merupakan camilan sehat yang bisa jadi lauk.', '• Teflon / wajan kecil\n• Sendok / spatula\n• Mangkuk ', '• Jamur tiram, suwir-suwir\n• 250 gr tepung serba guna\n• 3 sdm tepung maizena\n• 4 siung bawang putih\n• 1 sdt merica bubuk\n• Garam dan kaldu bubuk\n• Minyak untuk menggoreng', '1. Cuci jamur dan peras hingga kering\n2. Haluskan bawang putih, campur dengan bumbu\n3. Marinasi jamur selama 10 menit\n4. Balur dengan campuran tepung\n5. Goreng hingga keemasan', 5, 'Dapur.kos', '2025-07-08 21:21:42', '2025-07-08 21:21:42'),
(21, 'Perkedel Kentang', 'Foto_Resep/01JZPRPNM2KRYFVXJ8N6X53WK4.jpg', 'Perkedel kentang ala anak kos adalah lauk hemat dari kentang yang dihaluskan dan digoreng. Lembut di dalam, renyah di luar. Cocok dimakan bareng nasi hangat dan sambal!', '• Kompor portable / listrik – untuk menggoreng.\n• Wajan kecil – untuk menggoreng kentang dan adonan perkedel.\n• Panci kecil (opsional) – jika kentang direbus dulu, bukan digoreng.\n• Pisau dan talenan – untuk memotong bahan seperti daun bawang, bawang merah, dll.\n• Mangkok – untuk menghaluskan kentang dan mencampur bahan.\n• Garpu / ulekan kecil – untuk menghaluskan kentang.\n• Sendok – untuk mencetak adonan perkedel.\n• Saringan minyak / tisu dapur – untuk meniriskan perkedel yang sudah digoreng.', '• 2 buah kentang ukuran sedang (kupas, potong, goreng/kukus)\n• 1 butir telur (pisahkan kuning & putih)\n• 1 siung bawang putih (haluskan)\n• 1 batang daun bawang (iris halus, opsional)\n• Garam, lada, dan kaldu bubuk secukupnya\n• Minyak untuk menggoreng', '1. Haluskan kentang yang sudah digoreng/kukus.\n2. Campurkan kentang halus dengan bawang, kuning telur, daun bawang, dan bumbu.\n3. Bentuk bulat pipih sesuai selera.\n4. Celupkan ke putih telur, lalu goreng hingga kecokelatan.\n5. Tiriskan dan sajikan!', 5, 'Dapur.kos', '2025-07-08 21:57:01', '2025-07-08 21:57:01'),
(22, 'Bihun Goreng', 'Foto_Resep/01JZPRWB8B76V0RGNEKZ0CMT2W.jpg', 'Bihun goreng ala anak kos adalah menu hemat yang mudah dimasak, hanya dengan bihun, telur, dan bahan pelengkap seadanya. Cocok jadi sarapan, makan siang, atau pengganti mie instan saat tanggal tua.', '• Panci kecil (untuk merebus bihun)\n• Saringan (opsional)\n• Wajan / Teflon\n• Kompor\n• Spatula\n• Pisau\n• Talenan\n• Mangkuk', '• 1 keping bihun jagung (rendam air panas, tiriskan)\n• 1 butir telur\n• 1 buah sosis / 2 bakso (iris tipis)\n• 1 lembar kol / sawi (opsional, iris tipis)\n• 1 siung bawang putih (cincang)\n• 1 siung bawang merah (iris)\n• 1 sdm kecap manis\n• Garam, lada, dan kaldu bubuk secukupnya\n• Minyak untuk menumis', '1. Tumis bawang putih dan bawang merah hingga harum.\n2. Masukkan telur, orak-arik sampai matang.\n3. Tambahkan sosis/bakso dan sayuran, aduk sampai layu.\n4. Masukkan bihun yang sudah direndam, aduk rata.\n5. Tambahkan kecap, garam, lada, dan kaldu bubuk. Aduk sampai semua tercampur rata dan bihun tidak lengket.\n6. Sajikan hangat!', 5, 'Dapur.kos', '2025-07-08 22:00:07', '2025-07-08 22:00:07');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('dldtMdtvwQq8G5WgAZruWRXYL65R9c08TACfe0AR', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoidEVVQXRTc3NpQWNEenc3WG1kS1U4N21neUJmUVhyOExkSmhEaXAweCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM2OiJodHRwOi8vbG9jYWxob3N0OjgwMDAvYWRtaW4vYXJ0aWtlbHMiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aTo1O3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkdDlhbnBQbWl1eVAvekc3S3l2SVhLZXNTWGJlSGZmS2hBeEVWem5oMUYyOVpFbU1acWJnTXkiO3M6ODoiZmlsYW1lbnQiO2E6MDp7fX0=', 1752060026),
('ha6FbkoLm2Sf0l6uVB0vdNtwLjvMDmaejgnfKmtO', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiaEpOQTR4UFh1V3ZHNUhSaWpBTHBjeXU0SWJQYzZ4S2Y3dTZ3MXhXQSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hZG1pbi9sb2dpbiI7fX0=', 1752057340);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Alya Az-Zahra', 'alya@gmail.com', NULL, '$2y$12$s..RuboiP8lExCGE3S8aZukv8GxAs/0pp2tBzsaDA8cFQrtSBsPJa', 'admin', NULL, '2025-07-08 08:53:16', '2025-07-08 08:53:16'),
(2, 'Kelompok 02', 'kelompok2@gmail.com', NULL, '$2y$12$HewF3GxEYu0SQyokmXzz0eJi9JgmxFMsRtuF9OyaiuolR3VW2/flm', 'admin', NULL, '2025-07-08 08:55:04', '2025-07-08 09:59:26'),
(3, 'Ruru', 'ruru@gmail.com', NULL, '$2y$12$d3l.w8BgcCzKl1ZnVcqL1OBTJ22SbIO8gvbWUkb9VFlheOoFnNbxG', 'user', NULL, '2025-07-08 08:58:04', '2025-07-08 08:58:04'),
(4, 'yaya', 'yaya@gmail.com', NULL, '$2y$12$6gOSWKiJVegxw3Yx/x6gOeLpF4dI9DEaNF3lE.ffWuUFDowxJG/la', 'user', NULL, '2025-07-08 09:57:28', '2025-07-08 09:57:28'),
(5, 'Dapur.kos', 'dapurKos@gmail.com', NULL, '$2y$12$t9anpPmiuyP/zG7KyvIXKesSXbeHffKhAxEVznh1F29ZEmMZqbgMy', 'admin', NULL, '2025-07-08 19:36:03', '2025-07-08 23:02:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `artikels`
--
ALTER TABLE `artikels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikels_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `artikel_kategori`
--
ALTER TABLE `artikel_kategori`
  ADD PRIMARY KEY (`id`),
  ADD KEY `artikel_kategori_artikel_id_foreign` (`artikel_id`),
  ADD KEY `artikel_kategori_kategori_id_foreign` (`kategori_id`);

--
-- Indeks untuk tabel `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indeks untuk tabel `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_artikel_kategori_id_foreign` (`kategori_id`),
  ADD KEY `kategori_artikel_artikel_id_foreign` (`artikel_id`);

--
-- Indeks untuk tabel `kategori_resep`
--
ALTER TABLE `kategori_resep`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategori_resep_kategori_id_foreign` (`kategori_id`),
  ADD KEY `kategori_resep_resep_id_foreign` (`resep_id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `penggunas`
--
ALTER TABLE `penggunas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `penggunas_email_unique` (`email`),
  ADD KEY `penggunas_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `reseps`
--
ALTER TABLE `reseps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reseps_user_id_foreign` (`user_id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indeks untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indeks untuk tabel `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `artikels`
--
ALTER TABLE `artikels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `artikel_kategori`
--
ALTER TABLE `artikel_kategori`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kategoris`
--
ALTER TABLE `kategoris`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kategori_resep`
--
ALTER TABLE `kategori_resep`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `penggunas`
--
ALTER TABLE `penggunas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `reseps`
--
ALTER TABLE `reseps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `artikels`
--
ALTER TABLE `artikels`
  ADD CONSTRAINT `artikels_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `artikel_kategori`
--
ALTER TABLE `artikel_kategori`
  ADD CONSTRAINT `artikel_kategori_artikel_id_foreign` FOREIGN KEY (`artikel_id`) REFERENCES `artikels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `artikel_kategori_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kategori_artikel`
--
ALTER TABLE `kategori_artikel`
  ADD CONSTRAINT `kategori_artikel_artikel_id_foreign` FOREIGN KEY (`artikel_id`) REFERENCES `artikels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kategori_artikel_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `kategori_resep`
--
ALTER TABLE `kategori_resep`
  ADD CONSTRAINT `kategori_resep_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `kategoris` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `kategori_resep_resep_id_foreign` FOREIGN KEY (`resep_id`) REFERENCES `reseps` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `penggunas`
--
ALTER TABLE `penggunas`
  ADD CONSTRAINT `penggunas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `reseps`
--
ALTER TABLE `reseps`
  ADD CONSTRAINT `reseps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Ketidakleluasaan untuk tabel `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
