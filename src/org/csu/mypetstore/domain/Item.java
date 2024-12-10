package org.csu.mypetstore.domain;

import com.google.gson.Gson;

import java.io.Serializable;
import java.math.BigDecimal;

public class Item implements Serializable {

  private static final long serialVersionUID = -2159121673445254631L;

  private String itemId;
  private String productId;
  private BigDecimal listPrice;
  private BigDecimal unitCost;
  private int supplierId;
  private String status;
  private String attribute1;
  private String attribute2;
  private String attribute3;
  private String attribute4;
  private String attribute5;
  private Product product;
  private int quantity;
  private String img;

  public String getItemId() {
    return itemId;
  }

  public void setItemId(String itemId) {
    this.itemId = itemId.trim();
  }

  public int getQuantity() {
    return quantity;
  }

  public void setQuantity(int quantity) {
    this.quantity = quantity;
  }

  public Product getProduct() {
    return product;
  }

  public void setProduct(Product product) {
    this.product = product;
  }

  public String getProductId() {
    return productId;
  }

  public void setProductId(String productId) {
    this.productId = productId;
  }

  public int getSupplierId() {
    return supplierId;
  }

  public void setSupplierId(int supplierId) {
    this.supplierId = supplierId;
  }

  public BigDecimal getListPrice() {
    return listPrice;
  }

  public void setListPrice(BigDecimal listPrice) {
    this.listPrice = listPrice;
  }

  public BigDecimal getUnitCost() {
    return unitCost;
  }

  public void setUnitCost(BigDecimal unitCost) {
    this.unitCost = unitCost;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getAttribute1() {
    return attribute1;
  }

  public void setAttribute1(String attribute1) {
    this.attribute1 = attribute1;
  }

  public String getAttribute2() {
    return attribute2;
  }

  public void setAttribute2(String attribute2) {
    this.attribute2 = attribute2;
  }

  public String getAttribute3() {
    return attribute3;
  }

  public void setAttribute3(String attribute3) {
    this.attribute3 = attribute3;
  }

  public String getAttribute4() {
    return attribute4;
  }

  public void setAttribute4(String attribute4) {
    this.attribute4 = attribute4;
  }

  public String getAttribute5() {
    return attribute5;
  }

  public void setAttribute5(String attribute5) {
    this.attribute5 = attribute5;
  }

  @Override
  public String toString() {
    // 手动拼接 JSON 字符串
    StringBuilder json = new StringBuilder("{");
    json.append("\"itemId\":\"").append(itemId).append("\",");
    json.append("\"productId\":\"").append(productId).append("\",");
    json.append("\"listPrice\":").append(listPrice == null ? "null" : listPrice).append(",");
    json.append("\"unitCost\":").append(unitCost == null ? "null" : unitCost).append(",");
    json.append("\"supplierId\":").append(supplierId).append(",");
    json.append("\"status\":\"").append(status).append("\",");
    json.append("\"attribute1\":\"").append(attribute1).append("\",");
    json.append("\"attribute2\":\"").append(attribute2).append("\",");
    json.append("\"attribute3\":\"").append(attribute3).append("\",");
    json.append("\"attribute4\":\"").append(attribute4).append("\",");
    json.append("\"attribute5\":\"").append(attribute5).append("\",");
    json.append("\"product\":").append(product == null ? "null" : product.toString()).append(",");
    json.append("\"quantity\":").append(quantity);
    json.append("}");
    return json.toString();
  }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
