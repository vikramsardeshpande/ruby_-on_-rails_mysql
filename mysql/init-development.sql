create database project_management;
use project_management;

CREATE TABLE `teamleads` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


CREATE TABLE `projects` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `teamlead_id` int(11) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `count_view` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
);


insert into teamleads(name) values ('Peter');
insert into teamleads(name) values ('Mike');
insert into teamleads(name) values ('John');


GRANT ALL ON data.* TO 'root'@'%';
