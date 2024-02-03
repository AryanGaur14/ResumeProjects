package com.project.Hard.service;

import com.project.Hard.Dao.QuestionDAO;
import com.project.Hard.model.question;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class QuestionServiceImpl implements QuestionService{
    QuestionDAO questionDAO;
    @Autowired
    public QuestionServiceImpl(QuestionDAO theQuestionDAO){
        questionDAO=theQuestionDAO;
    }
    @Override
    @Transactional
    public void save(question q) {
        questionDAO.save(q);
    }

    @Override
    public List<question> findAll() {
        return questionDAO.findAll();
    }

    @Override
    public List<question> findAllByOrderByIdDesc() {
        return questionDAO.findAllByOrderByIdDesc();
    }
}
