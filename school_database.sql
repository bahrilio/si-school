-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Jan 2022 pada 12.18
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`) VALUES
(1, 'member', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `students`
--

CREATE TABLE `students` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `npm` varchar(255) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `students`
--

INSERT INTO `students` (`id`, `name`, `npm`, `phone_number`, `address`, `email`) VALUES
(5, 'Elmo Bailey', '7740', '62 51 633 1345', 'Ap #851-1886 Ac St.', 'interdum.feugiat.Sed@scelerisque.co.uk'),
(6, 'Hayden Hines', '1468', '62 83 025 2711', '920-7998 Est, Av.', 'magna.sed@pedeCras.edu'),
(7, 'Kadeem Mcmahon', '2126', '62 42 204 2620', 'Ap #952-4726 Quam, Avenue', 'ac@inceptos.ca'),
(8, 'Thor Sykes', '6440', '62 85 011 0374', 'Ap #256-6182 Nulla. Road', 'In@acurnaUt.co.uk'),
(9, 'Bevis Rose', '8251', '62 86 838 0350', 'P.O. Box 438, 2904 Lorem Rd.', 'at@Mauris.ca'),
(10, 'Zahir Durham', '5305', '62 83 129 0940', '5087 Interdum. Road', 'Integer@acsem.org'),
(11, 'Joseph Carson', '4576', '62 58 134 0037', '6397 Libero St.', 'vehicula.risus@augueSedmolestie.ca'),
(12, 'Griffin Gillespie', '2906', '62 54 061 8931', '795-6802 Amet, St.', 'nibh@sedhendrerit.co.uk'),
(13, 'Kenyon Webster', '1488', '62 55 688 5030', 'P.O. Box 171, 6260 Egestas St.', 'mattis.ornare.lectus@semper.org'),
(14, 'Felix Collins', '9571', '62 63 631 1468', '5240 Urna. Rd.', 'elementum.purus@tinciduntaliquam.net'),
(15, 'Abel Richardson', '2620', '62 10 649 1458', 'Ap #467-3398 Consequat Rd.', 'Lorem.ipsum@loremloremluctus.net'),
(16, 'Barclay Aguilar', '1260', '62 13 617 9572', '721-6491 Nunc Rd.', 'auctor@duiinsodales.net'),
(17, 'Ethan Rhodes', '9036', '62 18 464 0980', '2868 Pede St.', 'magnis.dis.parturient@lacusUt.org'),
(18, 'Wesley Brewer', '2728', '62 52 429 9355', '282-3601 Risus. St.', 'amet.ante@purus.co.uk'),
(19, 'Tate Goff', '8450', '62 71 242 4174', '157-1679 Mi Rd.', 'enim.Mauris@nisiCumsociis.org'),
(20, 'Colton Allen', '1189', '62 64 198 1193', 'P.O. Box 537, 552 Auctor Street', 'et.euismod@volutpat.ca'),
(21, 'Brian Armstrong', '2299', '62 24 183 8273', 'Ap #275-4906 Sed Rd.', 'tellus.faucibus.leo@utdolordapibus.com'),
(22, 'Charles Chapman', '6371', '62 68 927 3225', 'Ap #464-4031 Risus. St.', 'ipsum.non.arcu@sociisnatoquepenatibus.com'),
(23, 'Joseph Romero', '2028', '62 54 702 8014', 'Ap #233-7166 Dui Rd.', 'eu.tempor.erat@mattis.co.uk'),
(24, 'Blaze Robertson', '6113', '62 52 337 9853', 'P.O. Box 684, 1533 Magna Street', 'montes.nascetur@Aliquamrutrumlorem.org'),
(25, 'Grant Foreman', '9733', '62 80 148 6883', '342-4366 Auctor St.', 'eget.ipsum@utnullaCras.com'),
(26, 'Ferris Vang', '2725', '62 49 629 9211', '8670 A, Av.', 'tristique.neque@ante.com'),
(27, 'Kieran Shaffer', '3161', '62 16 379 6419', '381-1894 Eu Road', 'rhoncus.Nullam@odio.co.uk'),
(28, 'Beck Rutledge', '7734', '62 69 526 1494', 'P.O. Box 734, 3814 Non, Road', 'nascetur@facilisis.co.uk'),
(29, 'Elijah Hansen', '8189', '62 56 678 0219', 'Ap #127-8404 Maecenas Rd.', 'in.magna.Phasellus@egestas.org'),
(30, 'Eagan Barker', '6203', '62 67 267 9854', 'P.O. Box 691, 7100 Quis St.', 'dolor@orci.ca'),
(31, 'Orson Butler', '2333', '62 11 582 0761', 'Ap #226-2457 Porttitor Avenue', 'eu.odio.Phasellus@id.ca'),
(32, 'Daquan Hayes', '8470', '62 42 635 4521', '926 Gravida St.', 'lorem.vehicula.et@sitamet.edu'),
(33, 'Odysseus Hensley', '3795', '62 20 027 3487', 'P.O. Box 577, 1724 Phasellus Street', 'Curabitur@ipsumCurabiturconsequat.org'),
(34, 'Ezra Watts', '9625', '62 84 056 0103', '8586 Sociosqu Avenue', 'Ut.sagittis.lobortis@laoreetipsum.edu'),
(35, 'Gannon Hewitt', '8127', '62 35 461 9241', 'P.O. Box 737, 9630 Justo Avenue', 'Aenean.massa.Integer@famesac.edu'),
(36, 'Gil Butler', '8412', '62 52 736 0884', 'Ap #130-6785 Libero. St.', 'hendrerit.a.arcu@loremsitamet.ca'),
(37, 'Julian Norman', '5932', '62 12 234 1976', '7019 Magna St.', 'lacinia.mattis.Integer@Aeneanegetmetus.org'),
(38, 'Arden Little', '1278', '62 18 391 2053', '841-8123 Amet Ave', 'risus@metusVivamuseuismod.ca'),
(39, 'Thomas Frank', '9725', '62 50 000 6150', '251-8971 Quisque Ave', 'vehicula.et@MorbivehiculaPellentesque.net'),
(40, 'Austin Sheppard', '6686', '62 67 827 1201', '4336 Nulla Avenue', 'eu.ligula@luctusetultrices.org'),
(41, 'Barry Hodge', '7691', '62 15 518 7072', '900-2147 Dui St.', 'sem.ut@mollis.co.uk'),
(42, 'Fritz Blevins', '5546', '62 52 806 6382', '954-4212 Ligula. Rd.', 'Curabitur@sit.ca'),
(43, 'Mufutau Dorsey', '1972', '62 38 120 5693', 'Ap #941-4864 Pede. Av.', 'enim@lobortistellusjusto.net'),
(44, 'Zeph Hill', '3902', '62 77 835 0037', '5655 Fusce Street', 'et.ultrices@interdumfeugiatSed.org'),
(45, 'Ivan Duncan', '3114', '62 88 346 5537', '3365 Pretium Avenue', 'Nulla@DonectinciduntDonec.net'),
(46, 'Beau Langley', '1984', '62 28 457 2632', 'Ap #816-693 Eget Avenue', 'odio.Aliquam.vulputate@Donectempuslorem.co.uk'),
(47, 'Fulton Bartlett', '9689', '62 42 668 3021', '6306 Nisi Av.', 'molestie@dolor.edu'),
(48, 'Dane Reeves', '6039', '62 17 186 7932', 'P.O. Box 853, 5517 Ut Ave', 'Nullam.nisl.Maecenas@liberoIntegerin.org'),
(49, 'Octavius Caldwell', '9748', '62 87 079 8104', 'P.O. Box 986, 8707 Metus. St.', 'dictum.ultricies.ligula@orciluctuset.org'),
(50, 'Camden Horn', '1369', '62 16 641 5305', '3214 Morbi Road', 'urna.et.arcu@placerat.co.uk'),
(51, 'Caldwell Gray', '1798', '62 23 898 5195', '847 Neque. Ave', 'lectus.Nullam@Nuncquis.co.uk'),
(52, 'Octavius Anderson', '4352', '62 14 696 3612', 'P.O. Box 398, 5570 Elit, Street', 'nibh@odiovelest.ca'),
(53, 'Sebastian Ayala', '3957', '62 25 242 5606', 'P.O. Box 607, 4988 Nam Avenue', 'eros.Nam@ornare.edu'),
(54, 'Lucius Carter', '7156', '62 53 890 1503', 'Ap #882-3644 Odio Rd.', 'lobortis.augue.scelerisque@mauris.net'),
(55, 'Caesar Bond', '6325', '62 32 657 9040', 'P.O. Box 877, 7292 Ut Street', 'parturient@atrisusNunc.ca'),
(56, 'Clayton Tillman', '9606', '62 94 606 2439', '876-8099 Erat Road', 'ac.risus.Morbi@Suspendissetristique.com'),
(57, 'Cooper Norris', '1495', '62 49 152 7811', '780-9931 Eget St.', 'convallis@rhoncusDonecest.net'),
(58, 'Bert Barber', '6592', '62 29 835 0712', 'P.O. Box 915, 1738 Ipsum Street', 'Donec.at.arcu@eget.co.uk'),
(59, 'Dustin Hamilton', '5107', '62 18 566 8527', '2448 Urna. Avenue', 'eu.erat.semper@Inlorem.co.uk'),
(60, 'Steel Watson', '3283', '62 71 262 5253', 'Ap #620-9398 Euismod Avenue', 'Pellentesque.ut@lectusquismassa.net'),
(61, 'Logan Cotton', '5476', '62 66 848 4991', '999-2542 Quam St.', 'erat.Etiam@enimconsequatpurus.ca'),
(62, 'Sylvester Day', '2033', '62 45 328 5323', 'P.O. Box 227, 4554 Et Av.', 'elementum.purus@feugiat.org'),
(63, 'Chancellor Norris', '1721', '62 52 945 2244', '138 Diam. Road', 'Morbi.quis.urna@turpis.edu'),
(64, 'Nero Browning', '4494', '62 44 666 5172', 'Ap #398-1157 Justo. Av.', 'eget@Fusce.co.uk'),
(65, 'Dante Horne', '8425', '62 82 537 2704', 'P.O. Box 573, 4068 Dictum Rd.', 'Pellentesque.ut@pedeac.co.uk'),
(66, 'Shad Atkinson', '7305', '62 48 571 7262', '868-1681 Non Avenue', 'nec@libero.edu'),
(67, 'Orlando Miller', '2009', '62 26 923 5168', 'Ap #809-5612 Sem Avenue', 'odio@pedeblanditcongue.ca'),
(68, 'Hakeem Wynn', '9042', '62 20 128 5258', '1303 Consequat Street', 'at@hendreritneque.org'),
(69, 'Brock Caldwell', '6795', '62 84 252 0653', '113-4362 Sed St.', 'viverra.Maecenas.iaculis@musProinvel.edu'),
(70, 'Benjamin Levy', '7120', '62 19 142 0851', 'P.O. Box 126, 3985 Dapibus Avenue', 'venenatis.vel@tincidunt.com'),
(71, 'Ryan Dillon', '7470', '62 76 968 5055', '810-9705 Magna. Street', 'nunc@Phasellusdolorelit.edu'),
(72, 'Plato Winters', '7071', '62 81 052 9710', '406-7098 Massa. St.', 'eu.eleifend.nec@sitamet.co.uk'),
(73, 'Andrew Lucas', '3636', '62 70 717 6193', '253-3477 Vel Rd.', 'ligula.Aenean.euismod@Vestibulumante.org'),
(74, 'Armand Walton', '6986', '62 19 905 2933', 'Ap #988-7087 Tincidunt Road', 'ipsum.dolor@pharetraNam.edu'),
(75, 'Nero Olson', '5944', '62 73 593 1194', 'P.O. Box 831, 7316 Diam Ave', 'lobortis.ultrices@acorci.org'),
(76, 'Judah Marquez', '8697', '62 21 556 8596', 'Ap #931-5038 Lectus Avenue', 'tellus@sit.net'),
(77, 'Merrill Sanchez', '2507', '62 18 649 2051', 'Ap #732-7499 Gravida. Avenue', 'cursus@pellentesque.edu'),
(78, 'Cody Dejesus', '4851', '62 64 132 2023', '4619 Proin Rd.', 'enim.sit.amet@laciniaSedcongue.edu'),
(79, 'Xenos Gibson', '8908', '62 64 496 0780', '476-6149 Fringilla Rd.', 'Quisque.purus.sapien@Aliquamvulputate.ca'),
(80, 'Gary Whitley', '3336', '62 33 138 5476', '4753 Dolor Street', 'faucibus@malesuadafames.com'),
(81, 'Jackson Bender', '4904', '62 42 625 8504', '8965 Bibendum Avenue', 'quis.massa.Mauris@Aeneanmassa.edu'),
(82, 'Isaiah Blair', '2978', '62 17 403 8777', '588-7633 Lectus Rd.', 'Donec.non@luctus.org'),
(83, 'Jeremy Hubbard', '4826', '62 66 684 7766', 'Ap #868-3758 Magnis Avenue', 'mattis@dolorDonecfringilla.com'),
(84, 'Elmo Tate', '6618', '62 53 871 6035', '7623 Pharetra. Rd.', 'dui@dolor.edu'),
(85, 'Oscar Farrell', '2846', '62 13 805 3655', '454-8137 Tristique Road', 'dui@Morbivehicula.net'),
(86, 'Cameron Colon', '9279', '62 89 528 7880', '8243 Urna, Avenue', 'neque.venenatis.lacus@at.co.uk'),
(87, 'Reuben Dixon', '3272', '62 17 024 3447', 'Ap #216-1243 Commodo Ave', 'sed@Duisvolutpatnunc.org'),
(88, 'Adrian Manning', '7189', '62 18 462 3651', 'P.O. Box 780, 3952 Ultricies Ave', 'sit@turpisnec.ca'),
(89, 'Flynn Lopez', '9319', '62 86 368 6087', '4101 Sed Rd.', 'ullamcorper.magna.Sed@Integeridmagna.org'),
(90, 'Hilel Kemp', '9117', '62 87 718 2888', '6545 Vivamus Rd.', 'dolor@molestie.net'),
(91, 'Nasim Larsen', '5061', '62 56 391 0287', '625-8535 Urna Avenue', 'Donec.nibh@mattisInteger.com'),
(92, 'Ezekiel Dorsey', '2398', '62 76 226 7794', '381-7341 Eget Av.', 'auctor.velit@velit.co.uk'),
(93, 'Channing Carver', '1127', '62 66 435 5320', 'Ap #799-9854 Mauris. Street', 'Curabitur.egestas@Duis.co.uk'),
(94, 'Vance Burton', '8267', '62 53 223 1523', '227-1862 Aenean Rd.', 'aliquet.libero@utipsumac.co.uk'),
(95, 'Kevin Mooney', '3438', '62 38 670 5825', 'P.O. Box 456, 846 Nam Rd.', 'Donec@tinciduntaliquam.net'),
(96, 'Byron Gallagher', '6652', '62 26 339 2630', 'Ap #628-9842 A, St.', 'ante@aliquam.com'),
(97, 'Emery Potts', '9357', '62 41 241 8837', 'Ap #793-4064 Urna St.', 'magna.Cras.convallis@vulputatenisisem.net'),
(98, 'Cullen Carroll', '5712', '62 42 353 1837', '815 Lectus. St.', 'consectetuer@porttitorvulputateposuere.org'),
(99, 'Thane English', '7334', '62 51 966 8364', 'Ap #325-4279 Eu Road', 'iaculis@vitaeposuereat.org'),
(100, 'Cruz Sosa', '4100', '62 25 095 0300', '443-4364 Lorem, Rd.', 'vel@odio.edu');

-- --------------------------------------------------------

--
-- Struktur dari tabel `teachers`
--

CREATE TABLE `teachers` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `nip` varchar(255) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` enum('Female','Male') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `teachers`
--

