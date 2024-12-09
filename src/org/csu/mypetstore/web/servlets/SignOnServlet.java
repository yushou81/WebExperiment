package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.CatalogService;
import org.csu.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.*;

public class SignOnServlet extends HttpServlet {
    private static final String MAIN = "/WEB-INF/jsp/catalog/Main.jsp";
    private static final String SIGNONFORM = "/WEB-INF/jsp/account/SignonForm.jsp";

    private Account account;
    private AccountService accountService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        response.setContentType("text/html;charset=utf-8");
        request.setCharacterEncoding("utf-8");

        accountService = new AccountService();
        account = accountService.getAccount(username, password);
        HttpSession session = request.getSession();

        if(account != null){
            HttpServletRequest httpRequest= request;
            String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

            LogService logService = new LogService();
            String logInfo = logService.logInfo(" ") + strBackUrl + " 用户登录";
            logService.insertLogInfo(account.getUsername(), logInfo);
        }

        //获得输入的验证码值
        String value1=request.getParameter("vCode");
        System.out.println(value1);
        /*获取图片的值*/
        String value2=(String)session.getAttribute("checkcode");
        System.out.println(value2);
        Boolean isSame = false;

        /*对比两个值（字母不区分大小写）*/
        if(value2.equalsIgnoreCase(value1)){
            isSame = true;
        }

        if (account == null || !isSame){
            if(!isSame){
                session.setAttribute("messageSignOn", "Invalid Verification Code.   Signon failed.");
            }else{
                session.setAttribute("messageSignOn", "Invalid username or password.  Signon failed.");
            }
            request.getRequestDispatcher(SIGNONFORM).forward(request, response);
        }else{
            System.out.println("Success");
            CatalogService catalogService = new CatalogService();
            List<Product> myList = catalogService.getProductListByCategory(account.getFavouriteCategoryId());
//            System.out.println(account);
            session.setAttribute("mylist",myList);

            account.setPassword(null);
            session.setAttribute("account", account);
            System.out.println("成功登录");
            request.getRequestDispatcher(MAIN).forward(request, response);
        }
    }
}
