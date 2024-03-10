package com.example.groupproject;

import java.time.LocalDate;

public class Post {
    private int id;
    private String title;
    private String content;
    private String city;
    private String username;
    private LocalDate postingDate;

    // Constructor
    public Post(int id, String title, String content, String city, String username) {
        this.id = id;
        this.title = title;
        this.content = content;
        this.city = city;
        this.username = username;
        this.postingDate = LocalDate.now(); // Assuming posting date is set to the current date
    }

    
    public String getTitle() { return title; }
    public String getContent() { return content; }
    public String getCity() { return city; }
    public String getUsername() { return username; }
    public LocalDate getPostingDate() { return postingDate; }

    
}
