/*
Navicat MySQL Data Transfer

Source Server         : 127
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : laravel54

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2017-08-01 22:31:42
*/

SET FOREIGN_KEY_CHECKS=0;

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES ('1', '22', '2', 'ffffffffffff', '2017-08-01 22:12:46', '2017-08-01 22:12:46');
INSERT INTO `comments` VALUES ('2', '22', '2', 'gggggggggggggg', '2017-08-01 22:27:53', '2017-08-01 22:27:53');
INSERT INTO `comments` VALUES ('3', '22', '2', 'ddddddddddddddddd', '2017-08-01 22:27:56', '2017-08-01 22:27:56');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2017_07_26_143716_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('4', '2017_08_01_212242_create_comments_table', '2');

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', 'title1', 'This is first title', '2', '2017-07-26 23:01:03', '2017-07-26 23:01:03');
INSERT INTO `posts` VALUES ('2', 'Aperiam quo alias accusantium quidem consequatur aut.', 'Voluptatem impedit quia est. Et beatae vero vel aspernatur eaque. Quibusdam a facilis reiciendis ut sequi at voluptatem. Quam non accusantium temporibus iure natus temporibus blanditiis.\nFuga et sed amet quam et. Veritatis eius maxime maiores aperiam nisi nam et. Modi possimus temporibus qui pariatur autem magni non. Impedit animi qui veniam molestiae beatae autem veniam beatae.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('3', 'Omnis inventore eveniet magnam non.', 'Quia ut cupiditate ab beatae quis quia voluptatem. Reiciendis quam aspernatur cupiditate id quidem doloremque. Et non delectus accusantium sint nostrum. Dolor qui omnis a alias.\nProvident non iste dignissimos quis. Esse nulla pariatur qui deleniti soluta nihil ut. Et reiciendis enim voluptas sit dolorem est ut.\nVoluptatum exercitationem neque rem sit. Dicta optio aut qui fugiat libero atque eaque. Quis eius et laborum.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('4', 'Vitae odit atque aut ea.', 'Qui quaerat provident et aut. Hic est nisi sit ea. Facere quaerat iste iure officiis.\nNecessitatibus aut eaque veniam vel atque. Veniam est ipsa earum illum itaque. Voluptatibus maxime totam nobis in quisquam. Tempore quos earum animi saepe magni.\nId molestiae voluptatibus cumque ut aut recusandae quis. Eos blanditiis exercitationem eum. Libero odit dicta suscipit sed molestias. Ea ut error eos debitis natus.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('5', 'Et eum repudiandae aspernatur commodi assumenda quae et.', 'Est voluptatem blanditiis occaecati blanditiis est odio alias. Temporibus nam et sed tempora facilis ipsum iure dolorem. Qui ipsa rem voluptates atque magnam eos est. At sit tempore molestias nam inventore molestiae. Ut commodi corrupti dolor similique.\nVero fugiat perspiciatis aliquam vitae quasi quis. Ipsum est similique asperiores occaecati. Debitis earum quibusdam iure quibusdam voluptatem nostrum excepturi. Quis incidunt unde blanditiis error earum hic.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('6', 'Tenetur consectetur et sunt minus sed commodi.', 'Dicta voluptatum facere et commodi aut. Eaque ullam doloribus aut fugiat veritatis accusantium et. A deserunt vitae quae vitae. Voluptatum qui ea est corrupti fugit ea consequatur.\nVoluptatem est debitis est ipsam ut distinctio provident. In dolores aut aut ut.\nNecessitatibus ut voluptate porro quo dicta nulla nisi sint. Qui blanditiis ullam incidunt dolores recusandae. Non et molestias nesciunt ea earum ipsum.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('7', 'Aut enim id error dolorem vel exercitationem.', 'Rerum voluptates voluptates ullam tempora sunt praesentium est. Voluptates hic sed ut qui recusandae quis et.\nNon facere ratione dicta reiciendis ex dolores repellendus. Voluptatum ipsam libero quia quia saepe.\nDeserunt ut autem explicabo omnis fugiat quis. Aliquam dolorem corporis sed deleniti ut porro velit sunt. In et enim enim magni in nisi inventore.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('8', 'Officia optio error mollitia rem.', 'Animi quis consequatur cumque. Necessitatibus eligendi itaque corporis. Saepe eum iure ea consequatur maiores.\nReprehenderit pariatur natus porro tenetur. Et veniam cum id eius aut sed aut. Quo in animi libero aut dicta. Quisquam qui sit eos ut.\nNecessitatibus asperiores a non eligendi consequuntur qui. Modi repellendus nisi excepturi ut omnis accusamus ex et. Quas eius rerum molestias maxime magni tempora nemo.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('9', 'Sed beatae nemo quod qui ut.', 'Architecto qui sint illum provident voluptas impedit eius. Quis possimus ipsum tempore ea. Odio doloremque sunt commodi animi aut ullam quos aut.\nSaepe molestiae quo occaecati eos vel. Quis nulla voluptas quibusdam adipisci exercitationem quia corporis. Eveniet voluptatem eaque quasi numquam est aut. Consequatur rem et cupiditate ut at harum.\nOmnis rem non aliquid dolorum. Qui placeat animi quisquam nobis magnam.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('10', 'Repellat a consequatur excepturi architecto.', 'Exercitationem consequuntur corporis nisi. Expedita aperiam rerum architecto ad explicabo. Delectus corporis provident reprehenderit. Dolores pariatur tempore velit maxime et perspiciatis numquam fugiat.\nEos asperiores omnis porro sunt aspernatur. Cum quo quasi consequuntur culpa maiores ipsam. Rerum deleniti aut deserunt nam voluptatibus inventore explicabo. Atque deleniti similique et similique.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('11', 'Dolores itaque nulla quia facere est.', 'Magnam exercitationem suscipit possimus architecto aut temporibus aliquid debitis. Consequatur nihil ut quos fugiat iusto. Sed qui et quasi rem eaque eius. Voluptate omnis voluptas vero numquam iure voluptas sed.\nEa doloremque ut quis repellat sed quisquam. Qui qui dolorum ad soluta porro deleniti. Id quaerat veniam rem tempora placeat.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('12', 'Temporibus excepturi aliquid voluptatem aliquam et esse quas consequuntur.', 'Sunt tempora dolor debitis et molestiae. Ducimus nemo dolorum et sed dolore fugit tempore. Fugit tempore blanditiis at labore et architecto et. Dolores possimus eligendi dolorem eius tempore.\nVel enim occaecati sunt nobis optio est tempore. Vitae non nihil at.\nQui voluptatum aut officia numquam architecto iusto quisquam possimus. Est aspernatur id tempore rem veritatis sint excepturi.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('13', 'Voluptate itaque labore tempore ea est molestias.', 'Voluptatem quos nihil id corporis officiis et inventore. Quaerat ex eius cumque qui quia nihil eligendi fugiat.\nCommodi eveniet illo corrupti est enim sint. Repellendus velit et quisquam deserunt veniam magnam. Soluta sequi aut velit quidem.\nUt non consequatur natus molestiae. Minima laboriosam ut ut aspernatur velit possimus. Quisquam voluptate et ut quia distinctio. Porro sed reprehenderit optio veritatis animi quo.', '2', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('14', 'Ab sit amet nobis et.', 'Ducimus provident numquam aut officia est quod. Porro quia est molestiae praesentium soluta nihil accusantium suscipit. Vitae tenetur voluptate veritatis amet voluptas id harum distinctio. Unde porro qui corporis sequi ipsam.\nTotam cum dolor praesentium minus sit delectus illo aliquam. Necessitatibus corporis corrupti quibusdam similique. Quaerat distinctio nulla facere odit non nemo. Et minus reiciendis voluptatibus.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('16', 'Dolorem enim voluptatem cupiditate veritatis tempore et.', 'Quas similique consequatur voluptatem modi minima placeat ut. Voluptas molestias sed dolores et autem. Et ratione earum autem et possimus possimus quaerat. Molestiae quia aut blanditiis doloribus rerum. Velit excepturi voluptatem doloribus amet aut rerum.\nAutem neque mollitia commodi in sed aut. Vel aut provident a et repellendus. Fugit sit voluptas architecto. Voluptatem aut ullam sit.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('17', 'Sint nobis consequatur animi officiis unde quas.', 'Tempora occaecati veritatis non a adipisci ut. Voluptatem totam quis a molestias rerum nostrum. Soluta occaecati laborum neque quod voluptatibus. Illo laudantium perspiciatis animi veniam. Numquam voluptatem doloremque qui qui in pariatur aut tempora.\nNobis amet fugit et et ullam quibusdam non. Minima fuga autem dolorem ad id dolore maiores. Ex odit et asperiores neque quaerat sint quia eos.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('18', 'Velit ut sed ut sint et autem.', 'Consectetur minus quia eum magni. Rerum consequuntur magni quasi dignissimos ut occaecati fuga. Repudiandae ullam et sed.\nIpsa fugit accusamus natus sit repellendus natus accusantium eaque. Magnam dolores quisquam harum excepturi aut. Nihil et aut nihil aut reiciendis necessitatibus laborum nulla.\nEt voluptatem aut vitae. Provident iure distinctio temporibus assumenda a dolores aspernatur. Et enim et laudantium incidunt fuga. Deleniti sit deserunt ut possimus beatae.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('19', 'Ad neque esse ea omnis ut.', 'Cumque ab voluptas omnis corporis dicta accusamus non. Nulla itaque officiis minima animi quia quos. Soluta consequatur repellat harum omnis et rerum sapiente nihil.\nFacilis provident sit quia quia. Amet voluptatem culpa ipsam fuga nam. Repellat rerum eum dolor eos. Similique sint provident sunt id ipsum id assumenda.\nNemo et sequi aut ut aliquid. Cupiditate aut et qui voluptatem sit quod perferendis sed. Fugiat eius fuga sit ut repellat.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('20', 'Ducimus possimus qui totam reprehenderit non magni ex.', 'Vel magni voluptatum consequuntur sapiente. Nisi consequatur magni culpa saepe. Odio maxime est doloribus tempore consectetur iste magnam corporis.\nRatione tenetur aut et aut. Dolor eius qui accusamus aut unde laborum. Blanditiis corporis esse ea beatae qui. Eum labore eos illum rem accusamus ea quia.\nIn omnis repellendus error non unde aperiam. Expedita a harum qui et. Consequuntur dolorem debitis soluta dolores. Exercitationem unde ut in sunt est rerum ipsa accusantium.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('21', 'Sint est voluptatem cumque eveniet.', 'Et repudiandae assumenda odio nesciunt laudantium. Earum enim aliquid iure qui ipsa. Aliquam et quas dolores dolores. Enim est magnam modi rem quia ea.\nVoluptates numquam atque odio ut. Occaecati sed sit beatae porro porro molestias tenetur. Rerum a quia et. Aliquid sunt veritatis quis fugit.\nLaborum quam quam soluta consectetur ut quia eius. Consequuntur omnis et quasi inventore dolores. Magni sit aliquam placeat ut magnam cupiditate quasi.', '1', '2017-07-27 13:56:24', '2017-07-27 13:56:24');
INSERT INTO `posts` VALUES ('22', 'dddddddddd', '<p>dddddddddddddddddddddddddd<br></p>', '1', '2017-07-28 09:02:22', '2017-07-28 09:02:22');

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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'aaa', 'aaa@qq.com', '$2y$10$NzOS8J76rwKzANM0PgYFVeNBo.anL5iFo68wuiCz7TS56YqATSwDK', '1UE7KqW67WQNzjvYvzsMsavLxNfyGATLGdhbRXCA8GHBjxSzP4eUeUOUnQD5', '2017-07-31 13:56:12', '2017-07-31 13:56:12');
INSERT INTO `users` VALUES ('2', 'qqq', 'qqq@qq.com', '$2y$10$BJQGELktbstTvGT2GEaK/Oczx95HwJWsMy5yT9aRJAjVzYtQxusQu', 'zwSYdZrdWgkEvvkvJAoLKrat27g5kWx5MpngaigPTKiGQ9d9f6TqlWD7qkqb', '2017-08-01 08:54:26', '2017-08-01 08:54:26');
