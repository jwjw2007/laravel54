/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50553
Source Host           : 127.0.0.1:3306
Source Database       : laravel54

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-08-25 13:56:01
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permissions`;
CREATE TABLE `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permissions
-- ----------------------------
INSERT INTO `admin_permissions` VALUES ('1', 'system', '系统管理', '2017-08-25 13:23:40', '2017-08-25 13:23:40');
INSERT INTO `admin_permissions` VALUES ('2', 'post', '文章管理', '2017-08-25 13:24:03', '2017-08-25 13:24:03');
INSERT INTO `admin_permissions` VALUES ('3', 'topic', '专题管理', '2017-08-25 13:24:16', '2017-08-25 13:24:16');
INSERT INTO `admin_permissions` VALUES ('4', 'notice', '通知管理', '2017-08-25 13:24:25', '2017-08-25 13:24:25');

-- ----------------------------
-- Table structure for `admin_permission_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_permission_role`;
CREATE TABLE `admin_permission_role` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_permission_role
-- ----------------------------
INSERT INTO `admin_permission_role` VALUES ('1', '1', '1', null, null);
INSERT INTO `admin_permission_role` VALUES ('2', '1', '2', null, null);
INSERT INTO `admin_permission_role` VALUES ('3', '1', '3', null, null);
INSERT INTO `admin_permission_role` VALUES ('4', '1', '4', null, null);
INSERT INTO `admin_permission_role` VALUES ('5', '2', '2', null, null);
INSERT INTO `admin_permission_role` VALUES ('6', '3', '3', null, null);
INSERT INTO `admin_permission_role` VALUES ('7', '4', '4', null, null);

-- ----------------------------
-- Table structure for `admin_roles`
-- ----------------------------
DROP TABLE IF EXISTS `admin_roles`;
CREATE TABLE `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_roles
-- ----------------------------
INSERT INTO `admin_roles` VALUES ('1', 'sys-manager', '系统管理员', '2017-08-25 13:25:06', '2017-08-25 13:25:06');
INSERT INTO `admin_roles` VALUES ('2', 'post-manager', '文章管理员', '2017-08-25 13:31:22', '2017-08-25 13:31:22');
INSERT INTO `admin_roles` VALUES ('3', 'topic-manager', '专题管理', '2017-08-25 13:54:53', '2017-08-25 13:54:53');
INSERT INTO `admin_roles` VALUES ('4', 'notice-manager', '通知管理', '2017-08-25 13:55:13', '2017-08-25 13:55:13');

-- ----------------------------
-- Table structure for `admin_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_role_user`;
CREATE TABLE `admin_role_user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_role_user
-- ----------------------------
INSERT INTO `admin_role_user` VALUES ('1', '1', '2', null, null);
INSERT INTO `admin_role_user` VALUES ('2', '2', '3', null, null);
INSERT INTO `admin_role_user` VALUES ('3', '1', '1', null, null);
INSERT INTO `admin_role_user` VALUES ('4', '2', '1', null, null);
INSERT INTO `admin_role_user` VALUES ('5', '2', '4', null, null);
INSERT INTO `admin_role_user` VALUES ('6', '3', '1', null, null);
INSERT INTO `admin_role_user` VALUES ('7', '4', '1', null, null);

