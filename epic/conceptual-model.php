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
		<h4>Comment</h4>
		<ul>
			<li>userCommentId (primary key)</li>
			<li>userCommentUserId (foreign key)</li>
			<li>userCommentPostId (foreign key)</li>
			<li>userCommentContent</li>
		</ul>
		<h4>Likes:</h4>
		<ul>
			<li>userUpvoteId (primary key)</li>
			<li>userUpvotePostId (foreign key)</li>
			<li>userUpvotePostId (foreign key)</li>
			<li>userUpvoteValue</li>
		</ul>
		<h3>Relations</h3>
		<ul>
			<li>One user can have many posts, comments, and upvotes. (1 to many)</li>
			<li>One post can have many comments and upvotes. (1 to many)</li>
		</ul>


		<h2>Entity Relationship Diagram</h2>

	</body>
</html>