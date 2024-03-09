<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
        .post {
            width: 80%;
            margin: 20px auto;
            border: 1px solid #1890ff;
            background-color: #fff;
            border-radius: 3px;
            box-shadow: 0 1px 1px rgba(0,0,0,0.1);
        }
        .post-content {
            padding: 20px;
            color: #333;
            font-size: 1.2em;
        }
        h1 {
            color: #1890ff;
            text-align: center;
            padding: 20px 0;
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
        }
    </style>
</head>
<body>
    <h1>Cardiothoracic Surgery Forum</h1>
    <a href="index.html" class="button">Back to Index</a>
    <a href="newpost.jsp" class="button">Create New Post</a>
    <%
        // Java code to fetch posts from the database
        // This is a placeholder, replace with your actual code
        String[] posts = {"Post 1", "Post 2", "Post 3"};
    %>
    <div id="forum">
        <% for(String post : posts) { %>
            <div class="post">
                <div class="post-content">
                    <%= post %>
                </div>
            </div>
        <% } %>
    </div>
</body>
</html>