package com.project.Hard.service;

import com.project.Hard.Dao.LoginDao;
import com.project.Hard.model.login;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Optional;

@Service
public class LoginServiceImpl implements LoginService{

    LoginDao loginDao;
    @Autowired
    public LoginServiceImpl (LoginDao theLoginDao){
        loginDao=theLoginDao;
    }
    @Override
    public login findById(String username){

        Optional<login> result = loginDao.findById(username);
        login l=null;
        if(result.isPresent()){
            l= result.get();
        }
        else{
            throw new RuntimeException("did not find id - "+username);
        }
        return l;
    }

    @Override
    public boolean existsById(String username) {
        return loginDao.existsById(username);
    }

    @Override
    @Transactional
    public void save(login l) {
        loginDao.save(l);
    }

}
