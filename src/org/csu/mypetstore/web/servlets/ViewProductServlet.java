package org.csu.mypetstore.web.servlets;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import  com.alibaba.fastjson2.JSON;
import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.domain.JsonTest;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;
import org.csu.mypetstore.service.LogService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
//应该是没什么用了
public class ViewProductServlet extends HttpServlet {
    private static final String VIEW_PRODUCT = "/WEB-INF/jsp/catalog/Product.jsp";
    private String productId;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        productId = request.getParameter("productId");
        System.out.println(productId);
        CatalogService service = new CatalogService();
        Product product = service.getProduct(productId);
        List<Item> itemList = service.getItemListByProduct(productId);

//        if(itemList != null) {
//            System.out.println(itemList.size());
//            int i = itemList.size();
//            while (i > 0) {
//                Item item = itemList.get(0);
//                System.out.println(item);
//                i--;
//            }
//        }

//        HttpSession session = request.getSession();
//        session.setAttribute("product", product);
//        session.setAttribute("itemList", itemList);

//        Account account = (Account)session.getAttribute("account");

//        if(account != null){
//            HttpServletRequest httpRequest= request;
//            String strBackUrl = "http://" + request.getServerName() + ":" + request.getServerPort()
//                    + httpRequest.getContextPath() + httpRequest.getServletPath() + "?" + (httpRequest.getQueryString());
//
//            LogService logService = new LogService();
//            String logInfo = logService.logInfo(" ") + strBackUrl + " 查看产品 " + product;
//            logService.insertLogInfo(account.getUsername(), logInfo);
//        }
        // 设置响应类型为 JSON
        System.out.println(itemList);

        // 解决json中文乱码
        response.setContentType("text/json;charset=UTF-8");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        // 将对象转换为 JSON 字符串
        String json = JSON.toJSONString(itemList);
        System.out.println(json);
        out.println(json);
        out.flush();
        out.close();
    }
}
