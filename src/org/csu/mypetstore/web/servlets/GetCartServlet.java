package org.csu.mypetstore.web.servlets;

import com.google.gson.Gson;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.service.CartService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

public class GetCartServlet extends HttpServlet {
    private CartService cartService=new CartService();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");

        //返回json数据
        Cart cart=cartService.getCart(username);
        HttpSession session=request.getSession();
        session.setAttribute("cart",cart);
        Gson gson = new Gson();
        String json = gson.toJson(cart);
//        调试
//        System.out.println(json);

        response.setContentType("application/json");
        PrintWriter out=response.getWriter();
        out.print(json);
        out.flush();
        out.close();
    }
}
