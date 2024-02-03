package com.project.Hard.service;

import com.project.Hard.model.answers;

import java.util.List;


public interface AnswersService {
    List<answers> findAllByQid(int qid);

    void save(answers a);

}
