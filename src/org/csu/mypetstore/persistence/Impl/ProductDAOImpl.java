package org.csu.mypetstore.persistence.Impl;

import org.csu.mypetstore.domain.Product;
import org.csu.mypetstore.persistence.DBUtil;
import org.csu.mypetstore.persistence.ProductDAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAOImpl implements ProductDAO {

    //查询语句
    private static final String getProductListByCategoryString = "SELECT PRODUCTID, NAME, DESCN as description,img, " +
            "CATEGORY as categoryId FROM PRODUCT WHERE CATEGORY = ?";
    private static final String getProductString = "SELECT PRODUCTID, NAME, DESCN as description, CATEGORY as categoryId " +
            "FROM PRODUCT WHERE PRODUCTID = ?";
    private static final String searchProductListString = "select PRODUCTID, NAME, DESCN as description, " +
            "CATEGORY as categoryId ,img from PRODUCT WHERE lower(name) like ?";
    private static final String autoFixAearchProductListString = "select NAME " +
            "from PRODUCT WHERE lower(name) like ?";

    @Override
    public List<Product> getProductListByCategory(String categoryId) {
        List<Product> products = new ArrayList<Product>();
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(getProductListByCategoryString);
            pStatement.setString(1, categoryId);
            ResultSet resultSet = pStatement.executeQuery();
            while(resultSet.next()){
                Product product = new Product();
                product.setProductId(resultSet.getString(1));
                product.setName(resultSet.getString(2));
                product.setDescription(resultSet.getString(3));
                product.setImg(resultSet.getString(4));
                product.setCategoryId(resultSet.getString(5));

                products.add(product);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatent(pStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }

        return products;
    }

    @Override
    public Product getProduct(String productId) {
        Product product = null;
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(getProductString);
            pStatement.setString(1, productId);
            ResultSet resultSet = pStatement.executeQuery();
            if(resultSet.next()){
                product = new Product();
                product.setProductId(resultSet.getString(1));
                product.setName(resultSet.getString(2));
                product.setDescription(resultSet.getString(3));
                product.setCategoryId(resultSet.getString(4));
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatent(pStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return product;
    }

    @Override
    public List<Product> searchProductList(String keywords) {
        List<Product> productList = new ArrayList<Product>();
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(searchProductListString);
            pStatement.setString(1, keywords);
            ResultSet resultSet = pStatement.executeQuery();

            System.out.println("search"+keywords);

            while (resultSet.next()){
                Product product = new Product();
                product.setProductId(resultSet.getString(1));
                product.setName(resultSet.getString(2));
                product.setDescription(resultSet.getString(3));
                product.setCategoryId(resultSet.getString(4));
                product.setImg(resultSet.getString(5));

                productList.add(product);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatent(pStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return productList;
    }

    public List<String> autoFixSearchProductList(String keywords) {
        List<String> productStrings = new ArrayList<String>();
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement pStatement = connection.prepareStatement(autoFixAearchProductListString);

            System.out.println(keywords);

            pStatement.setString(1, keywords);
            ResultSet resultSet = pStatement.executeQuery();

            System.out.println(resultSet);

            while (resultSet.next()){
                productStrings.add(resultSet.getString(1));
                System.out.println("sss"+productStrings);

            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closePreparedStatent(pStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return productStrings;
    }

}