-- ----------------------------
-- Table structure for `admin_users`
-- ----------------------------
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of admin_users
-- ----------------------------
INSERT INTO `admin_users` VALUES ('1', 'admin', '$2y$10$JpYn6lDGXO1HQKh2qGJl2.FUcr5b4Y/TD6sGEaFwUaVO2auQtn6ee', '2017-08-15 11:17:37', '2017-08-15 11:17:37');
INSERT INTO `admin_users` VALUES ('2', 'sb1', '$2y$10$e7.4qkx/HsGWd8c6kAf/N.M08Rm07kdby4bEXdNdjDNJTToNNwC82', '2017-08-16 14:56:00', '2017-08-16 14:56:00');
INSERT INTO `admin_users` VALUES ('3', 'sb123', '$2y$10$50VBZk3ZlcGagViM9mOAuenL87kVqBj1Jzv1/dY0GDeDwAJQ3Yp/i', '2017-08-16 14:56:09', '2017-08-16 14:56:09');
INSERT INTO `admin_users` VALUES ('4', 'aaa', '$2y$10$Fhl7AjPiOi/kNMShmt5Fgeea/5hS5OrfSbxzf9VVzMnZ8/Sj/xYii', '2017-08-16 14:57:30', '2017-08-16 14:57:30');
INSERT INTO `admin_users` VALUES ('5', 'bvbbb', '$2y$10$zfiFMWBrCRN7dRZLedUzZenDsYH4XxWOZh43oWOPQArBfRI5kq6c.', '2017-08-16 14:57:36', '2017-08-16 14:57:36');
INSERT INTO `admin_users` VALUES ('6', 'dddd', '$2y$10$atwTzXrZmXcBYqlh9NMx7OYrG3F2Zo3jaeky7q6DgWpRN1kC3XMfO', '2017-08-16 14:57:43', '2017-08-16 14:57:43');
INSERT INTO `admin_users` VALUES ('7', 'ddffff', '$2y$10$f4LNSFXADI1StvjTz4ORieGnhSpFNwmg7NhHopJ8nNuQE/neSsYaS', '2017-08-16 14:57:49', '2017-08-16 14:57:49');
INSERT INTO `admin_users` VALUES ('8', 'ffff', '$2y$10$pE5KfFWiXplnvXy3kTCsI.HiqtPtglZG2S6EcW48BncaSSygDgq4q', '2017-08-16 14:57:54', '2017-08-16 14:57:54');
INSERT INTO `admin_users` VALUES ('9', 'aaaaaaaa', '$2y$10$ga9IRoksg/PFHU4ZFmRXSOD5GQV3Aq4KxCZBx8xEm37pn2HD0cNEm', '2017-08-16 14:58:01', '2017-08-16 14:58:01');
INSERT INTO `admin_users` VALUES ('10', 'rrrr', '$2y$10$xp7G0NAyIikmaVLslUeyHulf4/BN0yVK5gmgz5fn0zRibz96AmU8.', '2017-08-16 14:58:07', '2017-08-16 14:58:07');
INSERT INTO `admin_users` VALUES ('11', 'ffff21321', '$2y$10$u/QZ/IhiCjWYk4yDCYBSk.Sbe6MRtvtyAOoi1HZqwlNHStUrY5a5S', '2017-08-16 14:58:16', '2017-08-16 14:58:16');

-- ----------------------------
-- Table structure for `comments`
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='//评论表';

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '22', '2', 'ffffffffffff', '2017-08-01 22:12:46', '2017-08-01 22:12:46');
INSERT INTO `comments` VALUES ('2', '22', '2', 'gggggggggggggg', '2017-08-01 22:27:53', '2017-08-01 22:27:53');
INSERT INTO `comments` VALUES ('3', '22', '2', 'ddddddddddddddddd', '2017-08-01 22:27:56', '2017-08-01 22:27:56');
INSERT INTO `comments` VALUES ('4', '6', '2', 'hjhhhhhhhhhhhhhhhhhhhhhhhhh', '2017-08-02 10:15:06', '2017-08-02 10:15:06');
INSERT INTO `comments` VALUES ('5', '3', '1', 'gggggggggggggggg', '2017-08-02 17:01:25', '2017-08-02 17:01:25');
INSERT INTO `comments` VALUES ('6', '3', '1', 'sssssssssssssssssssssssssssssssssssss', '2017-08-02 17:01:30', '2017-08-02 17:01:30');

