package com.project.Hard.service;

import com.project.Hard.Dao.LoginDao;
import com.project.Hard.Dao.RegistrationDao;
import com.project.Hard.model.login;
import com.project.Hard.model.register;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class RegistrationServiceImpl implements RegistrationService{
    RegistrationDao registrationDao;
    LoginDao loginDao;
    @Autowired
    public RegistrationServiceImpl(RegistrationDao theRegistrationDao,LoginDao theLoginDao){
        registrationDao=theRegistrationDao;
        loginDao=theLoginDao;
    }
    @Override
    public void save(register userRegister) {
        registrationDao.save(userRegister);
    }

    @Override
    public register findById(String username) {
//        return registrationDao.findById(username);
        Optional<register> result = registrationDao.findById(username);
        register r=null;
        if(result.isPresent()){
            r= result.get();
        }
        else{
            throw new RuntimeException("did not find id - "+username);
        }
        return r;
    }
}
