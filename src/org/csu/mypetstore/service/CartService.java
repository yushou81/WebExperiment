package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Cart;
import org.csu.mypetstore.domain.CartItem;
import org.csu.mypetstore.domain.Item;
import org.csu.mypetstore.persistence.CartItemDAO;
import org.csu.mypetstore.persistence.ItemDAO;
import org.csu.mypetstore.persistence.Impl.CartItemImpl;
import org.csu.mypetstore.persistence.Impl.ItemDAOImpl;

import java.util.Map;

public class CartService {
    private ItemDAO itemDao;
    private CartItemDAO cartItemDao;

    public CartService(){
        itemDao = new ItemDAOImpl();
        cartItemDao = new CartItemImpl();
    }

    public Cart getCart(String username){
        Cart cart = new Cart();
        Map<String, CartItem> cartItemMap = cartItemDao.getCartItemsByUsername(username);
        cart.setCartItemCount(cartItemMap.size());
        cart.setCatItemMap(cartItemMap);
        return cart;
    }


//   废弃函数
    public Cart creatCart(String username){
        Cart cart = new Cart();
        Map<String, CartItem> cartItemMap = cartItemDao.getCartItemsByUsername(username);
        for (CartItem cartItem : cartItemMap.values()){
            boolean isInStock = itemDao.getInventoryQuantity(cartItem.getItemId()) > 0;
            Item item = itemDao.getItem(cartItem.getItemId());
            cartItem.setInStock(isInStock);
            cartItem.setItem(item);
            cart.addCartItem(cartItem);
        }
        return cart;
    }

    public void addItemToCart(String username, String itemId){
        int quantity = cartItemDao.containsCartItem(username,itemId);
        if(quantity == 0){
            cartItemDao.insertCartItem(username,itemId);
        }else {
            cartItemDao.updateCartItem(username,itemId,quantity + 1);
        }
    }

    public void updateCart(String username, String itemId, int quantity){
        cartItemDao.updateCartItem(username,itemId,quantity);
    }

    public void removeItem(String username, String itemId){
        cartItemDao.removeCartItemById(username,itemId);
    }

    public void clearCart(String username){
        cartItemDao.clearCartItems(username);
    }

    public void renewCart(String username, String itemId, int quantity) {
        cartItemDao.renewCartItem(username,itemId,quantity);
    }
}
