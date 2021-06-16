package com.xue.service;

import com.xue.pojo.User;

import java.util.List;
import java.util.Map;

/**
 * @author xue
 */
public interface UserService {
    /**
     * 登录
     * @param map
     * @return
     */
    List<User> login(Map map);

    /**
     * 更新密码
     * @param map
     * @return
     */
    boolean updatePassword(Map map);
}
