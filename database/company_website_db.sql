-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Des 2024 pada 11.18
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
-- Database: `company_website_db`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `clients`
--

CREATE TABLE `clients` (
  `id` int(30) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `file_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `clients`
--

INSERT INTO `clients` (`id`, `company_name`, `description`, `file_path`, `date_created`, `date_updated`) VALUES
(2, 'Traveloka', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Penyediaan tiket transportasi dan akomodasi untuk perjalanan petualangan.\r\nPenawaran paket wisata alam dan aktivitas outdoor.\r\nPlatform untuk promosi event dan ekspedisi Kelana Semesta..&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1628739180_logo.jpg', '2021-08-12 11:33:38', '2024-12-12 19:10:45'),
(3, 'Eiger', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Penjualan perlengkapan petualangan seperti ransel, tenda, dan pakaian outdoor.\r\nSponsorship kegiatan komunitas.\r\nDiskon eksklusif untuk anggota komunitas.\r\nKonsultasi dan pelatihan tentang penggunaan peralatan outdoor.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;h3&gt;&lt;a href=&quot;https://sourcecodester.com&quot; target=&quot;_blank&quot;&gt;&lt;b&gt;Sample link for the client\'s company website&lt;/b&gt;&lt;/a&gt;&lt;/h3&gt;&lt;/p&gt;', 'uploads/1628739360_download.jpg', '2021-08-12 11:35:57', '2024-12-12 19:10:45'),
(5, 'Taman Nasional', 'Penyediaan tempat untuk kegiatan komunitas seperti glamping, camping, atau lokakarya outdoor.\r\nPengelolaan destinasi wisata yang ramah lingkungan.\r\nPromosi paket wisata alam melalui jaringan perusahaan.\r\n&lt;p&gt;kalbe farma&lt;br&gt;&lt;/p&gt;', 'uploads/1680596340_Cara-Agar-Diterima-Kerja-di-Perusahaan-Pertambangan', '2023-04-04 15:23:45', '2024-12-12 19:10:45');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contacts`
--

CREATE TABLE `contacts` (
  `meta_field` text DEFAULT NULL,
  `meta_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `contacts`
--

INSERT INTO `contacts` (`meta_field`, `meta_value`) VALUES
('mobile', '085713856554'),
('email', 'Company@sampple.com'),
('facebook', 'https://facebook.com/profile'),
('twitter', ''),
('linkin', ''),
('address', 'Jl. Gejayan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `messages`
--

CREATE TABLE `messages` (
  `id` int(30) NOT NULL,
  `full_name` text NOT NULL,
  `subject` text NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `messages`
--

INSERT INTO `messages` (`id`, `full_name`, `subject`, `contact`, `email`, `message`, `status`, `date_created`, `date_updated`) VALUES
(2, 'John Smith', 'Sample Subject Only', '09123456789', 'jsmith@sample.com', 'Sample Message only', 1, '2021-08-12 15:50:18', '2021-08-12 16:15:20'),
(5, 'muhamad', 'whaymdlklak', '0818272363', 'muhamad@gmail.com', 'kami bergerakkjdkjksja', 1, '2023-04-04 15:19:52', '2024-12-06 10:07:09'),
(6, 'Ummi muyasaroh', 'Bisnis', '085333970874', 'syaroh.2004@students.amikom.ac.id', 'assalamualaikum WR.WB', 1, '2024-12-06 10:00:41', '2024-12-06 10:04:06'),
(8, 'aini Ummy Hanifah', 'Bisnis', '085333970874', 'syaroh.2004@students.amikom.ac.id', 'ingin bekerja sama', 1, '2024-12-13 07:03:08', '2024-12-13 07:10:06');

-- --------------------------------------------------------

--
-- Struktur dari tabel `services`
--

CREATE TABLE `services` (
  `id` int(30) NOT NULL,
  `title` text NOT NULL,
  `description` text DEFAULT NULL,
  `file_path` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `file_path`, `date_created`, `date_updated`) VALUES
(1, 'Sample Service 101', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;&quot;&gt;\r\nKelana Semesta menawarkan berbagai layanan yang dirancang untuk mendukung petualangan sekaligus menjaga kelestarian alam. Kami menyediakan ekspedisi alam seperti pendakian gunung, trekking hutan, dan perjalanan ke destinasi eksotis untuk semua tingkatan pengalaman. Sebagai bagian dari komitmen lingkungan, kami menyelenggarakan kegiatan konservasi seperti penanaman pohon dan pembersihan kawasan wisata, serta memberikan edukasi tentang gaya hidup berkelanjutan melalui seminar dan lokakarya. Untuk meningkatkan keterampilan, kami menawarkan pelatihan survival, termasuk navigasi, pembangunan tempat perlindungan darurat, dan teknik bertahan hidup di alam liar.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1628734760_2.jpg', '2021-08-12 10:12:40', '2024-12-12 17:25:33'),
(4, 'Sample 102', '&lt;p&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; text-align: justify;&quot;&gt;Kami membantu merencanakan perjalanan petualangan dengan detail yang lengkap, mendokumentasikan momen berharga, dan menyediakan wadah bagi para pecinta alam untuk berkomunitas, berbagi pengalaman, serta memperluas jaringan. Selain itu, kami membuka peluang kemitraan dengan organisasi, sekolah, atau perusahaan untuk berkolaborasi dalam kegiatan lingkungan yang terstruktur dan bermakna, sehingga menciptakan petualangan penuh makna yang harmonis dengan alam.&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;a href=&quot;https://sourcecodester.com&quot; target=&quot;_blank&quot;&gt;Click here to go to link&lt;/a&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/1628735292_download.jpg', '2021-08-12 10:28:12', '2024-12-12 17:28:03');

-- --------------------------------------------------------

--
-- Struktur dari tabel `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Kelana Semesta'),
(2, 'address', 'Indonesia'),
(3, 'contact', '+1234567890'),
(4, 'email', 'info@sample.com'),
(6, 'short_name', 'Our Company'),
(9, 'logo', 'uploads/1628731260_logo.jpg'),
(11, 'welcome_message', 'Bergabunglah dengan Kelana Semesta, komunitas pecinta alam yang menyatukan semangat eksplorasi dan cinta pada lingkungan'),
(12, 'banner', 'uploads/1680596340_Cara-Agar-Diterima-Kerja-di-Perusahaan-Pertambangan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(30) NOT NULL,
  `message_from` text NOT NULL,
  `message` text NOT NULL,
  `file_path` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `testimonials`
--

INSERT INTO `testimonials` (`id`, `message_from`, `message`, `file_path`, `date_created`, `date_updated`) VALUES
(1, 'John Smith, CEO of Sample Company 101', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac dapibus arcu, ullamcorper viverra felis. Aenean in diam at ligula interdum laoreet. Mauris quis purus maximus, scelerisque lacus non, malesuada sapien. Sed at vulputate sapien. Sed vitae auctor odio. Nam ac massa luctus, scelerisque odio id, accumsan sem. Ut tincidunt bibendum diam, at tempor leo ornare ut. Donec nibh mi, mattis a dolor vitae, interdum rutrum nisi. Vestibulum eu nulla pharetra leo porta ornare quis ac magna. In blandit diam non tortor accumsan, id finibus odio sollicitudin.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Proin commodo turpis massa, quis posuere turpis cursus a. Phasellus ac mauris eget turpis efficitur cursus tempus eget purus. Praesent a est id velit euismod dapibus eu sed turpis. Nulla iaculis velit vitae justo bibendum fermentum. Vestibulum vulputate erat ac ex cursus pharetra. Nulla facilisi. Nullam aliquam lorem nisl, congue posuere mi sollicitudin id. Morbi ornare sagittis posuere. Donec elit urna, congue nec mauris a, tincidunt malesuada mauris. Quisque rutrum felis ligula, nec molestie purus porttitor porta. Aliquam et nibh laoreet, euismod tellus non, fermentum sapien.&lt;/p&gt;', 'uploads/1628741365_avatar.jpg', '2021-08-12 12:09:25', NULL),
(2, 'Claire Blake, VP in Accounting and Finance of Sample102', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Nam pulvinar tempus ante sit amet malesuada. Donec quis sem porttitor, varius dolor vel, eleifend enim. Pellentesque vitae elit elementum, tristique nisl vel, varius nisi. Integer massa libero, tincidunt in tincidunt vel, semper ac libero. Suspendisse potenti. Praesent vitae nibh nec nunc sagittis condimentum. Etiam feugiat, ipsum sit amet cursus viverra, purus lacus tincidunt metus, eget commodo enim nunc ac enim. Ut dolor libero, molestie ut lacus ac, imperdiet tempus ligula. Pellentesque suscipit blandit tellus id interdum. Sed vestibulum posuere nisl in condimentum.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Etiam vitae diam tincidunt, vulputate tellus a, tempus sem. Aenean vulputate ultricies tellus, non pellentesque risus volutpat vel. Vestibulum dolor quam, ultrices quis eros et, pharetra porta velit. Aliquam erat volutpat. Nulla eu tortor risus. Aenean tincidunt varius massa at tempor. Ut in felis lacus. Donec volutpat, est at vestibulum auctor, augue risus dapibus leo, et pulvinar sem enim et urna. Quisque volutpat pulvinar nibh.&lt;/p&gt;', 'uploads/1628745074_ava.jpg', '2021-08-12 13:11:14', NULL),
(3, 'George Wilson,  CFO of SAMPLE102 INC.', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Etiam vitae diam tincidunt, vulputate tellus a, tempus sem. Aenean vulputate ultricies tellus, non pellentesque risus volutpat vel. Vestibulum dolor quam, ultrices quis eros et, pharetra porta velit. Aliquam erat volutpat. Nulla eu tortor risus. Aenean tincidunt varius massa at tempor. Ut in felis lacus. Donec volutpat, est at vestibulum auctor, augue risus dapibus leo, et pulvinar sem enim et urna. Quisque volutpat pulvinar nibh.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif;&quot;&gt;Nunc pulvinar volutpat nulla at commodo. Nullam vitae justo lorem. Fusce rutrum urna ut nisi placerat tempus. Morbi a fringilla orci, at sollicitudin elit. Aenean quis arcu pretium, congue ante non, pharetra lectus. Pellentesque iaculis diam velit, vitae vulputate risus vulputate id. Duis fringilla cursus pellentesque. Quisque euismod nisl ac molestie volutpat.&lt;/p&gt;', 'uploads/1628745156_avatar.png', '2021-08-12 13:12:37', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `date_added`, `date_updated`) VALUES
(1, 'jaka', 'muhamad', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1619140500_avatar.png', NULL, '2021-01-20 14:02:37', '2023-04-05 15:34:45');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `services`
--
ALTER TABLE `services`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