-- ----------------------------
-- Table structure for `fans`
-- ----------------------------
DROP TABLE IF EXISTS `fans`;
CREATE TABLE `fans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fan_id` int(11) NOT NULL,
  `star_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='//关注表';

-- ----------------------------
-- Records of fans
-- ----------------------------
INSERT INTO `fans` VALUES ('11', '2', '1', '2017-08-04 15:34:49', '2017-08-04 15:34:49');
INSERT INTO `fans` VALUES ('12', '1', '2', '2017-08-05 22:24:12', '2017-08-05 22:24:12');
INSERT INTO `fans` VALUES ('13', '3', '2', '2017-08-07 15:16:15', '2017-08-07 15:16:15');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_07_26_143716_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('4', '2017_08_01_212242_create_comments_table', '2');
INSERT INTO `migrations` VALUES ('5', '2017_08_02_084755_create_zans_table', '3');
INSERT INTO `migrations` VALUES ('6', '2017_08_04_111823_create_fans_table', '4');
INSERT INTO `migrations` VALUES ('7', '2017_08_05_224038_create_topic_table', '5');
INSERT INTO `migrations` VALUES ('8', '2017_08_05_224104_create_post_topic_table', '5');
INSERT INTO `migrations` VALUES ('9', '2017_08_15_100148_create_admin_users_table', '6');
INSERT INTO `migrations` VALUES ('10', '2017_08_17_140815_alter_posts_table', '7');
INSERT INTO `migrations` VALUES ('11', '2017_08_18_151536_create_permission_and_roles', '8');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='//文章表';

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'title1', 'This is first title', '2', '2017-07-26 23:01:03', '2017-07-26 23:01:03', '0');
INSERT INTO `posts` VALUES ('2', 'Aperiam quo alias accusantium quidem consequatur aut.', 'Voluptatem impedit quia est. Et beatae vero vel aspernatur eaque. Quibusdam a facilis reiciendis ut sequi at voluptatem. Quam non accusantium temporibus iure natus temporibus blanditiis.\nFuga et sed amet quam et. Veritatis eius maxime maiores aperiam nisi nam et. Modi possimus temporibus qui pariatur autem magni non. Impedit animi qui veniam molestiae beatae autem veniam beatae.', '2', '2017-07-27 13:56:24', '2017-08-17 14:51:54', '-1');
INSERT INTO `posts` VALUES ('3', 'Omnis inventore eveniet magnam non.', 'Quia ut cupiditate ab beatae quis quia voluptatem. Reiciendis quam aspernatur cupiditate id quidem doloremque. Et non delectus accusantium sint nostrum. Dolor qui omnis a alias.\nProvident non iste dignissimos quis. Esse nulla pariatur qui deleniti soluta nihil ut. Et reiciendis enim voluptas sit dolorem est ut.\nVoluptatum exercitationem neque rem sit. Dicta optio aut qui fugiat libero atque eaque. Quis eius et laborum.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('4', 'Vitae odit atque aut ea.', 'Qui quaerat provident et aut. Hic est nisi sit ea. Facere quaerat iste iure officiis.\nNecessitatibus aut eaque veniam vel atque. Veniam est ipsa earum illum itaque. Voluptatibus maxime totam nobis in quisquam. Tempore quos earum animi saepe magni.\nId molestiae voluptatibus cumque ut aut recusandae quis. Eos blanditiis exercitationem eum. Libero odit dicta suscipit sed molestias. Ea ut error eos debitis natus.', '2', '2017-07-27 13:56:24', '2017-08-17 14:51:58', '-1');
INSERT INTO `posts` VALUES ('5', 'Et eum repudiandae aspernatur commodi assumenda quae et.', 'Est voluptatem blanditiis occaecati blanditiis est odio alias. Temporibus nam et sed tempora facilis ipsum iure dolorem. Qui ipsa rem voluptates atque magnam eos est. At sit tempore molestias nam inventore molestiae. Ut commodi corrupti dolor similique.\nVero fugiat perspiciatis aliquam vitae quasi quis. Ipsum est similique asperiores occaecati. Debitis earum quibusdam iure quibusdam voluptatem nostrum excepturi. Quis incidunt unde blanditiis error earum hic.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('6', 'Tenetur consectetur et sunt minus sed commodi.', 'Dicta voluptatum facere et commodi aut. Eaque ullam doloribus aut fugiat veritatis accusantium et. A deserunt vitae quae vitae. Voluptatum qui ea est corrupti fugit ea consequatur.\nVoluptatem est debitis est ipsam ut distinctio provident. In dolores aut aut ut.\nNecessitatibus ut voluptate porro quo dicta nulla nisi sint. Qui blanditiis ullam incidunt dolores recusandae. Non et molestias nesciunt ea earum ipsum.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('7', 'Aut enim id error dolorem vel exercitationem.', 'Rerum voluptates voluptates ullam tempora sunt praesentium est. Voluptates hic sed ut qui recusandae quis et.\nNon facere ratione dicta reiciendis ex dolores repellendus. Voluptatum ipsam libero quia quia saepe.\nDeserunt ut autem explicabo omnis fugiat quis. Aliquam dolorem corporis sed deleniti ut porro velit sunt. In et enim enim magni in nisi inventore.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('8', 'Officia optio error mollitia rem.', 'Animi quis consequatur cumque. Necessitatibus eligendi itaque corporis. Saepe eum iure ea consequatur maiores.\nReprehenderit pariatur natus porro tenetur. Et veniam cum id eius aut sed aut. Quo in animi libero aut dicta. Quisquam qui sit eos ut.\nNecessitatibus asperiores a non eligendi consequuntur qui. Modi repellendus nisi excepturi ut omnis accusamus ex et. Quas eius rerum molestias maxime magni tempora nemo.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('9', 'Sed beatae nemo quod qui ut.', 'Architecto qui sint illum provident voluptas impedit eius. Quis possimus ipsum tempore ea. Odio doloremque sunt commodi animi aut ullam quos aut.\nSaepe molestiae quo occaecati eos vel. Quis nulla voluptas quibusdam adipisci exercitationem quia corporis. Eveniet voluptatem eaque quasi numquam est aut. Consequatur rem et cupiditate ut at harum.\nOmnis rem non aliquid dolorum. Qui placeat animi quisquam nobis magnam.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('10', 'Repellat a consequatur excepturi architecto.', 'Exercitationem consequuntur corporis nisi. Expedita aperiam rerum architecto ad explicabo. Delectus corporis provident reprehenderit. Dolores pariatur tempore velit maxime et perspiciatis numquam fugiat.\nEos asperiores omnis porro sunt aspernatur. Cum quo quasi consequuntur culpa maiores ipsam. Rerum deleniti aut deserunt nam voluptatibus inventore explicabo. Atque deleniti similique et similique.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('11', 'Dolores itaque nulla quia facere est.', 'Magnam exercitationem suscipit possimus architecto aut temporibus aliquid debitis. Consequatur nihil ut quos fugiat iusto. Sed qui et quasi rem eaque eius. Voluptate omnis voluptas vero numquam iure voluptas sed.\nEa doloremque ut quis repellat sed quisquam. Qui qui dolorum ad soluta porro deleniti. Id quaerat veniam rem tempora placeat.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('12', 'Temporibus excepturi aliquid voluptatem aliquam et esse quas consequuntur.', 'Sunt tempora dolor debitis et molestiae. Ducimus nemo dolorum et sed dolore fugit tempore. Fugit tempore blanditiis at labore et architecto et. Dolores possimus eligendi dolorem eius tempore.\nVel enim occaecati sunt nobis optio est tempore. Vitae non nihil at.\nQui voluptatum aut officia numquam architecto iusto quisquam possimus. Est aspernatur id tempore rem veritatis sint excepturi.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('13', 'Voluptate itaque labore tempore ea est molestias.', 'Voluptatem quos nihil id corporis officiis et inventore. Quaerat ex eius cumque qui quia nihil eligendi fugiat.\nCommodi eveniet illo corrupti est enim sint. Repellendus velit et quisquam deserunt veniam magnam. Soluta sequi aut velit quidem.\nUt non consequatur natus molestiae. Minima laboriosam ut ut aspernatur velit possimus. Quisquam voluptate et ut quia distinctio. Porro sed reprehenderit optio veritatis animi quo.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('14', 'Ab sit amet nobis et.', 'Ducimus provident numquam aut officia est quod. Porro quia est molestiae praesentium soluta nihil accusantium suscipit. Vitae tenetur voluptate veritatis amet voluptas id harum distinctio. Unde porro qui corporis sequi ipsam.\nTotam cum dolor praesentium minus sit delectus illo aliquam. Necessitatibus corporis corrupti quibusdam similique. Quaerat distinctio nulla facere odit non nemo. Et minus reiciendis voluptatibus.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('16', 'Dolorem enim voluptatem cupiditate veritatis tempore et.', 'Quas similique consequatur voluptatem modi minima placeat ut. Voluptas molestias sed dolores et autem. Et ratione earum autem et possimus possimus quaerat. Molestiae quia aut blanditiis doloribus rerum. Velit excepturi voluptatem doloribus amet aut rerum.\nAutem neque mollitia commodi in sed aut. Vel aut provident a et repellendus. Fugit sit voluptas architecto. Voluptatem aut ullam sit.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('17', 'Sint nobis consequatur animi officiis unde quas.', 'Tempora occaecati veritatis non a adipisci ut. Voluptatem totam quis a molestias rerum nostrum. Soluta occaecati laborum neque quod voluptatibus. Illo laudantium perspiciatis animi veniam. Numquam voluptatem doloremque qui qui in pariatur aut tempora.\nNobis amet fugit et et ullam quibusdam non. Minima fuga autem dolorem ad id dolore maiores. Ex odit et asperiores neque quaerat sint quia eos.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('18', 'Velit ut sed ut sint et autem.', 'Consectetur minus quia eum magni. Rerum consequuntur magni quasi dignissimos ut occaecati fuga. Repudiandae ullam et sed.\nIpsa fugit accusamus natus sit repellendus natus accusantium eaque. Magnam dolores quisquam harum excepturi aut. Nihil et aut nihil aut reiciendis necessitatibus laborum nulla.\nEt voluptatem aut vitae. Provident iure distinctio temporibus assumenda a dolores aspernatur. Et enim et laudantium incidunt fuga. Deleniti sit deserunt ut possimus beatae.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('19', 'Ad neque esse ea omnis ut.', 'Cumque ab voluptas omnis corporis dicta accusamus non. Nulla itaque officiis minima animi quia quos. Soluta consequatur repellat harum omnis et rerum sapiente nihil.\nFacilis provident sit quia quia. Amet voluptatem culpa ipsam fuga nam. Repellat rerum eum dolor eos. Similique sint provident sunt id ipsum id assumenda.\nNemo et sequi aut ut aliquid. Cupiditate aut et qui voluptatem sit quod perferendis sed. Fugiat eius fuga sit ut repellat.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('20', 'Ducimus possimus qui totam reprehenderit non magni ex.', 'Vel magni voluptatum consequuntur sapiente. Nisi consequatur magni culpa saepe. Odio maxime est doloribus tempore consectetur iste magnam corporis.\nRatione tenetur aut et aut. Dolor eius qui accusamus aut unde laborum. Blanditiis corporis esse ea beatae qui. Eum labore eos illum rem accusamus ea quia.\nIn omnis repellendus error non unde aperiam. Expedita a harum qui et. Consequuntur dolorem debitis soluta dolores. Exercitationem unde ut in sunt est rerum ipsa accusantium.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('21', 'Sint est voluptatem cumque eveniet.', 'Et repudiandae assumenda odio nesciunt laudantium. Earum enim aliquid iure qui ipsa. Aliquam et quas dolores dolores. Enim est magnam modi rem quia ea.\nVoluptates numquam atque odio ut. Occaecati sed sit beatae porro porro molestias tenetur. Rerum a quia et. Aliquid sunt veritatis quis fugit.\nLaborum quam quam soluta consectetur ut quia eius. Consequuntur omnis et quasi inventore dolores. Magni sit aliquam placeat ut magnam cupiditate quasi.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24', '0');
INSERT INTO `posts` VALUES ('22', 'dddddddddd', '<p>dddddddddddddddddddddddddd<br></p>', '1', '2017-07-28 09:02:22', '2017-08-17 14:51:35', '-1');
INSERT INTO `posts` VALUES ('26', '《麦田里的守望者》：独处的时候，藏着一个人最真实的人品', '<p>醒来后，霍尔顿先是给萨丽·海斯打电话，希望她能出来和自己约会。老萨丽同样是一个假模假式的姑娘。在答应霍尔顿一起看日戏后，老萨丽开始吹嘘什么“有个哈佛学生拼命追她，日日夜夜给她打电话”，还有“什么西点军校的，也为她寻死觅活”，同时呢似乎是为了显示矜持她又总是迟到。</p><p>这样的场景是不是在我们现实的生活里也很常见？一场社交，即使只有两个人，也是一次惊心动魄的博弈。通过迟到，通过显示自己有多么的受欢迎，来获得交际时的主动权。当然，如果约会双方确实存在地位差异（除去社会地位差异还有基本的邀请者地位低于被邀请者），那么这样的放肆将被忍受。</p><p>虽然我们的霍尔顿在心里想着，“一时间，我真想叫她忘记看日戏这回事吧”。可是霍尔顿也有自己的苦衷，他太无聊又太烦闷了，因而他不得不和假模假式的老萨丽约会。</p><p>“我跟老萨丽定好约会后，就从床上起来，穿好衣服，然后整理行装。我离开房间之前又往窗外望了望，看看所有那些心理变态的家伙都在干什么，可他们全把窗帘拉上了。到了早上，他们都成了谦虚谨慎的君子淑女。”</p><p>儒家思想里有个概念叫“慎独”，说的是一个人一旦独自待在一个没有其他人的地方，便会容易会想要做一些肮脏龌蹉，或者其他不被传统伦理道德接受的事情。因而君子要“慎独”，既要尽可能避免自己处于那种境地，也要在处于“独”境时保持警惕。</p><p>黑夜，独居，以及人的思想，这些都是“独”境，值得我们警惕。那么，霍尔顿接下来会有什么样的行为呢？</p><br><br><p>作者：麦家理想谷</p><br><p>链接：http://www.jianshu.com/p/333660fd41c9</p><br><p>來源：简书</p><br><p>著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。</p><p><br></p>', '2', '2017-08-04 09:59:32', '2017-08-04 09:59:32', '-1');

-- ----------------------------
-- Table structure for `post_topics`
-- ----------------------------
DROP TABLE IF EXISTS `post_topics`;
CREATE TABLE `post_topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `topic_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='//文章专题关系表';

-- ----------------------------
-- Records of post_topics
-- ----------------------------
INSERT INTO `post_topics` VALUES ('1', '12', '1', '2017-08-06 18:38:35', '2017-08-06 18:38:35');
INSERT INTO `post_topics` VALUES ('2', '14', '1', '2017-08-06 18:38:35', '2017-08-06 18:38:35');
INSERT INTO `post_topics` VALUES ('3', '21', '1', '2017-08-06 18:38:40', '2017-08-06 18:38:40');
INSERT INTO `post_topics` VALUES ('4', '22', '1', '2017-08-06 18:38:40', '2017-08-06 18:38:40');
INSERT INTO `post_topics` VALUES ('5', '14', '2', '2017-08-06 18:38:49', '2017-08-06 18:38:49');
INSERT INTO `post_topics` VALUES ('6', '16', '2', '2017-08-06 18:38:49', '2017-08-06 18:38:49');
INSERT INTO `post_topics` VALUES ('7', '17', '2', '2017-08-06 18:38:49', '2017-08-06 18:38:49');
INSERT INTO `post_topics` VALUES ('8', '22', '2', '2017-08-06 18:39:16', '2017-08-06 18:39:16');

-- ----------------------------
-- Table structure for `topics`
-- ----------------------------
DROP TABLE IF EXISTS `topics`;
CREATE TABLE `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='//专题表';

