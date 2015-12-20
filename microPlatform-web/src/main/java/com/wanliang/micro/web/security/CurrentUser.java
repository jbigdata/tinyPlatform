package com.wanliang.micro.web.security;

import com.wanliang.micro.result.system.UserResult;
import org.springframework.security.core.authority.AuthorityUtils;

public class CurrentUser extends org.springframework.security.core.userdetails.User {

    private UserResult user;

    public CurrentUser(UserResult user) {
        super(user.getEmail(), user.getPassoword(), AuthorityUtils.createAuthorityList("ADMIN"));
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
