package com.lihe.servlet;

import com.lihe.pojo.Person;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;

public class SessionDemo01 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        // 解决乱码问题
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        resp.setContentType("text/html");

        // 得到Session
        HttpSession session = req.getSession();


        // 给Session中存东西
        session.setAttribute("name",new Person("李赫", 24));

        // 获取Session的id

        String id = session.getId();

        // 判断是不是新创建的
        boolean aNew = session.isNew();
        if (aNew){
            resp.getWriter().write("Session创建成功， id ： " + id);
        }else{
            resp.getWriter().write("session之前已经创建了");
        }

        // session在创建的是偶做了什么
//
//        Cookie cookie = new Cookie("JSESSIONID", id);
//        resp.addCookie(cookie);

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
