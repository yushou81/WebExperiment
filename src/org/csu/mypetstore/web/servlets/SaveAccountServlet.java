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

public class SaveAccountServlet extends HttpServlet {
    private static final String MAIN = "/WEB-INF/jsp/catalog/Main.jsp";
    private static final String EDITACOUNT = "/WEB-INF/jsp/account/EditAccountForm.jsp";

    private Account account;
    private AccountService accountService;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        account = (Account) session.getAttribute("account");

        String username = account.getUsername();

        String isNewAccount = (String) session.getAttribute("isNewAccount");
        String password = null;
        boolean isNewAccountBoolean = Boolean.parseBoolean(isNewAccount);
        if (isNewAccountBoolean){
            password = account.getPassword();
        }else {
            password = request.getParameter("password");
        }
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address1 = request.getParameter("address1");
        String address2 = request.getParameter("address2");
        String city = request.getParameter("city");
        String state = request.getParameter("state");
        String zip = request.getParameter("zip");
        String country = request.getParameter("country");
        String languagePreference = request.getParameter("languagePreference");
        String favouriteCategoryId = request.getParameter("favouriteCategoryId");
        String listOption = request.getParameter("listOption");
        String bannerOption = request.getParameter("bannerOption");

        System.out.println("list"+listOption);
        System.out.println("banner"+bannerOption);

        account.setUsername(username);

        account.setPassword(password);
        account.setFirstName(firstName);
        account.setLastName(lastName);
        account.setEmail(email);
        account.setPhone(phone);
        account.setAddress1(address1);
        account.setAddress2(address2);
        account.setCity(city);
        account.setState(state);
        account.setZip(zip);
        account.setCountry(country);
        account.setLanguagePreference(languagePreference);
        account.setFavouriteCategoryId(favouriteCategoryId);
        if(listOption == null){
            listOption = "false";
        }else {
            listOption = "true";
        }
        if(bannerOption == null){
            bannerOption = "false";
        }else {
            bannerOption = "true";
        }
        account.setListOption(Boolean.parseBoolean(listOption));
        account.setBannerOption(Boolean.parseBoolean(bannerOption));

        System.out.println("account"+account.isListOption());
        System.out.println("account"+account.isBannerOption());

        accountService = new AccountService();
        accountService.updateAccount(account);

        session.setAttribute("account", account);

        if(account != null){
            HttpServletRequest httpRequest= request;
            String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

            LogService logService = new LogService();
            String logInfo = logService.logInfo(" ") + strBackUrl + " 账号信息更改";
            logService.insertLogInfo(account.getUsername(), logInfo);
        }
        if(isNewAccountBoolean){
            session.setAttribute("isNewAccount", "false");
        }
        request.getRequestDispatcher(MAIN).forward(request, response);
    }
}
