package org.csu.mypetstore.web.servlets;

import org.csu.mypetstore.domain.Category;
import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.service.CatalogService;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

public class CategoryFormServlet extends HttpServlet{
    private CatalogService catalogService;

    private static final String CATGORY_FORM = "/WEB-INF/jsp/catalog/category.jsp";
    public CategoryFormServlet(){
        catalogService = new CatalogService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String categoryId = req.getParameter("categoryId");
        Category category = this.catalogService.getCategory(categoryId);
        List<Product> productList = this.catalogService.getProductListByCategory(categoryId);
        HttpSession session = req.getSession();
        session.setAttribute("category",category);
        session.setAttribute("productList",productList);
        req.getRequestDispatcher(CATGORY_FORM).forward(req,resp);
    }
}
