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
    .form-container input[type="text"],
    .form-container input[type="date"],
    .form-container input[type="text"][name="city"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 20px;
      border: 1px solid #1890ff;
      border-radius: 3px;
      box-sizing: border-box;
    }
    .form-container input[type="date"] {
      font-size: 0.9em;
    }
    .form-container textarea {
      width: 100%;
      min-height: 300px;
      margin-bottom: 20px;
      padding: 10px;
      border: 1px solid #1890ff;
      border-radius: 3px;
      box-sizing: border-box;
    }
    .form-container button {
      padding: 10px 20px;
      color: #fff;
      background-color: #1890ff;
      border: none;
      border-radius: 3px;
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="form-container">
    <form action="SubmitPostServlet" method="post">
      <div>Please fill in the details of your post:</div>
      <input type="text" name="title" placeholder="Post title" required />
      <input type="text" name="city" placeholder="City" required />
      <input type="date" name="date" required />
      <textarea name="content" placeholder="Write your post here..." required></textarea>
      <button type="submit">Post</button>
    </form>
  </div>
</body>
</html>
