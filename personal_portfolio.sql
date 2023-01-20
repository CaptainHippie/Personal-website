-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 21, 2023 at 03:35 AM
-- Server version: 10.6.11-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `personal_portfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_customuser'),
(26, 'Can change user', 7, 'change_customuser'),
(27, 'Can delete user', 7, 'delete_customuser'),
(28, 'Can view user', 7, 'view_customuser'),
(29, 'Can add person', 8, 'add_person'),
(30, 'Can change person', 8, 'change_person'),
(31, 'Can delete person', 8, 'delete_person'),
(32, 'Can view person', 8, 'view_person'),
(33, 'Can add skills', 9, 'add_skills'),
(34, 'Can change skills', 9, 'change_skills'),
(35, 'Can delete skills', 9, 'delete_skills'),
(36, 'Can view skills', 9, 'view_skills'),
(37, 'Can add about_ me_shorts', 10, 'add_about_me_shorts'),
(38, 'Can change about_ me_shorts', 10, 'change_about_me_shorts'),
(39, 'Can delete about_ me_shorts', 10, 'delete_about_me_shorts'),
(40, 'Can view about_ me_shorts', 10, 'view_about_me_shorts'),
(41, 'Can add education', 11, 'add_education'),
(42, 'Can change education', 11, 'change_education'),
(43, 'Can delete education', 11, 'delete_education'),
(44, 'Can view education', 11, 'view_education'),
(45, 'Can add achievements', 10, 'add_achievements'),
(46, 'Can change achievements', 10, 'change_achievements'),
(47, 'Can delete achievements', 10, 'delete_achievements'),
(48, 'Can view achievements', 10, 'view_achievements'),
(49, 'Can add project', 12, 'add_project'),
(50, 'Can change project', 12, 'change_project'),
(51, 'Can delete project', 12, 'delete_project'),
(52, 'Can view project', 12, 'view_project'),
(53, 'Can add project_ category', 13, 'add_project_category'),
(54, 'Can change project_ category', 13, 'change_project_category'),
(55, 'Can delete project_ category', 13, 'delete_project_category'),
(56, 'Can view project_ category', 13, 'view_project_category'),
(57, 'Can add project_slide', 14, 'add_project_slide'),
(58, 'Can change project_slide', 14, 'change_project_slide'),
(59, 'Can delete project_slide', 14, 'delete_project_slide'),
(60, 'Can view project_slide', 14, 'view_project_slide'),
(61, 'Can add experience', 15, 'add_experience'),
(62, 'Can change experience', 15, 'change_experience'),
(63, 'Can delete experience', 15, 'delete_experience'),
(64, 'Can view experience', 15, 'view_experience'),
(65, 'Can add blog', 16, 'add_blog'),
(66, 'Can change blog', 16, 'change_blog'),
(67, 'Can delete blog', 16, 'delete_blog'),
(68, 'Can view blog', 16, 'view_blog'),
(69, 'Can add social_ media', 17, 'add_social_media'),
(70, 'Can change social_ media', 17, 'change_social_media'),
(71, 'Can delete social_ media', 17, 'delete_social_media'),
(72, 'Can view social_ media', 17, 'view_social_media'),
(73, 'Can add social_ media_links', 18, 'add_social_media_links'),
(74, 'Can change social_ media_links', 18, 'change_social_media_links'),
(75, 'Can delete social_ media_links', 18, 'delete_social_media_links'),
(76, 'Can view social_ media_links', 18, 'view_social_media_links');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$6QFTGTgAvUuBAs2k8jDROM$fvatk9CTCoGhyAQE2fs+asuhtWfStLdVrEe5GT7ZCME=', '2023-01-19 18:17:48.000000', 1, 'neeraj', '', '', 'neerajvb@gmail.com', 1, 1, '2023-01-19 14:39:13.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-01-19 18:14:04.994566', '1', 'neeraj', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(2, '2023-01-19 18:17:07.899225', '2', 'NEERAJ V B', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-01-19 18:21:58.090962', '2', 'Neerajvibez', 3, '', 4, 1),
(4, '2023-01-19 18:22:09.378227', '1', 'neeraj', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 4, 1),
(5, '2023-01-19 18:23:24.431000', '1', 'Neeraj V B', 1, '[{\"added\": {}}]', 8, 1),
(6, '2023-01-19 18:26:06.910388', '1', 'Neeraj V B', 2, '[{\"changed\": {\"fields\": [\"Title\", \"Description\", \"About title\", \"About description\"]}}]', 8, 1),
(7, '2023-01-19 18:44:22.988257', '1', 'Neeraj V B', 2, '[{\"added\": {\"name\": \"about_ me_shorts\", \"object\": \"About_Me_shorts object (1)\"}}, {\"added\": {\"name\": \"about_ me_shorts\", \"object\": \"About_Me_shorts object (2)\"}}, {\"added\": {\"name\": \"skills\", \"object\": \"Skills object (1)\"}}, {\"added\": {\"name\": \"skills\", \"object\": \"Skills object (2)\"}}, {\"added\": {\"name\": \"skills\", \"object\": \"Skills object (3)\"}}]', 8, 1),
(8, '2023-01-19 18:55:38.291419', '1', 'Neeraj V B', 2, '[{\"changed\": {\"name\": \"skills\", \"object\": \"Skills object (1)\", \"fields\": [\"Percent\"]}}]', 8, 1),
(9, '2023-01-19 18:55:51.452152', '1', 'Neeraj V B', 2, '[{\"changed\": {\"name\": \"skills\", \"object\": \"Skills object (1)\", \"fields\": [\"Percent\"]}}]', 8, 1),
(10, '2023-01-20 03:31:34.703614', '1', 'Neeraj V B', 2, '[{\"added\": {\"name\": \"education\", \"object\": \"Education object (1)\"}}, {\"added\": {\"name\": \"education\", \"object\": \"Education object (2)\"}}]', 8, 1),
(11, '2023-01-20 07:50:48.885313', '1', 'Neeraj V B', 2, '[{\"changed\": {\"fields\": [\"Age\", \"Title\"]}}, {\"added\": {\"name\": \"achievements\", \"object\": \"Achievements object (3)\"}}, {\"added\": {\"name\": \"achievements\", \"object\": \"Achievements object (4)\"}}, {\"changed\": {\"name\": \"education\", \"object\": \"Education object (1)\", \"fields\": [\"Title\", \"Institution\", \"Description\"]}}, {\"changed\": {\"name\": \"education\", \"object\": \"Education object (2)\", \"fields\": [\"Title\", \"Institution\", \"Description\"]}}]', 8, 1),
(12, '2023-01-20 08:14:38.772260', '1', 'Neeraj V B', 2, '[{\"changed\": {\"fields\": [\"Date of birth\"]}}]', 8, 1),
(13, '2023-01-20 08:19:28.906317', '1', 'Neeraj V B', 2, '[{\"changed\": {\"fields\": [\"Phone\", \"Address\", \"Languages\", \"Freelance\"]}}]', 8, 1),
(14, '2023-01-20 08:26:33.157044', '1', 'Neeraj V B', 2, '[{\"changed\": {\"fields\": [\"Country\"]}}]', 8, 1),
(15, '2023-01-20 14:23:20.800996', '1', 'Project_Category object (1)', 1, '[{\"added\": {}}]', 13, 1),
(16, '2023-01-20 14:28:56.310645', '1', 'Neeraj V B-Website-FC Bayern Online', 1, '[{\"added\": {}}]', 12, 1),
(17, '2023-01-20 14:35:50.092847', '1', 'Neeraj V B-Website-FC Bayern Online', 2, '[{\"changed\": {\"fields\": [\"Preview text\", \"Source code text\", \"Source code link\"]}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (1)\"}}]', 12, 1),
(18, '2023-01-20 14:40:28.186709', '1', 'Neeraj V B-Website-FC Bayern Online', 2, '[{\"changed\": {\"fields\": [\"Preview pic\"]}}]', 12, 1),
(19, '2023-01-20 14:41:42.308066', '2', 'Videogame Mod', 1, '[{\"added\": {}}]', 13, 1),
(20, '2023-01-20 14:45:39.244730', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (2)\"}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (3)\"}}]', 12, 1),
(21, '2023-01-20 14:46:22.620880', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"changed\": {\"fields\": [\"Preview text\", \"Source code text\", \"Source code link\"]}}]', 12, 1),
(22, '2023-01-20 14:48:23.956336', '3', 'Neeraj V B-Videogame Mod-Ghillie Suit Overhaul', 1, '[{\"added\": {}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (4)\"}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (5)\"}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (6)\"}}]', 12, 1),
(23, '2023-01-20 15:12:21.910870', '1', 'Neeraj V B-Website-FC Bayern Online', 2, '[{\"changed\": {\"fields\": [\"Preview link\"]}}]', 12, 1),
(24, '2023-01-20 15:55:01.709391', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (3)\", \"fields\": [\"Category\"]}}]', 12, 1),
(25, '2023-01-20 15:56:50.939880', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"changed\": {\"fields\": [\"Preview pic\"]}}]', 12, 1),
(26, '2023-01-20 16:05:02.847873', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (7)\"}}]', 12, 1),
(27, '2023-01-20 16:17:02.777632', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (8)\"}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (9)\"}}]', 12, 1),
(28, '2023-01-20 16:17:23.556753', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (7)\", \"fields\": [\"Category\"]}}]', 12, 1),
(29, '2023-01-20 16:20:30.506133', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (3)\", \"fields\": [\"Category\"]}}, {\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (7)\", \"fields\": [\"Category\"]}}]', 12, 1),
(30, '2023-01-20 16:43:13.058556', '3', 'Neeraj V B-Videogame Mod-Ghillie Suit Overhaul', 2, '[{\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (4)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (5)\", \"fields\": [\"Image\"]}}, {\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (6)\", \"fields\": [\"Image\"]}}]', 12, 1),
(31, '2023-01-20 16:46:01.612205', '3', 'Neeraj V B-Videogame Mod-Ghillie Suit Overhaul', 2, '[{\"changed\": {\"fields\": [\"Preview pic\"]}}]', 12, 1),
(32, '2023-01-20 16:47:50.541932', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"changed\": {\"fields\": [\"Preview pic\"]}}, {\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (2)\", \"fields\": [\"Image\"]}}]', 12, 1),
(33, '2023-01-20 16:48:15.816877', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (7)\", \"fields\": [\"Video\"]}}, {\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (8)\", \"fields\": [\"Image\"]}}, {\"deleted\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (None)\"}}]', 12, 1),
(34, '2023-01-20 16:59:49.065442', '1', 'Neeraj V B-Website-FC Bayern Online', 2, '[{\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (10)\"}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (11)\"}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (12)\"}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (13)\"}}, {\"added\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (14)\"}}, {\"changed\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (1)\", \"fields\": [\"Image\"]}}]', 12, 1),
(35, '2023-01-20 17:21:34.447005', '2', 'Neeraj V B-Videogame Mod-Adjustable Scope View', 2, '[{\"deleted\": {\"name\": \"project_slide\", \"object\": \"Project_slide object (None)\"}}]', 12, 1),
(36, '2023-01-20 17:29:40.655989', '1', 'Neeraj V B', 2, '[{\"changed\": {\"fields\": [\"Google map embed src\"]}}]', 8, 1),
(37, '2023-01-20 17:54:05.979804', '1', 'Neeraj V B', 2, '[{\"changed\": {\"fields\": [\"Resume\"]}}]', 8, 1),
(38, '2023-01-20 18:15:01.632314', '1', 'Neeraj V B', 2, '[{\"changed\": {\"fields\": [\"Google map embed src\"]}}]', 8, 1),
(39, '2023-01-20 18:58:37.405298', '1', 'Neeraj V B', 2, '[{\"added\": {\"name\": \"experience\", \"object\": \"Experience object (1)\"}}]', 8, 1),
(40, '2023-01-20 19:00:21.740688', '1', 'Neeraj V B', 2, '[{\"changed\": {\"name\": \"experience\", \"object\": \"Experience object (1)\", \"fields\": [\"Ongoing\"]}}]', 8, 1),
(41, '2023-01-20 19:02:12.481899', '1', 'Neeraj V B', 2, '[{\"changed\": {\"name\": \"experience\", \"object\": \"Experience object (1)\", \"fields\": [\"Ongoing\"]}}, {\"changed\": {\"name\": \"education\", \"object\": \"Education object (2)\", \"fields\": [\"Ongoing\"]}}]', 8, 1),
(42, '2023-01-20 19:38:16.473263', '1', 'Blog object (1)', 1, '[{\"added\": {}}]', 16, 1),
(43, '2023-01-20 19:40:40.924944', '1', 'Neeraj V B-What Role Does Big Data Have on the Deep Web?', 2, '[{\"changed\": {\"fields\": [\"Banner image url\"]}}]', 16, 1),
(44, '2023-01-20 21:20:21.902185', '1', 'Social_Media object (1)', 1, '[{\"added\": {}}]', 17, 1),
(45, '2023-01-20 21:20:42.973728', '2', 'Social_Media object (2)', 1, '[{\"added\": {}}]', 17, 1),
(46, '2023-01-20 21:21:02.862440', '3', 'Social_Media object (3)', 1, '[{\"added\": {}}]', 17, 1),
(47, '2023-01-20 21:21:29.599663', '4', 'Social_Media object (4)', 1, '[{\"added\": {}}]', 17, 1),
(48, '2023-01-20 21:21:44.140684', '5', 'Social_Media object (5)', 1, '[{\"added\": {}}]', 17, 1),
(49, '2023-01-20 21:21:59.244773', '6', 'Social_Media object (6)', 1, '[{\"added\": {}}]', 17, 1),
(50, '2023-01-20 21:22:12.250172', '7', 'Social_Media object (7)', 1, '[{\"added\": {}}]', 17, 1),
(51, '2023-01-20 21:22:24.824998', '8', 'Social_Media object (8)', 1, '[{\"added\": {}}]', 17, 1),
(52, '2023-01-20 21:22:37.475874', '9', 'Social_Media object (9)', 1, '[{\"added\": {}}]', 17, 1),
(53, '2023-01-20 21:22:50.917309', '10', 'Social_Media object (10)', 1, '[{\"added\": {}}]', 17, 1),
(54, '2023-01-20 21:23:05.422163', '11', 'Social_Media object (11)', 1, '[{\"added\": {}}]', 17, 1),
(55, '2023-01-20 21:30:26.273939', '1', 'Neeraj V B', 2, '[{\"added\": {\"name\": \"social_ media_links\", \"object\": \"Neeraj V B-YouTube\"}}, {\"added\": {\"name\": \"social_ media_links\", \"object\": \"Neeraj V B-Github\"}}, {\"added\": {\"name\": \"social_ media_links\", \"object\": \"Neeraj V B-LinkedIn\"}}, {\"added\": {\"name\": \"social_ media_links\", \"object\": \"Neeraj V B-Instagram\"}}, {\"added\": {\"name\": \"social_ media_links\", \"object\": \"Neeraj V B-Facebook\"}}, {\"added\": {\"name\": \"social_ media_links\", \"object\": \"Neeraj V B-Telegram\"}}]', 8, 1),
(56, '2023-01-20 21:33:19.163542', '1', 'Neeraj V B', 2, '[{\"added\": {\"name\": \"social_ media_links\", \"object\": \"Neeraj V B-Snapchat\"}}]', 8, 1),
(57, '2023-01-20 22:04:09.326325', '1', 'Neeraj V B-Website-FC Bayern Online', 2, '[{\"changed\": {\"fields\": [\"Priority\"]}}]', 12, 1),
(58, '2023-01-20 22:04:20.980258', '3', 'Neeraj V B-Videogame Mod-Ghillie Suit Overhaul', 2, '[{\"changed\": {\"fields\": [\"Priority\"]}}]', 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(10, 'main', 'achievements'),
(16, 'main', 'blog'),
(7, 'main', 'customuser'),
(11, 'main', 'education'),
(15, 'main', 'experience'),
(8, 'main', 'person'),
(12, 'main', 'project'),
(13, 'main', 'project_category'),
(14, 'main', 'project_slide'),
(9, 'main', 'skills'),
(17, 'main', 'social_media'),
(18, 'main', 'social_media_links'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-19 14:38:46.026692'),
(2, 'auth', '0001_initial', '2023-01-19 14:38:46.150814'),
(3, 'admin', '0001_initial', '2023-01-19 14:38:46.179899'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-01-19 14:38:46.184762'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-19 14:38:46.189739'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-01-19 14:38:46.215375'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-01-19 14:38:46.231354'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-01-19 14:38:46.241201'),
(9, 'auth', '0004_alter_user_username_opts', '2023-01-19 14:38:46.245855'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-01-19 14:38:46.260559'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-01-19 14:38:46.262147'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-01-19 14:38:46.270235'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-01-19 14:38:46.283185'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-01-19 14:38:46.293836'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-01-19 14:38:46.307203'),
(16, 'auth', '0011_update_proxy_permissions', '2023-01-19 14:38:46.317587'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-01-19 14:38:46.330766'),
(18, 'sessions', '0001_initial', '2023-01-19 14:38:46.344129'),
(19, 'main', '0001_initial', '2023-01-19 18:12:09.777396'),
(20, 'main', '0002_alter_customuser_about_description_and_more', '2023-01-19 18:16:55.654644'),
(21, 'main', '0003_person_delete_customuser', '2023-01-19 18:21:36.557611'),
(22, 'main', '0004_skills_about_me_shorts', '2023-01-19 18:42:53.130045'),
(23, 'main', '0005_education', '2023-01-20 03:28:27.067469'),
(24, 'main', '0006_remove_person_about_banner_and_more', '2023-01-20 07:41:45.444571'),
(25, 'main', '0007_rename_about_me_shorts_achievements', '2023-01-20 07:44:50.399253'),
(26, 'main', '0008_remove_person_age_person_address_and_more', '2023-01-20 08:14:15.438338'),
(27, 'main', '0009_person_country', '2023-01-20 08:26:04.908828'),
(28, 'main', '0010_person_resume', '2023-01-20 08:46:49.896039'),
(29, 'main', '0011_project_project_category_person_google_map_embed_src_and_more', '2023-01-20 14:02:04.466813'),
(30, 'main', '0012_alter_person_resume_alter_project_slide_video', '2023-01-20 16:47:43.564552'),
(31, 'main', '0013_experience', '2023-01-20 18:53:40.795743'),
(32, 'main', '0014_alter_education_title_alter_experience_title_and_more', '2023-01-20 18:56:42.625194'),
(33, 'main', '0015_education_ongoing', '2023-01-20 19:01:54.273439'),
(34, 'main', '0016_project_slide_video_poster', '2023-01-20 19:06:49.916908'),
(35, 'main', '0017_blog', '2023-01-20 19:31:19.910789'),
(36, 'main', '0018_blog_slug', '2023-01-20 19:36:35.515025'),
(37, 'main', '0019_blog_banner_image_url_alter_blog_date', '2023-01-20 19:39:25.338989'),
(38, 'main', '0020_social_media_social_media_links', '2023-01-20 21:18:59.804338'),
(39, 'main', '0021_project_priority', '2023-01-20 21:39:51.842588');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0d38ri84qgrd7k90u1m5f0bu08loncok', '.eJxVjDsOwjAQBe_iGln-fyjpOYNlr3dxADlSnFSIu0OkFNC-mXkvlvK2trQNXNJU2ZlJdvrdSoYH9h3Ue-63mcPc12UqfFf4QQe_zhWfl8P9O2h5tG9NEFAWAUYbCgqDEgpAu2ijzgokeRc0Oq9FMUZUo6QOgixZq6TxkSx7fwDOzTa1:1pIZTw:5AOQnyjtDj1eGCLeNHQLExwDa0zPzu05IzaX9bGEnQs', '2023-02-02 18:17:48.415756');

-- --------------------------------------------------------

--
-- Table structure for table `main_achievements`
--

CREATE TABLE `main_achievements` (
  `id` bigint(20) NOT NULL,
  `title` varchar(30) DEFAULT NULL,
  `description` varchar(60) DEFAULT NULL,
  `who_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_achievements`
--

INSERT INTO `main_achievements` (`id`, `title`, `description`, `who_id`) VALUES
(1, '04', 'Projects Completed.', 1),
(2, '02', 'Satisfied Clients.', 1),
(3, '0', 'Years of Experience', 1),
(4, '0', 'Awards Won', 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_blog`
--

