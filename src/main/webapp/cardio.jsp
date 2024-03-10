<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.example.groupproject.Post"%>
<%@ page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Cardiothoracic Surgery Forum</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #e6f7ff;
        }
        .button {
            display: inline-block;
            margin: 10px;
            padding: 10px 20px;
            color: #fff;
            background-color: #1890ff;
            border: none;
            border-radius: 3px;
            text-decoration: none;
            cursor: pointer;
        }
        .post, .no-posts {
            width: 80%;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #1890ff;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0,0,0,0.1);
            text-align: center;
        }
        .post h2, .no-posts h2 {
            color: #1890ff;
            margin-top: 0;
        }
        .post p, .no-posts p {
            color: #333;
            font-size: 1.1em;
            margin: 10px 0;
        }
        .posts-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }
    </style>
</head>
<body>
    <h1>Cardiothoracic Surgery Forum</h1>
    <div style="text-align: center;">
        <a href="index.html" class="button">Back to Index</a>
        <a href="newpost.jsp" class="button">Create New Post</a>
    </div>
    <div class="posts-container">
        <%
            List<Post> posts = (List<Post>) request.getSession().getAttribute("posts");
            if (posts == null || posts.isEmpty()) {
                posts = new ArrayList<>();
        %>
                <div class="no-posts">
                    <h2>No Posts Available</h2>
                    <p>Be the first to create a post!</p>
                </div>
        <%  } else {
                for (Post post : posts) {
        %>
                    <div class="post">
                        <div class="post-content">
                            <h2><%= post.getTitle() %></h2>
                            <p><%= post.getContent() %></p>
                            <p>Posted by: <%= post.getUsername() %> on <%= post.getPostingDate() %></p>
                        </div>
                    </div>
        <%      }
            }
        %>
    </div>
</body>
</html>
