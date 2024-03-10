package com.example.groupproject;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/SubmitPostServlet")
public class SubmitPostServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        String title = request.getParameter("title");
        String city = request.getParameter("city");
        String content = request.getParameter("content");
        String username = "exampleUser"; 

        Post newPost = new Post(0, title, content, city, username); 

        List<Post> posts = (List<Post>) request.getSession().getAttribute("posts");
        if (posts == null) {
            posts = new ArrayList<>();
        }

        posts.add(newPost);
        
        request.getSession().setAttribute("posts", posts);

        response.sendRedirect("cardio.jsp");
    }
}
