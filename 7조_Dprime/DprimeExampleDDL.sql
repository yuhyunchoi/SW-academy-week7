CREATE TABLE `post` (
    `post_id` BIGINT NOT NULL,
    `board_id` BIGINT NOT NULL,
    `category_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `title` VARCHAR(100) NOT NULL,
    `contents` VARCHAR(255) NOT NULL,
    `createdDate` TIMESTAMP NOT NULL,
    `view` INTEGER NULL DEFAULT 0,
    `like` INTEGER NULL DEFAULT 0
);

CREATE TABLE `category` (
    `category_id` BIGINT NOT NULL,
    `categoryName` VARCHAR(50) NOT NULL,
    `board_id` BIGINT NOT NULL
);

CREATE TABLE `user` (
    `user_id` BIGINT NOT NULL,
    `login_id` VARCHAR(50) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `nickname` VARCHAR(50) NOT NULL,
    `email` VARCHAR(50) NOT NULL,
    `authkey` VARCHAR(50) NOT NULL,
    `join_date` TIMESTAMP NOT NULL,
    `userPoint` INTEGER NOT NULL DEFAULT 0,
    `sign` VARCHAR(20) NULL,
    `is_manager` TINYINT(1) NOT NULL DEFAULT FALSE
);


CREATE TABLE `tag` (
    `tag_id` BIGINT NOT NULL,
    `category_id` BIGINT NOT NULL,
    `post_id` BIGINT NOT NULL,
    `content` VARCHAR(20) NOT NULL
);

CREATE TABLE `comment` (
    `comment_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `post_id` BIGINT NOT NULL,
    `content` VARCHAR(255) NOT NULL,
    `createdDate` TIMESTAMP NOT NULL,
    `modifiedDate` TIMESTAMP NULL,
    `like` INTEGER NOT NULL DEFAULT 0,
    `isSpoiler` TINYINT(1) NULL,
    `isParent` TINYINT(1) NULL,
    `parentComment_id` BIGINT NULL
);

CREATE TABLE `userlog` (
    `userLog_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `userlog` VARCHAR(20) NULL
);

CREATE TABLE `subscribe_list` (
    `subscribe_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `subscriber` VARCHAR(20) NULL
);

CREATE TABLE `stalking_block_list` (
    `block_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `blockuser` VARCHAR(20) NULL
);

CREATE TABLE `invisible_list` (
    `invisible_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `invisibleuser` VARCHAR(20) NULL
);

CREATE TABLE `postLikes` (
    `postLike_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `post_id` BIGINT NULL
);

CREATE TABLE `commentLikes` (
    `commentLike_id` BIGINT NOT NULL,
    `user_id` BIGINT NOT NULL,
    `comment_id` BIGINT NULL
);

CREATE TABLE `board` (
    `board_id` BIGINT NOT NULL,
    `boardName` VARCHAR(50) NOT NULL
);

CREATE TABLE `message` (
    `message_id` BIGINT NOT NULL,
    `receiveuser_id` BIGINT NOT NULL,
    `senduser_id` BIGINT NOT NULL,
    `sendDate` TIMESTAMP NOT NULL,
    `contents` VARCHAR(255) NOT NULL
);

ALTER TABLE `post` ADD CONSTRAINT `PK_POST` PRIMARY KEY (
    `post_id`
);

ALTER TABLE `category` ADD CONSTRAINT `PK_CATEGORY` PRIMARY KEY (
    `category_id`
);

ALTER TABLE `user` ADD CONSTRAINT `PK_USER` PRIMARY KEY (
    `user_id`
);

ALTER TABLE `tag` ADD CONSTRAINT `PK_TAG` PRIMARY KEY (
    `tag_id`
);

ALTER TABLE `comment` ADD CONSTRAINT `PK_COMMENT` PRIMARY KEY (
    `comment_id`
);

ALTER TABLE `userlog` ADD CONSTRAINT `PK_USERLOG` PRIMARY KEY (
    `userLog_id`
);

ALTER TABLE `subscribe_list` ADD CONSTRAINT `PK_SUBSCRIBE_LIST` PRIMARY KEY (
    `subscribe_id`
);

ALTER TABLE `stalking_block_list` ADD CONSTRAINT `PK_STALKING_BLOCK_LIST` PRIMARY KEY (
    `block_id`
);

ALTER TABLE `invisible_list` ADD CONSTRAINT `PK_INVISIBLE_LIST` PRIMARY KEY (
    `invisible_id`
);

ALTER TABLE `postLikes` ADD CONSTRAINT `PK_POSTLIKES` PRIMARY KEY (
    `postLike_id`
);

ALTER TABLE `commentLikes` ADD CONSTRAINT `PK_COMMENTLIKES` PRIMARY KEY (
    `commentLike_id`
);

ALTER TABLE `board` ADD CONSTRAINT `PK_BOARD` PRIMARY KEY (
    `board_id`
);

ALTER TABLE `message` ADD CONSTRAINT `PK_MESSAGE` PRIMARY KEY (
    `message_id`
);
