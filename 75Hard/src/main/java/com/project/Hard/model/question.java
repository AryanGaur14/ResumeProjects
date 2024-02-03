package com.project.Hard.model;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name="question")
public class question {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;
    @Column(name = "question")
    private String Question;

    @Column(name="asked_by")
    private String askedBy;

    @Column(name="posted_date")
    private Date postedDate;

    public question() {
    }

    public question(String Question, String askedBy) {
        this.Question = Question;
        this.askedBy = askedBy;
        this.postedDate=new Date();
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getQuestion() {
        return Question;
    }

    public void setQuestion(String Question) {
        this.Question = Question;
    }

    public String getAskedBy() {
        return askedBy;
    }

    public void setAskedBy(String askedBy) {
        this.askedBy = askedBy;
    }

    public Date getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(Date postedDate) {
        this.postedDate = postedDate;
    }
}
