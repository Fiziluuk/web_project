package com.controller;

import com.entity.User;
import com.util.UserServletFactory;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.sound.midi.Soundbank;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/WEB-INF/jsp/login.html")
                .forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter pw = resp.getWriter();
        String url = null;
        String id = req.getParameter("username");
        String password = req.getParameter("password");
        UserServletFactory.init();
        List<User> list = new UserServletFactory().getUserDao().findAll();
        for (int i = 0; i < list.size(); i++) {
            if ((list.get(i).getId().equals(id))&&(list.get(i).getPassword().equals(password))){
                req.getSession().setAttribute("user",list.get(i));
                url = "/index";
                System.out.println(1);
                pw.print(1);
                break;
            }else{
                System.out.println(2);
                pw.print(2);
                url = "/login";
            }
        }
        //UserServletFactory.destory();
        resp.sendRedirect(url);

    }



}
