package com.wanliang.micro.web.security;

import com.wanliang.micro.result.system.UserResult;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

public class CurrentUser extends User {

    private UserResult user;

    public CurrentUser(UserResult user) {
        super(user.getEmail(), user.getPassword(), AuthorityUtils.createAuthorityList("ADMIN"));
        this.user = user;
    }

    public UserResult getUser() {
        return user;
    }

    public String getId() {
        return user.getId();
    }



    @Override
    public String toString() {
        return "CurrentUser{" +
                "user=" + user +
                "} " + super.toString();
    }
}
