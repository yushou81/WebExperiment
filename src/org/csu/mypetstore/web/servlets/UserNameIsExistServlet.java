package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class UserNameIsExistServlet extends HttpServlet {


    private Account account;
    private AccountService accountService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.setContentType("text/html;charset=utf-8");
        req.setCharacterEncoding("utf-8");

        //获取req的username信息
        String username = req.getParameter("username");
        //设置好调用数据库的类
        accountService = new AccountService();
        boolean result = accountService.userNameIsExist(username);
        resp.setContentType("text/plain;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        if (result){
            out.println("exist");
        }else{
            out.println("noexist");
        }
        out.flush();
        out.close();
    }
}
