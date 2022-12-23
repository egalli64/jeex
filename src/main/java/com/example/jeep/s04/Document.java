/*
 * Introduction to Jakarta Enterprise Edition - JSP
 * 
 * https://github.com/egalli64/jeep
 */
package com.example.jeep.s04;

/**
 * A JavaBean with another JavaBean within
 * 
 * @see User
 */
public class Document {
    private String title;

    private User user;

    public Document() {
    }

    public Document(String title, User user) {
        this.title = title;
        this.user = user;
    }

    public String getTitle() {
        return title;
    }

    public void setName(String name) {
        this.title = name;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Document [title=" + title + ", user=" + user + "]";
    }
}