-- ----------------------------
-- Records of topics
-- ----------------------------
INSERT INTO `topics` VALUES ('1', '旅游', '2017-08-05 23:17:03', '2017-08-05 23:17:06');
INSERT INTO `topics` VALUES ('2', '经典', '2017-08-05 23:17:30', '2017-08-05 23:17:33');
INSERT INTO `topics` VALUES ('3', 'aaaaa', '2017-08-05 23:19:24', '2017-08-05 23:19:24');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='//用户表';

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'aaa', 'aaa@qq.com', '$2y$10$NzOS8J76rwKzANM0PgYFVeNBo.anL5iFo68wuiCz7TS56YqATSwDK', 'FO2Sz7IT9atiKnh8VAbz0PhN8Tr2ikBfbQC7zS4s6hQjMnMO2gMZAf0AFF4r', '2017-07-31 13:56:12', '2017-07-31 13:56:12');
INSERT INTO `users` VALUES ('2', 'qqq', 'qqq@qq.com', '$2y$10$BJQGELktbstTvGT2GEaK/Oczx95HwJWsMy5yT9aRJAjVzYtQxusQu', 'zwSYdZrdWgkEvvkvJAoLKrat27g5kWx5MpngaigPTKiGQ9d9f6TqlWD7qkqb', '2017-08-01 08:54:26', '2017-08-01 08:54:26');
INSERT INTO `users` VALUES ('3', '111', '111@qq.com', '$2y$10$1mUFNZyLiMUdoNSb0xp7pOPdWyRgydC/q9CksDYdhEWo816bzqKPO', null, '2017-08-07 15:14:39', '2017-08-07 15:14:39');

