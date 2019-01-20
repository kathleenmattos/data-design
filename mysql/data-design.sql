ALTER DATABASE kmattos1 CHARACTER SET utf8 COLLATE utf8_unicode_ci;

DROP TABLE IF EXISTS upvote;
DROP TABLE IF EXISTS comment;
DROP TABLE IF EXISTS post;
DROP TABLE IF EXISTS user;

CREATE TABLE user (
	userId BINARY(16) NOT NULL,
	userActivationToken CHAR(32),
	userName VARCHAR(32) NOT NULL,
	userPassword VARCHAR(16) NOT NULL,
	userEmail VARCHAR(128) NOT NULL,
	UNIQUE(userName),
	UNIQUE(userEmail),
	PRIMARY KEY(userId)
);

CREATE TABLE post (
	postId BINARY(16) NOT NULL,
	postUserId BINARY(16) NOT NULL,
	postTitle VARCHAR (140) NOT NULL,
	postContent VARCHAR (140) NOT NULL,
	postUploadDate DATETIME(6) NOT NULL,
	INDEX(postUserId),
	FOREIGN KEY(postUserId) REFERENCES user(userId),
	PRIMARY KEY(postId)
);

CREATE TABLE comment (
	commentId BINARY(16) NOT NULL,
	commentUserId BINARY(16) NOT NULL,
	commentPostId BINARY(16) NOT NULL,
	commentContent VARCHAR(150) NOT NULL,
	INDEX(commentUserId),
	INDEX(commentPostId),
	FOREIGN KEY (commentUserId) REFERENCES user(userId),
	FOREIGN KEY (commentPostId) REFERENCES post(postId),
	PRIMARY KEY(commentUserId, commentPostId)
);

CREATE TABLE upvote (
	upvoteId BINARY(16) NOT NULL,
	upvoteUserId BINARY(16) NOT NULL,
	upvotePostId BINARY (16) NOT NULL,
	INDEX(upvoteUserId),
	INDEX(upvotePostId),
	FOREIGN KEY (upvoteUserId) REFERENCES user(userId),
	FOREIGN KEY (upvotePostId) REFERENCES post(postId),
	PRIMARY KEY (upvoteUserId, upvotePostId)

)
