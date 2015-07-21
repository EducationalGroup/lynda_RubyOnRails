DROP TABLE IF EXISTS `admin_users`;
DROP TABLE IF EXISTS `admin_users_pages`;
DROP TABLE IF EXISTS `pages`;
DROP TABLE IF EXISTS `schema_migrations`;
DROP TABLE IF EXISTS `section_edits`;
DROP TABLE IF EXISTS `sections`;
DROP TABLE IF EXISTS `subjects`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
);
INSERT INTO `schema_migrations` VALUES ('20130812204447'),('20130812204803');
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(25) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(40) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
);
