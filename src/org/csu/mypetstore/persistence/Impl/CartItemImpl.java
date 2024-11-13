package org.csu.mypetstore.persistence.Impl;

import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.persistence.CartItemDAO;
import org.csu.mypetstore.persistence.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

public class CartItemImpl implements CartItemDAO{
    private static final String INSERT_CART_ITEM =
            "INSERT INTO CARTITEM (USERID,ITEMID,QUANTITY) VALUES( ?, ?, 1)";

    private static final String GET_CART_ITEMS_BY_USERNAME =
            "SELECT ITEMID,QUANTITY FROM CARTITEM WHERE USERID = ?";

    private static final String UPDATE_CART_ITEMS =
            "UPDATE CARTITEM SET QUANTITY = ? WHERE USERID = ? AND ITEMID = ?";

    private static final String REMOVE_CART_ITEM_BY_ID =
            "DELETE FROM CARTITEM WHERE USERID = ? AND ITEMID = ?";

    private static final String CLEAR_CART_ITEMS =
            "DELETE FROM CARTITEM WHERE USERID = ?";

    private static final String CONTAINS_CART_ITEM =
            "SELECT QUANTITY FROM CARTITEM WHERE USERID = ? AND ITEMID = ?";

    @Override
    public void insertCartItem(String username, String itemId) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CART_ITEM);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, itemId);
            preparedStatement.executeUpdate();
            DBUtil.closeStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public Map<String, CartItem> getCartItemsByUsername(String username) {
        Map<String, CartItem> cartItemList = Collections.synchronizedMap(new HashMap<String, CartItem>());
        try{
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(GET_CART_ITEMS_BY_USERNAME);
            preparedStatement.setString(1,username);
            ResultSet resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                CartItem cartItem = new CartItem();
                cartItem.setItemId(resultSet.getString(1));
                cartItem.setQuantity(resultSet.getInt(2));
                cartItemList.put(cartItem.getItemId(),cartItem);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closeStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        }catch (Exception e){
            e.printStackTrace();
        }
        return cartItemList;
    }

    @Override
    public int containsCartItem(String username, String itemId) {
        int quantity = 0;
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(CONTAINS_CART_ITEM);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, itemId);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                quantity = resultSet.getInt(1);
            }
            DBUtil.closeResultSet(resultSet);
            DBUtil.closeStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return quantity;
    }

    @Override
    public void updateCartItem(String username,String itemId,int quantity) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(UPDATE_CART_ITEMS);
            preparedStatement.setInt(1, quantity);
            preparedStatement.setString(2, username);
            preparedStatement.setString(3, itemId);
            preparedStatement.executeUpdate();
            DBUtil.closeStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void removeCartItemById(String username, String itemId) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(REMOVE_CART_ITEM_BY_ID);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, itemId);
            preparedStatement.executeUpdate();
            DBUtil.closeStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override
    public void clearCartItems(String username) {
        try {
            Connection connection = DBUtil.getConnection();
            PreparedStatement preparedStatement = connection.prepareStatement(CLEAR_CART_ITEMS);
            preparedStatement.setString(1, username);
            preparedStatement.executeUpdate();
            DBUtil.closeStatement(preparedStatement);
            DBUtil.closeConnection(connection);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
