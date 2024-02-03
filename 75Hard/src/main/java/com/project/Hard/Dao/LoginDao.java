package com.project.Hard.Dao;

import com.project.Hard.model.login;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginDao extends JpaRepository<login,String> {
}
