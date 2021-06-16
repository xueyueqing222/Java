package com.xue.service.impl;

import com.xue.dao.user.UserMapper;
import com.xue.pojo.User;
import com.xue.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * @author xue
 */
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    UserMapper userMapper;

    @Override
    public List<User> login(Map map) {
        return userMapper.login(map);
    }

    @Override
    public boolean updatePassword(Map map) {
        return userMapper.updatePassword(map);
    }
}
