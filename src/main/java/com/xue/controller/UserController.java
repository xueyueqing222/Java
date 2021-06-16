package com.xue.controller;

import com.xue.pojo.User;
import com.xue.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author xue
 */

@Controller
public class UserController {
    @Autowired
    UserService userService;

    /**
     * 登陆
     * @param httpSession
     * @param user
     * @return
     */
    @RequestMapping("/login")
    public String login(HttpSession httpSession, User user) {
        String userName = user.getUserName();
        String password = user.getPassword();
        Map map = new HashMap();
        map.put("username", userName);
        List<User> users = userService.login(map);
        if (users.size() != 0 && users.get(0).getPassword().equals(password)) {
            httpSession.setAttribute("login", userName);
            return "redirect:/book/allBook";
        }
        return "redirect:/loginUI";
    }

    /**
     * 登陆界面
     *
     * @return
     */
    @RequestMapping("/loginUI")
    public String loginUI() {
        return "redirect:/";
    }

    /**
     * 注销用户
     * @param httpSession
     * @return
     */
    @RequestMapping("/logout")
    public String logout(HttpSession httpSession) {
        httpSession.removeAttribute("login");
        return "redirect:/loginUI";
    }

    /**
     * 修改密码
     *
     * @return
     */
    @RequestMapping("/toUpdatePassword")
    public String toUpdatePassword() {
        return "toUpdatePassword";
    }

    @RequestMapping("/updatePassword")
    public String updatePassword(HttpSession httpSession, String password) {
        String userName = (String) httpSession.getAttribute("login");
        Map map = new HashMap();
        map.put("userName", userName);
        map.put("password", password);
        userService.updatePassword(map);
        return "redirect:/loginUI";

    }

    @ResponseBody
@RequestMapping("/checkOldPassword")
    public String checkOldPassword(HttpSession session, String oldPassword) {
        String userName = (String) session.getAttribute("login");
        Map map=new HashMap();
        map.put("userName",userName);
        String password=userService.login(map).get(0).getPassword();
        if (password.equals(oldPassword)){
            return "√";
        }
        return "×";
    }
}
