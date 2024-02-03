package com.project.Hard.service;

import com.project.Hard.Dao.AnswersDao;
import com.project.Hard.model.answers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
@Service
public class AnswersServiceImpl implements AnswersService{
    AnswersDao answersDao;
    @Autowired
    public AnswersServiceImpl(AnswersDao theAnswersDao){
        answersDao=theAnswersDao;
    }
    @Override
    public List<answers> findAllByQid(int qid) {
        return answersDao.findAllByQid(qid);
    }

    @Override
    @Transactional
    public void save(answers a) {
        answersDao.save(a);
    }

}
