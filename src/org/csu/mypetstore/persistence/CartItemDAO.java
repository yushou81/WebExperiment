package org.csu.mypetstore.persistence;

import org.csu.mypetstore.domain.CartItem;
import java.util.List;
import java.util.Map;

public interface CartItemDAO {
    void insertCartItem(String username,String itemId);

    Map<String, CartItem> getCartItemsByUsername(String username);

    int containsCartItem(String username,String itemId);


    void updateCartItem(String username,String itemId,int quantity);

    void removeCartItemById(String username,String itemId);

    void clearCartItems(String username);

    void renewCartItem(String username, String itemId, int quantity);
}