CREATE TABLE `main_blog` (
  `id` bigint(20) NOT NULL,
  `title` varchar(150) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `banner_image` varchar(100) DEFAULT NULL,
  `content` longtext NOT NULL,
  `who_id` bigint(20) NOT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `banner_image_url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_blog`
--

INSERT INTO `main_blog` (`id`, `title`, `date`, `tags`, `banner_image`, `content`, `who_id`, `slug`, `banner_image_url`) VALUES
(1, 'What Role Does Big Data Have on the Deep Web?', '2023-01-20', 'Data Science, Machine Learning, Big Data', '', '<p>The Deep Web is a concept that few people understand. Even fewer people recognize the role that big data plays in shaping it.</p>\r\n\r\n<p>However, one thing is certain: advances in big data technology have played a huge role in driving changes in the deep web. It is a good idea for database developers, programmers, online businesses and other Internet technology professionals to learn about the impact that new developments in big data have had on both the surface web and deep web. Keep reading to learn more.</p>\r\n\r\n<h2>How Does Big Data Affect the Deep Web and Surface Web?</h2>\r\n\r\n<p>Surface, deep and dark webs are all names given to places on the internet that either do or don&rsquo;t come up in standard search engines like Google, Yahoo, or Bing. They all rely on big data in various ways.</p>\r\n\r\n<p>Sometimes they&rsquo;re confused for each other, and quite often, people use at least two of them without realizing it. Here&rsquo;s a breakdown of the three, followed by the reasons they&rsquo;re separated and ways to use the deep web and the impact that big data has had on all of them.</p>\r\n\r\n<h3>Impact of Big Data on The Surface Web</h3>\r\n\r\n<p>When people search online for answers, advice, or something to buy, they use a search engine. These applications crawl the internet looking for helpful sites. Search engines rely on big data to archive online content for users searching for it. As Dummies&nbsp;<a href=\"https://www.dummies.com/article/technology/information-technology/data-science/big-data/big-data-and-search-engines-141227/\" rel=\"noreferrer noopener\" target=\"_blank\">points out in this article</a>:</p>\r\n\r\n<p>&ldquo;Big data has made possible the development of highly capable online search engines.&rdquo;</p>\r\n\r\n<p>They get their results from public domain websites known as the surface web.</p>\r\n\r\n<p>It&rsquo;s suggested that the surface web is only 1% of what&rsquo;s online, and the deep and dark webs make up the rest.</p>\r\n\r\n<h3>The Deep Web</h3>\r\n\r\n<p>The term deep web refers to the part of the internet that doesn&rsquo;t appear in surface web search engine results. It&rsquo;s home to paywalled sites, private databases, and the dark web.</p>\r\n\r\n<p>Many people access the deep web daily without even realizing it. Any sites that can only be accessed by subscription or a paywall don&rsquo;t usually appear in surface web searches and are therefore considered deep web.</p>\r\n\r\n<p>There&rsquo;s potentially more information available via the deep web. People go there when they don&rsquo;t have success on the surface web.</p>\r\n\r\n<p>For example, a&nbsp;<a href=\"https://unmask.com/blog/deep-web-background-check/\" rel=\"noreferrer noopener\" target=\"_blank\">deep web background check</a>&nbsp;may provide more information on a person than a surface internet search will.</p>\r\n\r\n<p>Data stored on the deep web has an additional layer of privacy than information found on the surface web.</p>\r\n\r\n<h3>Impact of Big Data on The Dark Web</h3>\r\n\r\n<p>Often mistaken for each other, the deep and dark webs aren&rsquo;t the same. We wrote this article to help people learn more about&nbsp;<a href=\"https://www.smartdatacollective.com/what-dark-web-and-isn-t/\">what the dark web is and isn&rsquo;t</a>. The Deep Web merely refers to information that is not easily accessed by the public through search engines. It can include portals on your insurance company&rsquo;s website or your private Facebook messages.</p>\r\n\r\n<p>While the contents of the deep web are legitimate and noncriminal, the same can&rsquo;t be said for the dark web.&nbsp;<a href=\"https://www.techtarget.com/whatis/definition/dark-web\" rel=\"noreferrer noopener\" target=\"_blank\">The dark web</a>&nbsp;is a marketplace of illegal activity. Drugs, trafficking, weapons, smuggling rings, and the black market for stolen credit cards can all be found here. Hackers, cyber-bots, and other nefarious activities are also housed here.</p>\r\n\r\n<p>Big data technology is helping improve the state of the Deep Web. A growing number of companies are using tools like WEIDJ to extract data. Science Direct covered this in their article&nbsp;<a href=\"https://www.sciencedirect.com/science/article/pii/S1877050919321635\" rel=\"noreferrer noopener\" target=\"_blank\">Web Data Extraction Approach for Deep Web using WEIDJ</a>. This helps companies leverage the benefits of data science to provide better service to their customers using the deep web.</p>\r\n\r\n<p>Big data is also helping improve the state of the Dark Web as well. Datanami states that&nbsp;<a href=\"https://www.datanami.com/2015/09/01/the-dark-web-gets-a-little-brighter-thanks-to-big-data/\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">big data has helped make the dark web brighter</a>&nbsp;by fighting online crime.</p>\r\n\r\n<h3>Why is Data on The Surface and Deep Web Separated?</h3>\r\n\r\n<p>The surface web and the deep web are separate for two productive reasons: for the amount of irrelevant content and for privacy.</p>\r\n\r\n<h4>Relevance</h4>\r\n\r\n<p>Most surface web searches provide results from relevant sites. The&nbsp;<a href=\"https://www.smartdatacollective.com/15177/\">deep web</a>&nbsp;contains loads of private, non-indexed, and irrelevant information that are not useful for others. If all of this data were made available, search engines would take a lot longer and provide less accurate results. Even advances in big data would not allow them to crawl all of this information.</p>\r\n\r\n<p>Naturally, the reason for the dark web to be separated is that it is illegal, and only like-minded individuals will ever want to access those sites. As such, the dark web is intentionally hidden and only accessible by specific tools.</p>\r\n\r\n<h4>Privacy</h4>\r\n\r\n<p>The reason for log-ins and&nbsp;<a href=\"https://www.admonsters.com/everything-you-always-wanted-to-know-about-paywalls/\" rel=\"noreferrer noopener\" target=\"_blank\">paywalls</a>&nbsp;is to protect information or make it only available to the correct people.</p>\r\n\r\n<p>Search engine results won&rsquo;t look for nor display this information. This makes things like a person&rsquo;s Netflix viewing habits or stock-market investments private only to them.</p>\r\n\r\n<p>The deep web contains a lot of secure personal information that nobody wants to be made public. It&rsquo;s these pages that hackers like to hunt for.</p>\r\n\r\n<h3>How Does Someone Access the Deep Web</h3>\r\n\r\n<p>As mentioned, many people access the deep web daily. Anyone who logs into a Gmail account or signs into a news site like the&nbsp;<em>Wall Street Journal</em>&nbsp;or&nbsp;<em>Medium</em>&nbsp;is accessing pages only found on the deep web.</p>\r\n\r\n<p>The difference is that a person already needs to know the URL of the site they want to access.</p>\r\n\r\n<p>Some surface websites connect with the deep web and may pay a subscription fee to access more data. This activity is beneficial when trying to get additional information on a person that&rsquo;s not freely available on the surface web.</p>\r\n\r\n<h4>The Deep Web is For Everybody</h4>\r\n\r\n<p>While the surface web is what most people use every day, many also access the deep web. It&rsquo;s secure, personal information, only accessed via logging in, that doesn&rsquo;t appear in search engine results.</p>\r\n\r\n<p>Don&rsquo;t confuse the deep web for the dark web. The deep web is freely available to anyone with log-in details; it&rsquo;s noncriminal and legitimate. The dark web needs to be accessed by purpose-made tools and is criminal in nature.</p>\r\n\r\n<h4>Big Data is Key to the Evolution of the Deep Web and Surface Web</h4>\r\n\r\n<p>Both the Deep Web and surface web rely heavily on advances in big data technology. A growing number of online businesses are finding innovative ways to leverage big data to their benefit. They will find new ways to mine data and make it available to help customers using deep web and surface web content.</p>', 1, 'what-role-does-big-data-have-on-the-deep-web', 'https://www.smartdatacollective.com/wp-content/uploads/2023/01/shutterstock_680075002.jpg.webp');

-- --------------------------------------------------------

--
-- Table structure for table `main_education`
--

CREATE TABLE `main_education` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `institution` varchar(200) DEFAULT NULL,
  `who_id` bigint(20) NOT NULL,
  `description` longtext DEFAULT NULL,
  `ongoing` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_education`
--

INSERT INTO `main_education` (`id`, `title`, `start_date`, `end_date`, `institution`, `who_id`, `description`, `ongoing`) VALUES
(1, 'Graduation', '2017-06-01', '2021-10-01', 'University of Calicut', 1, 'Graduated 3-year program Bachelor of Science in Applied Physics at the KKTM Govt. College, University of Calicut', 0),
(2, 'PostGraduation', '2021-12-21', '2023-08-01', 'University of Calicut', 1, 'Currently ongoing a 2-year PostGraduate program in Master of Vocation in Software Development(Data Analytics) at CCSIT Peramangalam, University of Calicut. Scheduled to be completed by July 2023', 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_experience`
--

CREATE TABLE `main_experience` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `ongoing` tinyint(1) NOT NULL,
  `company` varchar(200) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `who_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_experience`
--

INSERT INTO `main_experience` (`id`, `title`, `start_date`, `end_date`, `ongoing`, `company`, `description`, `who_id`) VALUES
(1, 'Certified Specialist in Machine Learning & Artifcial Intelligence', '2023-01-03', '2023-06-30', 1, 'ICT Academy of Kerala', 'Currently ongoing a longterm training and Internship program conducted by ICT Academy of Kerala', 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_person`
--

CREATE TABLE `main_person` (
  `id` bigint(20) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `name_display` varchar(100) DEFAULT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `address` longtext DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `freelance` varchar(5) NOT NULL,
  `languages` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `country` varchar(2) DEFAULT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `google_map_embed_src` varchar(800) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_person`
--

INSERT INTO `main_person` (`id`, `first_name`, `last_name`, `email`, `name_display`, `profile_pic`, `title`, `description`, `slug`, `address`, `date_of_birth`, `freelance`, `languages`, `phone`, `country`, `resume`, `google_map_embed_src`) VALUES
(1, 'Neeraj', 'V B', 'neerajvb@gmail.com', 'Neeraj V B', 'user_images/passport_size_2.png', 'Software Engineer', 'I\'m a PostGraduate student skilled in the art of Software and Web development. I am available for part time job/internship in IT that would get me experienced with the Industry. I\'m naturally good with computers and a very quick learner. I\'m hardworking and passionate about my work and would stop at nothing till I reach my target', 'neerajvb', 'Vennikkal House, P. O. Valapad - 680567', '1998-04-27', 'yes', 'English, Malayalam', '+917558882214', 'IN', 'resumes/resume_new.pdf', 'https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d567.6710485548597!2d76.1138969634998!3d10.397746507079708!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1674238412285!5m2!1sen!2sin');

-- --------------------------------------------------------

--
-- Table structure for table `main_project`
--

CREATE TABLE `main_project` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `preview_pic` varchar(100) NOT NULL,
  `client` varchar(50) DEFAULT NULL,
  `languages` varchar(200) DEFAULT NULL,
  `preview_text` varchar(50) DEFAULT NULL,
  `preview_link` varchar(200) DEFAULT NULL,
  `source_code_text` varchar(50) DEFAULT NULL,
  `source_code_link` varchar(200) DEFAULT NULL,
  `category_id` bigint(20) NOT NULL,
  `who_id` bigint(20) NOT NULL,
  `priority` smallint(5) UNSIGNED NOT NULL CHECK (`priority` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_project`
--

INSERT INTO `main_project` (`id`, `title`, `preview_pic`, `client`, `languages`, `preview_text`, `preview_link`, `source_code_text`, `source_code_link`, `category_id`, `who_id`, `priority`) VALUES
(1, 'FC Bayern Online', 'project_images/fc_bayern_home.png', NULL, 'Python, Javascript, HTML&CSS', 'FC Bayern Online', 'https://vibez.pythonanywhere.com', 'Github', 'https://github.com/CaptainHippie/FC-bayern-website', 1, 1, 1),
(2, 'Adjustable Scope View', 'project_images/Hnet-image_6.gif', NULL, 'Lua, LaTex', 'Moddb', 'https://www.moddb.com/mods/stalker-anomaly/addons/adjustable-scope-view', 'Github', 'https://github.com/CaptainHippie/Adjustable-scopes', 2, 1, 2),
(3, 'Ghillie Suit Overhaul', 'project_images/thumbnail.1.png', 'STALKER community', 'Lua, LaTex, XML', 'Moddb', 'https://www.moddb.com/mods/stalker-anomaly/addons/ghillie-suit-overhaul-v10', 'Github', 'https://github.com/CaptainHippie/Ghillie-suit-overhaul', 2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_project_category`
--

CREATE TABLE `main_project_category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_project_category`
--

INSERT INTO `main_project_category` (`id`, `name`, `icon`) VALUES
(1, 'Website', NULL),
(2, 'Videogame Mod', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_project_slide`
--

CREATE TABLE `main_project_slide` (
  `id` bigint(20) NOT NULL,
  `category` varchar(10) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `youtube_embed_link` varchar(600) DEFAULT NULL,
  `video` varchar(100) DEFAULT NULL,
  `project_id` bigint(20) NOT NULL,
  `video_poster` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_project_slide`
--

INSERT INTO `main_project_slide` (`id`, `category`, `image`, `youtube_embed_link`, `video`, `project_id`, `video_poster`) VALUES
(1, 'img', 'project_images/bayern_roster.png', NULL, '', 1, NULL),
(2, 'img', 'project_images/Scope_FOV_mcm.png', NULL, '', 2, NULL),
(3, 'yt_link', '', 'https://www.youtube.com/embed/HWq-2f3zXOY', '', 2, NULL),
(4, 'img', 'project_images/Ghillie_inventory.jpg', NULL, '', 3, NULL),
(5, 'img', 'project_images/Ghillie_hidden.jpg', NULL, '', 3, NULL),
(6, 'img', 'project_images/Ghillie_hidden_2.jpg', NULL, '', 3, NULL),
(7, 'vid', '', NULL, 'videos/S2_resized.mp4', 2, NULL),
(10, 'img', 'project_images/bayern_schalke_stats.png', NULL, '', 1, NULL),
(11, 'img', 'project_images/bayern_ticket_booking.png', NULL, '', 1, NULL),
(12, 'img', 'project_images/bayern_gnabry_home.png', NULL, '', 1, NULL),
(13, 'img', 'project_images/bayern_shop.png', NULL, '', 1, NULL),
(14, 'img', 'project_images/bayern_shop_product.png', NULL, '', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `main_skills`
--

CREATE TABLE `main_skills` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `percent` smallint(5) UNSIGNED DEFAULT NULL CHECK (`percent` >= 0),
  `who_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_skills`
--

INSERT INTO `main_skills` (`id`, `title`, `percent`, `who_id`) VALUES
(1, 'Python', 70, 1),
(2, 'Django', 60, 1),
(3, 'PHP', 43, 1);

-- --------------------------------------------------------

--
-- Table structure for table `main_social_media`
--

CREATE TABLE `main_social_media` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `icon_class` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_social_media`
--

INSERT INTO `main_social_media` (`id`, `name`, `icon_class`) VALUES
(1, 'Facebook', 'facebook'),
(2, 'Twitter', 'twitter'),
(3, 'YouTube', 'youtube'),
(4, 'Dribbble', 'dribbble'),
(5, 'Github', 'github'),
(6, 'LinkedIn', 'linkedin'),
(7, 'Snapchat', 'snapchat'),
(8, 'Instagram', 'instagram'),
(9, 'WhatsApp', 'whatsapp'),
(10, 'Telegram', 'telegram'),
(11, 'Skype', 'skype');

-- --------------------------------------------------------

--
-- Table structure for table `main_social_media_links`
--

CREATE TABLE `main_social_media_links` (
  `id` bigint(20) NOT NULL,
  `link` varchar(150) DEFAULT NULL,
  `platform_id` bigint(20) NOT NULL,
  `who_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_social_media_links`
--

INSERT INTO `main_social_media_links` (`id`, `link`, `platform_id`, `who_id`) VALUES
(1, 'https://www.youtube.com/channel/UCbRd3_qoNIlDVKhIp1H-Nvg', 3, 1),
(2, 'https://github.com/CaptainHippie', 5, 1),
(3, 'https://www.linkedin.com/in/neeraj-v-b-a23a1344/', 6, 1),
(4, 'https://www.instagram.com/neerajvibez/', 8, 1),
(5, 'https://www.facebook.com/neeraj.vb.5', 1, 1),
(6, 'https://t.me/neerajvibez', 10, 1),
(7, 'https://www.snapchat.com/add/neerajvibez', 7, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `main_achievements`
--
ALTER TABLE `main_achievements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_about_me_shorts_who_id_428d41b8_fk_main_person_id` (`who_id`);

--
-- Indexes for table `main_blog`
--
ALTER TABLE `main_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_blog_who_id_ec4f898e_fk_main_person_id` (`who_id`);

--
-- Indexes for table `main_education`
--
ALTER TABLE `main_education`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_education_who_id_279a5612_fk_main_person_id` (`who_id`);

--
-- Indexes for table `main_experience`
--
ALTER TABLE `main_experience`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_experience_who_id_3cde8f81_fk_main_person_id` (`who_id`);

--
-- Indexes for table `main_person`
--
ALTER TABLE `main_person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `main_person_slug_0115968a` (`slug`);

--
-- Indexes for table `main_project`
--
ALTER TABLE `main_project`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_project_category_id_72946cd2_fk_main_project_category_id` (`category_id`),
  ADD KEY `main_project_who_id_6f75f93f_fk_main_person_id` (`who_id`);

--
-- Indexes for table `main_project_category`
--
ALTER TABLE `main_project_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_project_slide`
--
ALTER TABLE `main_project_slide`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_project_slide_project_id_ad73f9cf_fk_main_project_id` (`project_id`);

--
-- Indexes for table `main_skills`
--
ALTER TABLE `main_skills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_skills_who_id_56f95f51_fk_main_person_id` (`who_id`);

--
-- Indexes for table `main_social_media`
--
ALTER TABLE `main_social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `main_social_media_links`
--
ALTER TABLE `main_social_media_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `main_social_media_li_platform_id_fa9e2c14_fk_main_soci` (`platform_id`),
  ADD KEY `main_social_media_links_who_id_da44718b_fk_main_person_id` (`who_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `main_achievements`
--
ALTER TABLE `main_achievements`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `main_blog`
--
ALTER TABLE `main_blog`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_education`
--
ALTER TABLE `main_education`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_experience`
--
ALTER TABLE `main_experience`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_person`
--
ALTER TABLE `main_person`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `main_project`
--
ALTER TABLE `main_project`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_project_category`
--
ALTER TABLE `main_project_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_project_slide`
--
ALTER TABLE `main_project_slide`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `main_skills`
--
ALTER TABLE `main_skills`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `main_social_media`
--
ALTER TABLE `main_social_media`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `main_social_media_links`
--
ALTER TABLE `main_social_media_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `main_achievements`
--
ALTER TABLE `main_achievements`
  ADD CONSTRAINT `main_about_me_shorts_who_id_428d41b8_fk_main_person_id` FOREIGN KEY (`who_id`) REFERENCES `main_person` (`id`);

--
-- Constraints for table `main_blog`
--
ALTER TABLE `main_blog`
  ADD CONSTRAINT `main_blog_who_id_ec4f898e_fk_main_person_id` FOREIGN KEY (`who_id`) REFERENCES `main_person` (`id`);

--
-- Constraints for table `main_education`
--
ALTER TABLE `main_education`
  ADD CONSTRAINT `main_education_who_id_279a5612_fk_main_person_id` FOREIGN KEY (`who_id`) REFERENCES `main_person` (`id`);

--
-- Constraints for table `main_experience`
--
ALTER TABLE `main_experience`
  ADD CONSTRAINT `main_experience_who_id_3cde8f81_fk_main_person_id` FOREIGN KEY (`who_id`) REFERENCES `main_person` (`id`);

--
-- Constraints for table `main_project`
--
ALTER TABLE `main_project`
  ADD CONSTRAINT `main_project_category_id_72946cd2_fk_main_project_category_id` FOREIGN KEY (`category_id`) REFERENCES `main_project_category` (`id`),
  ADD CONSTRAINT `main_project_who_id_6f75f93f_fk_main_person_id` FOREIGN KEY (`who_id`) REFERENCES `main_person` (`id`);

--
-- Constraints for table `main_project_slide`
--
ALTER TABLE `main_project_slide`
  ADD CONSTRAINT `main_project_slide_project_id_ad73f9cf_fk_main_project_id` FOREIGN KEY (`project_id`) REFERENCES `main_project` (`id`);

--
-- Constraints for table `main_skills`
--
ALTER TABLE `main_skills`
  ADD CONSTRAINT `main_skills_who_id_56f95f51_fk_main_person_id` FOREIGN KEY (`who_id`) REFERENCES `main_person` (`id`);

--
-- Constraints for table `main_social_media_links`
--
ALTER TABLE `main_social_media_links`
  ADD CONSTRAINT `main_social_media_li_platform_id_fa9e2c14_fk_main_soci` FOREIGN KEY (`platform_id`) REFERENCES `main_social_media` (`id`),
  ADD CONSTRAINT `main_social_media_links_who_id_da44718b_fk_main_person_id` FOREIGN KEY (`who_id`) REFERENCES `main_person` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