-- ----------------------------
-- Table structure for `zans`
-- ----------------------------
DROP TABLE IF EXISTS `zans`;
CREATE TABLE `zans` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='//赞表';

-- ----------------------------
-- Records of zans
-- ----------------------------
INSERT INTO `zans` VALUES ('3', '22', '2', '2017-08-02 09:13:53', '2017-08-02 09:13:53');
INSERT INTO `zans` VALUES ('4', '2', '2', '2017-08-02 09:14:00', '2017-08-02 09:14:00');
INSERT INTO `zans` VALUES ('5', '6', '2', '2017-08-02 10:15:08', '2017-08-02 10:15:08');
INSERT INTO `zans` VALUES ('6', '3', '1', '2017-08-02 17:01:20', '2017-08-02 17:01:20');
INSERT INTO `zans` VALUES ('7', '22', '1', '2017-08-02 17:43:17', '2017-08-02 17:43:17');
INSERT INTO `zans` VALUES ('9', '2', '3', '2017-08-07 15:14:56', '2017-08-07 15:14:56');
INSERT INTO `zans` VALUES ('12', '10', '3', '2017-08-07 15:17:07', '2017-08-07 15:17:07');
INSERT INTO `zans` VALUES ('11', '5', '3', '2017-08-07 15:15:14', '2017-08-07 15:15:14');