INSERT INTO `teachers` (`id`, `name`, `nip`, `phone_number`, `address`, `email`, `gender`) VALUES
(1, 'Chaim', '6802', '(318) 692-9767', 'Ap #114-5733 Mi Street', 'lacus.Quisque.imperdiet@enimdiam.net', 'Male'),
(2, 'Fulton', '7715', '(141) 599-5143', 'Ap #135-5992 Tellus. Street', 'Cras.dictum@variusNamporttitor.co.uk', 'Male'),
(3, 'Thomas', '8986', '(752) 368-4769', 'Ap #219-7495 Semper St.', 'habitant.morbi.tristique@Nulla.net', 'Male'),
(4, 'Barclay', '7429', '(635) 942-1042', 'Ap #335-9176 Nostra, Street', 'tellus.faucibus.leo@estNunc.net', 'Male'),
(5, 'Morgan', '5587', '(687) 595-0519', 'P.O. Box 996, 4127 Id, Av.', 'Phasellus.dapibus.quam@mauris.co.uk', 'Male'),
(6, 'Ralph', '8517', '(833) 228-8385', '540-5194 Amet, St.', 'non@dictumeu.co.uk', 'Male'),
(7, 'Daniel', '4785', '(627) 601-6939', 'P.O. Box 267, 3042 Mauris. Av.', 'Cum.sociis@fringilla.ca', 'Male'),
(8, 'Neil', '8391', '(582) 517-4057', '3161 Sollicitudin Ave', 'Donec@fermentumvelmauris.com', 'Male'),
(9, 'Stacy', '4914', '(710) 193-4647', '182-7783 Elementum, Road', 'parturient.montes.nascetur@aarcu.co.uk', 'Male'),
(10, 'Vivien', '5961', '(917) 493-6601', '333-3278 Nam Av.', 'inceptos@Inatpede.ca', 'Male'),
(11, 'Macey', '9701', '(136) 684-7460', 'P.O. Box 109, 8160 Consequat St.', 'Pellentesque@elit.ca', 'Female'),
(12, 'Noah', '1794', '(730) 652-6886', '3582 Venenatis St.', 'Fusce@enimCurabitur.edu', 'Female'),
(13, 'Sacha', '5152', '(259) 903-5999', 'P.O. Box 628, 1191 Orci Road', 'purus.in@turpisegestas.edu', 'Female'),
(14, 'Salvador', '9721', '(457) 528-4315', 'Ap #660-7088 Sed Rd.', 'consectetuer.adipiscing.elit@Duisa.com', 'Female'),
(15, 'Jemima', '8276', '(277) 214-9686', '545-1809 Nunc. Ave', 'Quisque.imperdiet.erat@interdumfeugiat.ca', 'Female'),
(16, 'Tucker', '7526', '(607) 165-4786', 'Ap #138-7982 Diam St.', 'condimentum.Donec.at@eueleifendnec.com', 'Female'),
(17, 'Kristen', '5032', '(551) 829-7101', '7264 Sed, Avenue', 'enim@faucibuslectus.edu', 'Female'),
(18, 'Ima', '9969', '(350) 526-4219', '471-549 Tempor Av.', 'amet.ornare.lectus@eu.com', 'Female'),
(19, 'Meghan', '5642', '(364) 372-5357', '4273 Egestas Road', 'Suspendisse.dui.Fusce@dolor.net', 'Female'),
(20, 'Peter', '4123', '(459) 465-5463', 'Ap #700-3919 Feugiat. Av.', 'posuere.at.velit@Quisqueimperdiet.ca', 'Female'),
(21, 'Jayme', '8152', '(363) 933-4123', 'Ap #930-7990 Lacus. Road', 'malesuada@imperdietnecleo.net', 'Male'),
(22, 'Cullen', '1611', '(754) 957-6517', '4607 Enim, Ave', 'at.velit@ridiculusmusAenean.com', 'Male'),
(23, 'Mara', '6776', '(262) 882-4910', 'P.O. Box 813, 9271 Odio Ave', 'dictum.mi@arcu.edu', 'Male'),
(24, 'Macey', '1200', '(978) 661-2422', 'Ap #950-1609 Feugiat Street', 'fringilla.ornare@sitamet.com', 'Male'),
(25, 'Dahlia', '3200', '(210) 862-1396', '661-7513 Magna. Av.', 'ornare@Vestibulum.co.uk', 'Male'),
(26, 'Tamara', '2273', '(269) 221-9571', '8535 Proin Road', 'non.enim@seddolorFusce.net', 'Male'),
(27, 'Elliott', '2435', '(453) 444-0664', 'P.O. Box 639, 9435 Libero. Street', 'neque.Morbi.quis@ipsumsodales.org', 'Male'),
(28, 'Hermione', '5981', '(996) 777-7979', '5603 Varius. Avenue', 'Suspendisse@Nullaaliquet.org', 'Male'),
(29, 'Ignatius', '3661', '(312) 851-2289', 'P.O. Box 945, 761 Molestie St.', 'at.pretium@tellus.edu', 'Male'),
(30, 'Evelyn', '8217', '(322) 854-2976', 'P.O. Box 998, 4321 Cum Road', 'mi@erat.co.uk', 'Male'),
(31, 'Keely', '6067', '(254) 482-3434', 'P.O. Box 969, 8132 Arcu St.', 'semper.auctor.Mauris@Aliquamgravida.net', 'Female'),
(32, 'Wade', '3330', '(806) 143-4352', '6055 Et Rd.', 'nonummy.ut@Nam.com', 'Female'),
(33, 'Keely', '9143', '(386) 210-8945', '3607 Duis Rd.', 'tempor.est.ac@miAliquamgravida.com', 'Female'),
(34, 'Lysandra', '5906', '(722) 982-1822', '6613 Sollicitudin Avenue', 'vulputate.dui.nec@nonummy.net', 'Female'),
(35, 'Hope', '1877', '(191) 241-9479', 'P.O. Box 598, 1099 Lectus Rd.', 'sem@Quisque.com', 'Female'),
(36, 'Hamish', '8611', '(873) 152-9307', 'Ap #933-6446 Magna Av.', 'malesuada.augue@imperdietdictummagna.net', 'Female'),
(37, 'Leo', '9420', '(938) 789-1003', '2403 Ornare, Avenue', 'vehicula.Pellentesque.tincidunt@faucibusMorbivehicula.edu', 'Female'),
(38, 'Imani', '9143', '(493) 213-9835', 'P.O. Box 582, 5529 Aliquam Rd.', 'massa@estmollisnon.org', 'Female'),
(39, 'Bertha', '5421', '(824) 588-6995', 'P.O. Box 936, 2164 Laoreet, Rd.', 'lacinia@augueacipsum.ca', 'Female'),
(40, 'Hamish', '9267', '(458) 250-0639', 'P.O. Box 276, 2890 Diam. Av.', 'accumsan@seddolor.net', 'Female'),
(41, 'Cynthia', '8509', '(945) 990-0336', '796-8277 Erat Road', 'Sed@aliquam.net', 'Male'),
(42, 'Naomi', '2884', '(392) 300-4715', '839-3250 Ac Road', 'conubia.nostra.per@pulvinararcuet.net', 'Male'),
(43, 'Nita', '4339', '(940) 132-6041', 'P.O. Box 984, 5202 Enim. Road', 'adipiscing.non@Uttinciduntorci.edu', 'Male'),
(44, 'Cara', '8020', '(133) 109-9853', '867-6007 Vulputate, Street', 'ac.feugiat@tinciduntnibh.ca', 'Male'),
(45, 'Stewart', '8189', '(673) 321-6872', 'P.O. Box 376, 4805 At Rd.', 'aliquet.metus@estac.net', 'Male'),
(46, 'Garrett', '2560', '(853) 459-1425', '331-8464 Arcu. Road', 'Donec.est@Maecenaslibero.edu', 'Male'),
(47, 'Yasir', '5856', '(646) 528-6877', 'Ap #872-2869 Suspendisse Road', 'pharetra@IntegermollisInteger.edu', 'Male'),
(48, 'Calvin', '1850', '(981) 623-8548', 'P.O. Box 448, 1457 Tincidunt. St.', 'rhoncus.Nullam.velit@risusDuisa.co.uk', 'Male'),
(49, 'Jared', '9170', '(891) 762-6155', 'P.O. Box 178, 1370 Nulla Avenue', 'eu.sem@luctusvulputatenisi.co.uk', 'Male'),
(50, 'Norman', '2193', '(389) 872-0588', '377-2882 Proin Road', 'quis@Maurisvelturpis.co.uk', 'Male'),
(51, 'Dominic', '8543', '(348) 139-4472', 'P.O. Box 152, 7981 Dapibus Av.', 'Fusce.fermentum@nulla.co.uk', 'Female'),
(52, 'Kadeem', '2406', '(291) 165-7893', '778-7683 Eu Rd.', 'aliquam@convallisest.com', 'Female'),
(53, 'Nissim', '7332', '(437) 515-6852', '8454 Nam Ave', 'orci@Vivamusmolestiedapibus.net', 'Female'),
(54, 'Merrill', '1622', '(748) 245-0096', '512-3278 Pellentesque Av.', 'sed.pede@a.ca', 'Female'),
(55, 'Michelle', '2362', '(774) 391-9313', 'Ap #840-7789 Dictum Road', 'Aliquam.auctor@scelerisqueduiSuspendisse.co.uk', 'Female'),
(56, 'Bernard', '1300', '(229) 222-2779', '520-485 Risus, Av.', 'lectus@Proin.co.uk', 'Female'),
(57, 'Kimberly', '2333', '(244) 713-4168', '2798 Egestas Avenue', 'tristique@velfaucibusid.edu', 'Female'),
(58, 'Nigel', '7712', '(539) 932-0037', 'P.O. Box 589, 7107 Ultrices St.', 'sed.tortor@orciluctus.org', 'Female'),
(59, 'Bell', '3903', '(862) 938-1486', 'Ap #572-2439 Risus Road', 'posuere.at.velit@nonjusto.ca', 'Female'),
(60, 'Yoshio', '7970', '(164) 396-2406', '6040 Nunc Street', 'Sed@disparturient.edu', 'Female'),
(61, 'Olivia', '1293', '(559) 935-5271', '7773 Elit, Road', 'consequat.auctor.nunc@vitae.edu', 'Male'),
(62, 'Rachel', '8988', '(414) 653-3158', '7436 Ipsum St.', 'dui.Fusce@arcuAliquamultrices.com', 'Male'),
(63, 'Hayden', '1864', '(960) 205-0958', '973-2792 Nulla Av.', 'posuere.vulputate@gravidanonsollicitudin.net', 'Male'),
(64, 'Felicia', '3573', '(824) 222-3755', '166-1917 Eros. Street', 'posuere@atlacusQuisque.edu', 'Male'),
(65, 'Raphael', '2645', '(234) 745-8797', '572-4119 Scelerisque Road', 'vitae.semper.egestas@Nullam.com', 'Male'),
(66, 'Leandra', '5271', '(537) 335-8978', '5338 Non, Road', 'a@sit.co.uk', 'Male'),
(67, 'Eugenia', '3922', '(223) 472-9635', '4694 Egestas Road', 'mus@et.co.uk', 'Male'),
(68, 'Summer', '7003', '(688) 998-2778', 'P.O. Box 843, 4705 Nam Av.', 'Proin.dolor.Nulla@Integer.ca', 'Male'),
(69, 'Dillon', '5389', '(574) 213-9045', 'Ap #918-8993 Tristique St.', 'vehicula@SuspendisseeleifendCras.com', 'Male'),
(70, 'Kimberley', '4176', '(766) 358-7862', '7871 Ullamcorper Street', 'interdum.ligula@adipiscinglobortisrisus.co.uk', 'Male'),
(71, 'Constance', '6533', '(439) 334-1073', 'P.O. Box 340, 5358 Sapien Avenue', 'dolor@elementum.net', 'Female'),
(72, 'Cynthia', '9628', '(391) 308-4469', 'Ap #385-3149 Vivamus Rd.', 'facilisi@facilisis.org', 'Female'),
(73, 'Jolene', '7908', '(792) 599-9776', '663-3798 Malesuada Road', 'rutrum@consequat.net', 'Female'),
(74, 'Melinda', '1752', '(407) 218-0005', '998-3836 Nec Road', 'consectetuer.adipiscing.elit@pedemalesuadavel.net', 'Female'),
(75, 'Jolene', '7582', '(702) 388-5761', 'Ap #677-9456 Egestas. Ave', 'lectus.quis.massa@Aliquam.com', 'Female'),
(76, 'Chadwick', '3638', '(448) 104-5477', 'P.O. Box 222, 5613 Magna. Street', 'dolor.sit.amet@eumetusIn.ca', 'Female'),
(77, 'Gwendolyn', '9718', '(844) 875-5060', 'Ap #562-273 Maecenas Rd.', 'odio@et.org', 'Female'),
(78, 'Sophia', '3523', '(115) 257-2930', '9750 Vehicula Ave', 'gravida.Praesent.eu@ametmassa.ca', 'Female'),
(79, 'Malik', '8982', '(991) 745-1237', 'P.O. Box 330, 3887 Commodo Av.', 'magna.Sed.eu@risusNuncac.com', 'Female'),
(80, 'Suki', '2067', '(286) 867-3696', 'Ap #354-9415 Metus. Av.', 'Cras@tincidunt.ca', 'Female'),
(81, 'Victor', '7397', '(552) 815-6185', '209-3432 Vel Street', 'molestie@Sed.edu', 'Male'),
(82, 'Chaney', '1947', '(499) 792-9485', 'Ap #752-6067 Risus. Rd.', 'netus.et@dolorelitpellentesque.co.uk', 'Male'),
(83, 'Beatrice', '4062', '(707) 613-7578', '482-657 Tempus Road', 'massa.Quisque.porttitor@aliquamiaculis.ca', 'Male'),
(84, 'Kaden', '4963', '(506) 129-3544', '4103 Habitant Rd.', 'Cras.eu@semut.com', 'Male'),
(85, 'Caldwell', '7308', '(485) 486-1198', '815 Orci. Rd.', 'mus@ullamcorperDuis.org', 'Male'),
(86, 'Dai', '3115', '(906) 252-9970', '999 Nec, St.', 'ullamcorper@tinciduntdui.edu', 'Male'),
(87, 'Justin', '2725', '(470) 638-3750', 'P.O. Box 905, 3012 At St.', 'cursus.et.eros@Etiamligula.ca', 'Male'),
(88, 'Joan', '4521', '(644) 582-6439', '3013 Nisi. Rd.', 'nibh@bibendum.com', 'Male'),
(89, 'Erin', '9938', '(690) 203-8160', 'P.O. Box 592, 4553 Dui. St.', 'tortor@laoreet.ca', 'Male'),
(90, 'Rosalyn', '7461', '(306) 742-5529', 'P.O. Box 485, 9600 Nulla St.', 'amet.luctus.vulputate@ametdiam.net', 'Male'),
(91, 'Upton', '1167', '(932) 907-5482', '1384 Eget Ave', 'semper.cursus@risusDonecnibh.net', 'Female'),
(92, 'Iris', '9149', '(946) 230-8229', 'P.O. Box 342, 1538 Ac Street', 'vitae.posuere.at@dolor.org', 'Female'),
(93, 'Noelle', '2534', '(282) 991-6031', 'P.O. Box 656, 5444 Lorem Avenue', 'vel.lectus.Cum@Duisdignissimtempor.co.uk', 'Female'),
(94, 'Chaney', '1960', '(998) 971-9479', '6401 Curabitur Avenue', 'convallis.ligula@posuerecubilia.org', 'Female'),
(95, 'Fleur', '3967', '(458) 230-7079', '118-4476 In Av.', 'dis@montesnasceturridiculus.net', 'Female'),
(96, 'Neil', '2074', '(571) 883-3805', 'Ap #702-3708 Euismod Av.', 'nulla.Integer.urna@tempuseuligula.edu', 'Female'),
(97, 'Quamar', '8457', '(661) 238-7612', 'P.O. Box 980, 3326 Scelerisque Rd.', 'eget@idmollis.org', 'Female'),
(98, 'Tobias', '6461', '(498) 622-5106', 'Ap #413-7337 Odio Av.', 'tristique.pellentesque.tellus@semconsequat.ca', 'Female'),
(99, 'Zena', '8270', '(250) 733-1634', 'Ap #308-1173 Nunc Road', 'sit.amet@magna.net', 'Female'),
(102, 'ami', '4456', '62 51 633 1111', 'JL.HM.NURUNG GG ATTAQWA RT.02', 'ami@gmail.com', 'Male');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `active`, `created_at`, `updated_at`) VALUES
(2, 'mbahrililmi2@gmail.com', '$2y$10$hLlois/U9X7hQS9gbpb3oe63C03fno5Xyj4mFLNTq0knKLFj/3ACu', 1, '2021-09-05 10:17:47', '2021-09-05 10:17:47'),
(3, 'm.bahrililmi.12@gmail.com', '$2y$10$rAYSSDWHQ4DkiC9bG5yxCe.WCj6/H1HFY4PUQt0sxnmBqMkYGHOJW', 1, '2021-09-06 10:51:13', '2021-09-06 10:51:13');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user_roles`
--

INSERT INTO `user_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 2, 1),
(2, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indeks untuk tabel `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id_2` (`user_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `students`
--
ALTER TABLE `students`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT untuk tabel `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
