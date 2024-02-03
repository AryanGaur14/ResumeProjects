package com.project.Hard.service;

import com.project.Hard.model.question;

import java.util.List;

public interface QuestionService {

    void save(question q);

    List<question> findAll();

    List<question> findAllByOrderByIdDesc();
}
