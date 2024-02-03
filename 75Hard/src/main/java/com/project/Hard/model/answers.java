package com.project.Hard.model;

import jakarta.persistence.*;

import java.util.Date;

@Entity
@Table(name = "answers")
public class answers{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "aid")
    private int id;
    @Column(name = "answer")
    private String answer;
    @Column(name ="answered_by")
    private String answeredBy;
    @Column(name= "posted_date")
    private Date postedDate;
    @Column(name = "qid")
    private int qid;

    public answers() {
    }

    public answers(String answer, String answeredBy, int qid) {
        this.answer = answer;
        this.answeredBy = answeredBy;
        this.postedDate = new Date();
        this.qid = qid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getAnsweredBy() {
        return answeredBy;
    }

    public void setAnsweredBy(String answeredBy) {
        this.answeredBy = answeredBy;
    }

    public Date getPostedDate() {
        return postedDate;
    }

    public void setPostedDate(Date postedDate) {
        this.postedDate = postedDate;
    }

    public int getQid() {
        return qid;
    }

    public void setQid(int qid) {
        this.qid = qid;
    }
}
