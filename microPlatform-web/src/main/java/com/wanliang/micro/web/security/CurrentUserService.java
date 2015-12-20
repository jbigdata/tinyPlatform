package com.wanliang.micro.web.security;


public interface CurrentUserService {

    boolean canAccessUser(CurrentUser currentUser, Long userId);

}
