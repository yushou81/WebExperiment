package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.service.CartService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

public class CartFormServlet extends HttpServlet{
    private CartService cartService;

    private static final String CART_FORM = "/WEB-INF/jsp/cart/cart.jsp";

    public CartFormServlet(){
        cartService = new CartService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        Account loginAccount = (Account) session.getAttribute("loginAccount");

        if(loginAccount == null){
            resp.sendRedirect("signonForm");
        }else {
            Cart cart = cartService.createCarte(loginAccount.getUsername());
            session.setAttribute("cart",cart);

            req.getRequestDispatcher(CART_FORM).forward(req,resp);
        }
    }
}
