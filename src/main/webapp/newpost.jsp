<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Create New Post</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #e6f7ff;
    }
    .form-container {
      width: 80%;
      margin: 20px auto;
      padding: 20px;
      border: 1px solid #1890ff;
      background-color: #fff;
      border-radius: 3px;
      box-shadow: 0 1px 1px rgba(0,0,0,0.1);
    }
    .form-container textarea {
      width: 100%;
      min-height: 200px;
      margin-bottom: 20px;
    }
    .form-container button {
      padding: 10px 20px;
      color: #fff;
      background-color: #1890ff;
      border: none;
      border-radius: 3px;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <form action="cardio.jsp" method="post">
      <textarea name="content" placeholder="Write your post here..."></textarea>
      <button type="submit">Post</button>
    </form>
  </div>
</body>
</html>