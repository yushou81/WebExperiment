package org.csu.mypetstore.web.servlets;

import com.google.gson.Gson;
import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.persistence.Impl.ProductDAOImpl;
import org.csu.mypetstore.persistence.ProductDAO;
import org.csu.mypetstore.service.AccountService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class AutoFixServlet extends HttpServlet {

    private Account account;
    private AccountService accountService;
    private ProductDAO productDAO;

    public AutoFixServlet() {
        productDAO = new ProductDAOImpl();
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String keyword = req.getParameter("keyword");

        List<String> productStringList= productDAO.autoFixSearchProductList(keyword);

        Gson gson = new Gson();
        String json = gson.toJson(productStringList);

        resp.setContentType("application/json;charset=utf-8");

        PrintWriter out = resp.getWriter();

        out.print(json);

        out.flush();
        out.close();
    }
}
