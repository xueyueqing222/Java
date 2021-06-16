package com.xue.dao.user;

import com.xue.pojo.User;

import java.util.List;
import java.util.Map;

/**
 * @author xue
 */

public interface UserMapper {
    /**
     * 用户登陆
     * @param map
     * @return
     */
     List<User> login(Map map) ;

    /**
     * 修改密码
     * @param map
     * @return
     */
    boolean updatePassword(Map map);
}
