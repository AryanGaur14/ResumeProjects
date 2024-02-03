package com.project.Hard.Dao;

import com.project.Hard.model.register;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RegistrationDao extends JpaRepository<register,String>{
}
