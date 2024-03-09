package com.example.groupproject;
import java.time.LocalDate;
import java.util.*;
public class Post {

    private int upvotes;
    private String description;
    private ArrayList <String> comments;
    private final String user;
    private final String city;

    LocalDate postingDate;
    public Post(String Desc, String city, String user){
        this.postingDate = LocalDate.now();
        this.description = Desc;
        this.city = city;
        this.user = user;
    }

    public int getUpvotes() {
        return upvotes;
    }

    public String getDescription() {
        return description;
    }

    public ArrayList<String> getComments() {
        return comments;
    }

    public String getUser() {
        return user;
    }
    public String getCity() {
        return city;
    }
    public LocalDate getPostingDate() {
        return postingDate;
    }
    public void Addcomment(String comment){
        this.comments.add(comment);
    }
    public void increaseUpvotes(){
        upvotes +=1;
    }
}
