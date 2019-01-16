<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8"/>
		<title>Conceptual Model</title>
	</head>
	<body>
		<h1>Conceptual Model</h1>
		<h2>Entities and Attributes</h2>
		<h4>User:</h4>
		<ul>
			<li>userId (primary key)</li>
			<li>userName</li>
			<li>userPassword</li>
			<li>userEmail</li>
		</ul>
		<h4>Post:</h4>
		<ul>
			<li>postId (primary key)</li>
			<li>postUserId (foreign key)</li>
			<li>postTitle</li>
			<li>postContent</li>
			<li>postUploadDate</li>
			<li>postUpvoteValue</li>
		</ul>
		<h4>Comment:</h4>
		<ul>
			<li>commentId (primary key)</li>
			<li>commentUserId (foreign key)</li>
			<li>commentPostId (foreign key)</li>
			<li>commentContent</li>
		</ul>
		<h4>Upvote:</h4>
		<ul>
			<li>upvoteId (primary key)</li>
			<li>upvotePostId (foreign key)</li>
			<li>upvotePostId (foreign key)</li>
			<li>upvoteValue</li>
		</ul>
		<h3>Relations</h3>
		<ul>
			<li>One user can have many posts, comments, and upvotes. (1 to many)</li>
			<li>One post can have many comments and upvotes. (1 to many)</li>
			<li>Many posts can be like my many users. (many to many)</li>
		</ul>

	<!--
		<h2>Entity Relationship Diagram</h2>
	-->
	</body>
</html>