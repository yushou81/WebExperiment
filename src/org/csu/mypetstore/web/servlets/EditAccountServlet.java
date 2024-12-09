package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.io.IOException;

public class EditAccountServlet extends HttpServlet {

    private static final String EDITACOUNT = "/WEB-INF/jsp/account/EditAccountForm.jsp";
    private static final String MYACCOUNT = "/WEB-INF/jsp/account/MyAccount.jsp";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        Account account = (Account)session.getAttribute("account");

        if(account != null){
            HttpServletRequest httpRequest= request;
            String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());

            LogService logService = new LogService();
            String logInfo = logService.logInfo(" ") + strBackUrl + " 跳转到编辑账号信息界面";
            logService.insertLogInfo(account.getUsername(), logInfo);
        }

        request.getRequestDispatcher(MYACCOUNT).forward(request, response);
    }
    private void setAccount(Account account, HttpServletRequest request) {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
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

        account.setFirstName(firstName);
        account.setLastName(lastName);
        account.setPhone(phone);
        account.setAddress1(address1);
        account.setAddress2(address2);
        account.setCity(city);
        account.setState(state);
        account.setZip(zip);
        account.setCountry(country);
        account.setLanguagePreference(languagePreference);
        account.setFavouriteCategoryId(favouriteCategoryId);
        account.setListOption(Boolean.parseBoolean(listOption));
        account.setBannerOption(Boolean.parseBoolean(bannerOption));
    }
}
