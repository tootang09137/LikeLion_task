CREATE TABLE `Untitled` (
	`username`	VARCHAR	NOT NULL,
	`name`	VARCHAR	NULL,
	`age`	INT	NULL,
	`profile_pic`	BLOB	NULL
);

CREATE TABLE `Untitled2` (
	`blog_id`	INT	NOT NULL,
	`username2`	VARCHAR	NOT NULL,
	`username`	VARCHAR	NOT NULL,
	`comment_body`	VARCHAR	NULL,
	`comment_date`	DATE	NULL
);

CREATE TABLE `Untitled3` (
	`username`	VARCHAR	NOT NULL,
	`password`	VARCHAR	NULL
);

CREATE TABLE `Untitled4` (
	`blog_id`	INT	NOT NULL,
	`username2`	VARCHAR	NOT NULL,
	`title`	VARCHAR	NULL,
	`pub_date`	DATE	NULL,
	`body`	VARCHAR	NULL,
	`blog_pic`	BLOB	NULL
);

CREATE TABLE `Untitled5` (
	`blog_id`	INT	NOT NULL,
	`username2`	VARCHAR	NOT NULL,
	`hashtag`	VARCHAR	NULL
);

CREATE TABLE `Untitled6` (
	`username`	VARCHAR	NOT NULL
);

CREATE TABLE `Untitled7` (
	`username3`	VARCHAR	NOT NULL,
	`username`	VARCHAR	NOT NULL,
	`??`	VARCHAR	NULL
);

ALTER TABLE `Untitled` ADD CONSTRAINT `PK_UNTITLED` PRIMARY KEY (
	`username`
);

ALTER TABLE `Untitled2` ADD CONSTRAINT `PK_UNTITLED2` PRIMARY KEY (
	`blog_id`,
	`username2`,
	`username`
);

ALTER TABLE `Untitled3` ADD CONSTRAINT `PK_UNTITLED3` PRIMARY KEY (
	`username`
);

ALTER TABLE `Untitled4` ADD CONSTRAINT `PK_UNTITLED4` PRIMARY KEY (
	`blog_id`,
	`username2`
);

ALTER TABLE `Untitled5` ADD CONSTRAINT `PK_UNTITLED5` PRIMARY KEY (
	`blog_id`,
	`username2`
);

ALTER TABLE `Untitled6` ADD CONSTRAINT `PK_UNTITLED6` PRIMARY KEY (
	`username`
);

ALTER TABLE `Untitled7` ADD CONSTRAINT `PK_UNTITLED7` PRIMARY KEY (
	`username3`,
	`username`
);

ALTER TABLE `Untitled` ADD CONSTRAINT `FK_Untitled3_TO_Untitled_1` FOREIGN KEY (
	`username`
)
REFERENCES `Untitled3` (
	`username`
);

ALTER TABLE `Untitled2` ADD CONSTRAINT `FK_Untitled4_TO_Untitled2_1` FOREIGN KEY (
	`blog_id`
)
REFERENCES `Untitled4` (
	`blog_id`
);

ALTER TABLE `Untitled2` ADD CONSTRAINT `FK_Untitled4_TO_Untitled2_2` FOREIGN KEY (
	`username2`
)
REFERENCES `Untitled4` (
	`username2`
);

ALTER TABLE `Untitled2` ADD CONSTRAINT `FK_Untitled6_TO_Untitled2_1` FOREIGN KEY (
	`username`
)
REFERENCES `Untitled6` (
	`username`
);

ALTER TABLE `Untitled4` ADD CONSTRAINT `FK_Untitled3_TO_Untitled4_1` FOREIGN KEY (
	`username2`
)
REFERENCES `Untitled3` (
	`username`
);

ALTER TABLE `Untitled5` ADD CONSTRAINT `FK_Untitled4_TO_Untitled5_1` FOREIGN KEY (
	`blog_id`
)
REFERENCES `Untitled4` (
	`blog_id`
);

ALTER TABLE `Untitled5` ADD CONSTRAINT `FK_Untitled4_TO_Untitled5_2` FOREIGN KEY (
	`username2`
)
REFERENCES `Untitled4` (
	`username2`
);

ALTER TABLE `Untitled6` ADD CONSTRAINT `FK_Untitled_TO_Untitled6_1` FOREIGN KEY (
	`username`
)
REFERENCES `Untitled` (
	`username`
);

ALTER TABLE `Untitled7` ADD CONSTRAINT `FK_Untitled_TO_Untitled7_1` FOREIGN KEY (
	`username`
)
REFERENCES `Untitled` (
	`username`
);

