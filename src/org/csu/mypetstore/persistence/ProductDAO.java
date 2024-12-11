package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public interface ProductDAO {


    List<Product> getProductListByCategory(String categoryId);

    Product getProduct(String productId);

    List<Product> searchProductList(String keywords);

    List<String> autoFixSearchProductList(String keywords);
}
