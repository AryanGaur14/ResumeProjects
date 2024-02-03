package com.project.Hard.service;

import com.project.Hard.model.login;

public interface LoginService {
    public login findById(String username);
    public boolean existsById(String username);
    void save(login l);
}
