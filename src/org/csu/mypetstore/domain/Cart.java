package org.csu.mypetstore.domain;

//import com.ibatis.common.util.PaginatedArrayList;
import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class Cart implements Serializable {

  private static final long serialVersionUID = 8329559983943337176L;

  private Map<String, CartItem> cartItemMap = Collections.synchronizedMap(new HashMap<String, CartItem>());
  private int cartItemCount;

  public int getCartItemCount() {
    return cartItemCount;
  }

  public void setCartItemCount(int cartItemCount) {
    this.cartItemCount = cartItemCount;
  }

  public boolean containsItemId(String itemId) {
    return cartItemMap.containsKey(itemId);
  }

  //增加

  public void addCartItem(CartItem cartItem){
    cartItemMap.put(cartItem.getItemId(), cartItem);
  }

  public void addItem(Item item, boolean isInStock) {
    CartItem cartItem = (CartItem) cartItemMap.get(item.getItemId());
    if (cartItem == null) {
      cartItem = new CartItem();
      cartItem.setItem(item);
      cartItem.setQuantity(0);
      cartItem.setInStock(isInStock);
      cartItemMap.put(item.getItemId(), cartItem);
    }
    cartItem.incQuantity();
  }

  public Item removeItemById(String itemId) {
    CartItem cartItem = (CartItem) cartItemMap.remove(itemId);
    if (cartItem == null) {
      return null;
    } else {
      return cartItem.getItem();
    }
  }

  public void incQuantityByItemId(String itemId) {
    CartItem cartItem = (CartItem) cartItemMap.get(itemId);
    cartItem.incQuantity();
  }

  public int getNumberOfSpecificItem(String itemId){
    CartItem cartItem = (CartItem) cartItemMap.get(itemId);
    return cartItem.getQuantity();
  }

  public void setQuantityByItemId(String itemId, int quantity) {
    CartItem cartItem = (CartItem) cartItemMap.get(itemId);
    cartItem.setQuantity(quantity);
  }

  public BigDecimal getSubTotal() {
    BigDecimal subTotal = new BigDecimal("0");
    Iterator<Map.Entry<String, CartItem>> i = cartItemMap.entrySet().iterator();
    while (i.hasNext()) {
      Map.Entry<String, CartItem> entry = i.next();
      CartItem cartItem = entry.getValue();
      Item item = cartItem.getItem();
      BigDecimal listPrice = item.getListPrice();
      BigDecimal quantity = new BigDecimal(String.valueOf(cartItem.getQuantity()));
      subTotal = subTotal.add(listPrice.multiply(quantity));
    }
    return subTotal;
  }

  public void setCatItemMap(Map<String, CartItem> cartItemMap) {
    this.cartItemMap =cartItemMap;
  }
  public Map<String, CartItem> getCartItemMap() {
    return cartItemMap;
  }
}
