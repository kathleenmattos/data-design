INSERT INTO user(userId, userActivationToken, userName, userPassword, userEmail) VALUES (UNHEX("cbcd4dc25b764827832f39650902384a"), "hellotherehellotherehellothereuu", "wolverine", "claws", "jameshowlett@gmail.com");

INSERT INTO user(userId, userActivationToken, userName, userPassword, userEmail) VALUES (UNHEX("c69bdfe79bb04b0cb8ef4c76041980fb"), "hellotherehellotherehellotherexx", "professorx", "cerebro", "charlesxavier@gmail.com");

INSERT INTO user(userId, userActivationToken, userName, userPassword, userEmail) VALUES (UNHEX("b1eb3f9cd64a4bbab226f8ad69e04c13"), "hellotherehellotherehellotherevv", "magneto", "mutants", "mutantsarethefuture@gmail.com");

UPDATE user SET userName = "logan", userPassword = "phoenix" WHERE userId = UNHEX("cbcd4dc25b764827832f39650902384a");

DELETE FROM user WHERE userId = UNHEX("b1eb3f9cd64a4bbab226f8ad69e04c13")