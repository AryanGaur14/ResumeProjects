package com.project.Hard.Dao;

import com.project.Hard.model.answers;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import java.util.List;


public class AnswerDaoImpl{
    EntityManager entityManager;

    @Autowired
    public AnswerDaoImpl(EntityManager theEntityManager){
        entityManager=theEntityManager;
    }

    public List<answers> findAllByQid(int qid) {
        TypedQuery<answers> theQuery=entityManager.createQuery("FROM answers WHERE qid=:theData",answers.class);
        theQuery.setParameter("theData",qid);
        return theQuery.getResultList();
    }


    public void save(answers a) {
        entityManager.persist(a);
    }
}
