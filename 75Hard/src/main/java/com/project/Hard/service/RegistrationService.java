package com.project.Hard.service;

import com.project.Hard.model.register;

public interface RegistrationService {

    void save(register userRegister);

    register findById(String username);
}
