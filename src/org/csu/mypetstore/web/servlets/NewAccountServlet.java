package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.AccountService;
import org.csu.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class NewAccountServlet extends HttpServlet {
    private static final String MAIN = "/WEB-INF/jsp/catalog/Main.jsp";
    private static final String NEWACCOUNTFORM = "/WEB-INF/jsp/account/NewAccountForm.jsp";
    private static final String FIRSTSIGNUP = "/WEB-INF/jsp/account/FirstSignUp.jsp";
    private static final String SIGNONFORM = "/WEB-INF/jsp/account/SignonForm.jsp";
    private Account account;
    private AccountService accountService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        account = null;
        session.setAttribute("account", account);
        session.setAttribute("isNewAccount", "true" );

        //获得输入的验证码值
        String value1=request.getParameter("vCode");
        /*获取图片的值*/
        String value2=(String)session.getAttribute("checkcode");

        Boolean isSame = false;
        /*对比两个值（字母不区分大小写）*/
        if(value2.equalsIgnoreCase(value1)){
            isSame = true;
            System.out.println("vcode true");
        }else{
            System.out.println("vcode false");
        }

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        //  实例化用户类
        account = new Account(username, password, email);

        if(isSame){
            if(account != null){
                HttpServletRequest httpRequest= request;
                String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                LogService logService = new LogService();
                String logInfo = logService.logInfo(" ") + strBackUrl + " 注册新账号";
                logService.insertLogInfo(account.getUsername(), logInfo);
            }
            //  调用service层的方法，将用户信息存入数据库中
            accountService = new AccountService();
            accountService.insertAccount(account);
            session.setAttribute("account", account);
            request.getRequestDispatcher(FIRSTSIGNUP).forward(request, response);
        }else{
            session.setAttribute("messageAccount", "Invalid Verification Code.");
            if(account != null){
                HttpServletRequest httpRequest= request;
                String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                        + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

                LogService logService = new LogService();
                String logInfo = logService.logInfo(" ") + strBackUrl + " 注册账号，验证码错误";
                logService.insertLogInfo(account.getUsername(), logInfo);
            }
            response.setContentType("text/html;charset=utf-8");
            PrintWriter out = response.getWriter();
            out.println("<script>");
            out.println("alert('验证码错误');");
            out.println("history.go(-1);");
            out.println("</script>");
            out.flush();
            out.close();
//            System.out.println("验证码错误,返回就业面");
//            request.getRequestDispatcher(SIGNONFORM).forward(request, response);
        }
    }

}
