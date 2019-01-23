INSERT INTO user(userId, userActivationToken, userName, userPassword, userEmail) VALUES (UNHEX("cbcd4dc25b764827832f39650902384a"), "hellotherehellotherehellothereuu", "wolverine", "claws", "jameshowlett@gmail.com");

INSERT INTO user(userId, userActivationToken, userName, userPassword, userEmail) VALUES (UNHEX("c69bdfe79bb04b0cb8ef4c76041980fb"), "hellotherehellotherehellotherexx", "professorx", "cerebro", "charlesxavier@gmail.com");

INSERT INTO user(userId, userActivationToken, userName, userPassword, userEmail) VALUES (UNHEX("b1eb3f9cd64a4bbab226f8ad69e04c13"), "hellotherehellotherehellotherevv", "magneto", "mutants", "mutantsarethefuture@gmail.com");

UPDATE user SET userName = "logan", userPassword = "phoenix" WHERE userId = UNHEX("cbcd4dc25b764827832f39650902384a");

DELETE FROM user WHERE userId = UNHEX("b1eb3f9cd64a4bbab226f8ad69e04c13");

INSERT INTO post(postId, postUserId, postTitle, postContent, postUploadDate) VALUES (UNHEX("ff91b22b98be4cb2947011d6f0656073"), UNHEX("cbcd4dc25b764827832f39650902384a"), "Check out this article about adamantium.", "Here is a link to the article.", NOW());

SELECT userId, userActivationToken, userName, userPassword, userEmail from user WHERE userId = UNHEX("c69bdfe79bb04b0cb8ef4c76041980fb");

SELECT post.postId, post.postTitle, post.postContent FROM post INNER JOIN `user` ON post.postUserId = user.userId WHERE post.postId = UNHEX("ff91b22b98be4cb2947011d6f0656073");

SELECT COUNT(*) FROM comment WHERE commentPostId = UNHEX("ff91b22b98be4cb2947011d6f0656073")