package com.project.Hard.Dao;

import com.project.Hard.model.answers;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AnswersDao extends JpaRepository<answers,Integer>{
    List<answers> findAllByQid(int qid);
}
