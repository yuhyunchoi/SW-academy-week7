INSERT INTO `user` (`user_id`, `login_id`, `password`, `nickname`, `email`, `authkey`, `join_date`, `userPoint`, `sign`, `is_manager`) VALUES
(1, 'john_doe', 'hashed_password1', 'John', 'john@example.com', 'authkey123', '2023-08-01 10:00:00', 150, 'Best', 0),
(2, 'jane_smith', 'hashed_password2', 'Jane', 'jane@example.com', 'authkey456', '2023-08-02 11:30:00', 200, 'Success', 1),
(3, 'michael_b', 'hashed_password3', 'Mike', 'mike@example.com', 'authkey789', '2023-08-03 09:45:00', 50, 'Hello', 0),
(4, 'emily_r', 'hashed_password4', 'Emily', 'emily@example.com', 'authkey012', '2023-08-04 08:15:00', 300, 'Cheers', 0),
(5, 'david_k', 'hashed_password5', 'David', 'david@example.com', 'authkey345', '2023-08-05 12:20:00', 100, 'Win', 1);

INSERT INTO `board` (`board_id`, `boardName`) VALUES
(1, 'General Discussion'),
(2, 'News'),
(3, 'Tech Talk'),
(4, 'Gaming'),
(5, 'Announcements');

INSERT INTO `category` (`category_id`, `categoryName`, `board_id`) VALUES
(1, 'Introductions', 1),
(2, 'Site Updates', 5),
(3, 'PC Gaming', 4),
(4, 'Consoles', 4),
(5, 'Software Development', 3);

INSERT INTO `post` (`post_id`, `board_id`, `category_id`, `user_id`, `title`, `contents`, `createdDate`, `view`, `like`) VALUES
(1, 1, 1, 1, 'Hello Everyone!', 'Excited to be here!', '2023-08-01 10:30:00', 100, 15),
(2, 5, 2, 2, 'New Features Coming', 'Stay tuned for updates!', '2023-08-02 12:00:00', 250, 30),
(3, 4, 3, 3, 'Best PC Games of 2024', 'Let’s discuss our favorite PC games.', '2023-08-03 14:00:00', 300, 45),
(4, 4, 4, 4, 'Next-gen Consoles', 'What are your thoughts?', '2023-08-04 15:20:00', 150, 25),
(5, 3, 5, 5, 'New Programming Languages', 'What’s new in 2024?', '2023-08-05 16:45:00', 200, 40);

INSERT INTO `tag` (`tag_id`, `category_id`, `post_id`, `content`) VALUES
(1, 1, 1, 'Introduction'),
(2, 2, 2, 'Update'),
(3, 3, 3, 'PC'),
(4, 4, 4, 'Console'),
(5, 5, 5, 'Programming');

INSERT INTO `comment` (`comment_id`, `user_id`, `post_id`, `content`, `createdDate`, `modifiedDate`, `like`, `isSpoiler`, `isParent`, `parentComment_id`) VALUES
(1, 2, 1, 'Welcome!', '2023-08-01 11:00:00', NULL, 10, 0, 1, NULL),
(2, 3, 2, 'Can’t wait!', '2023-08-02 12:30:00', NULL, 20, 0, 1, NULL),
(3, 4, 3, 'Agree with you.', '2023-08-03 14:30:00', NULL, 15, 0, 1, NULL),
(4, 5, 4, 'Interesting thoughts.', '2023-08-04 15:50:00', NULL, 12, 0, 1, NULL),
(5, 1, 5, 'Looking forward to it.', '2023-08-05 17:00:00', NULL, 25, 0, 1, NULL);

INSERT INTO `userlog` (`userLog_id`, `user_id`, `userlog`) VALUES
(1, 1, '글쓰기'),
(2, 2, '댓글달기'),
(3, 3, '장터 게시글 달기'),
(4, 4, '쪽지 보내기'),
(5, 5, '글쓰기');

INSERT INTO `subscribe_list` (`subscribe_id`, `user_id`, `subscriber`) VALUES
(1, 1, 'john_doe'),
(2, 2, 'jane_smith'),
(3, 3, 'michael_b'),
(4, 4, 'emily_r'),
(5, 5, 'david_k');

INSERT INTO `stalking_block_list` (`block_id`, `user_id`, `blockuser`) VALUES
(1, 1, 'michael_b'),
(2, 2, 'emily_r'),
(3, 3, 'john_doe'),
(4, 4, 'david_k'),
(5, 5, 'jane_smith');

INSERT INTO `invisible_list` (`invisible_id`, `user_id`, `invisibleuser`) VALUES
(1, 1, 'david_k'),
(2, 2, 'john_doe'),
(3, 3, 'emily_r'),
(4, 4, 'jane_smith'),
(5, 5, 'michael_b');

INSERT INTO `postLikes` (`postLike_id`, `user_id`, `post_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO `commentLikes` (`commentLike_id`, `user_id`, `comment_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

INSERT INTO `message` (`message_id`, `receiveuser_id`, `senduser_id`, `sendDate`, `contents`) VALUES
(1, 2, 1, '2023-08-01 12:00:00', 'Hello John!'),
(2, 3, 2, '2023-08-02 13:00:00', 'Hey Jane!'),
(3, 4, 3, '2023-08-03 14:00:00', 'What’s up Mike?'),
(4, 5, 4, '2023-08-04 15:00:00', 'Hi Emily!'),
(5, 1, 5, '2023-08-05 16:00:00', 'Greetings David!');

SELECT p.*
FROM post p
JOIN postLikes pl ON p.post_id = pl.post_id
JOIN subscribe_list sl ON pl.user_id = sl.user_id
WHERE sl.subscriber = 'john_doe';

SELECT COUNT(*) AS like_count
FROM postLikes
WHERE user_id = 2;






