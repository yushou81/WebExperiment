//package org.csu.mypetstore.web.servlets;
//
//import org.csu.mypetstore.domain.Account;
//import org.csu.mypetstore.domain.Cart;
//import org.csu.mypetstore.domain.CartItem;
//import org.csu.mypetstore.domain.Item;
//import org.csu.mypetstore.service.CartService;
//import org.csu.mypetstore.service.CatalogService;
//import org.csu.mypetstore.service.LogService;
//
//import javax.servlet.ServletException;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;
//import java.io.IOException;
//import java.util.Iterator;
//
//public class UpdateCartQuantitiesServlet extends HttpServlet {
//
//    private static final String VIEW_CART = "/WEB-INF/jsp/cart/Cart.jsp";
//
//    private String workingItemId;
//    private Cart cart;
//
//    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        doGet(request, response);
//    }
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        workingItemId = request.getParameter("workingItemId");
//        CatalogService catalogService = new CatalogService();
//
//        //从对话中，获取购物车
//        HttpSession session = request.getSession();
//        cart = (Cart)session.getAttribute("cart");
//
////        Iterator<CartItem> cartItemIterator = cart.getAllCartItems();
//
//        session.setAttribute("cart", cart);
//
//        Account account = (Account)session.getAttribute("account");
//
//        if(account != null){
//            CartService cartService=new CartService();
//            while (cartItemIterator.hasNext()){
//                //产品数量增加
//                CartItem cartItem = (CartItem)cartItemIterator.next();
//                String itemId = cartItem.getItem().getItemId();
//
//                try {
//                    int quantity = Integer.parseInt((String) request.getParameter(itemId));
//                    cart.setQuantityByItemId(itemId, quantity);
//                    cartService.updateCart(account.getUsername(),itemId,quantity);
//                    if (quantity < 1) {
//                        cartItemIterator.remove();
//                        cartService.removeItem(account.getUsername(), itemId);
//                    }
//                } catch (Exception e) {
//                    e.printStackTrace();
//                }
//
//            }
//
//            HttpServletRequest httpRequest= request;
//            String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
//                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());
//
//            LogService logService = new LogService();
//            String logInfo = logService.logInfo(" ") + strBackUrl + " 更新购物车商品数量";
//            logService.insertLogInfo(account.getUsername(), logInfo);
//        }
//
//        request.getRequestDispatcher(VIEW_CART).forward(request, response);
//    }
//}
