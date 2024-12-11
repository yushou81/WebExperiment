function displayOrderDetails(order) {
    const table = $("#Catalog .container table");

    // 清空表格内容
    table.empty();

    // 添加新的订单详情内容
    table.append(`
    <tr>
      <th align="center" colspan="2">
        Order #${order.orderId} ${new Date(order.orderDate).toLocaleString()}
      </th>
    </tr>
    <tr>
      <th colspan="2">Payment Details</th>
    </tr>
    <tr>
      <td>Card Type:</td>
      <td>${order.cardType || "N/A"}</td>
    </tr>
    <tr>
      <td>Card Number:</td>
      <td>${order.creditCard || "N/A"} * Fake number!</td>
    </tr>
    <tr>
      <td>Expiry Date (MM/YYYY):</td>
      <td>${order.expiryDate || "N/A"}</td>
    </tr>
    <tr>
      <th colspan="2">Billing Address</th>
    </tr>
    <tr>
      <td>First name:</td>
      <td>${order.billToFirstName || "N/A"}</td>
    </tr>
    <tr>
      <td>Last name:</td>
      <td>${order.billToLastName || "N/A"}</td>
    </tr>
    <tr>
      <td>Address 1:</td>
      <td>${order.billAddress1 || "N/A"}</td>
    </tr>
    <tr>
      <td>Address 2:</td>
      <td>${order.billAddress2 || "N/A"}</td>
    </tr>
    <tr>
      <td>City:</td>
      <td>${order.billCity || "N/A"}</td>
    </tr>
    <tr>
      <td>State:</td>
      <td>${order.billState || "N/A"}</td>
    </tr>
    <tr>
      <td>Zip:</td>
      <td>${order.billZip || "N/A"}</td>
    </tr>
    <tr>
      <td>Country:</td>
      <td>${order.billCountry || "N/A"}</td>
    </tr>
    <tr>
      <th colspan="2">Shipping Address</th>
    </tr>
    <tr>
      <td>First name:</td>
      <td>${order.shipToFirstName || "N/A"}</td>
    </tr>
    <tr>
      <td>Last name:</td>
      <td>${order.shipToLastName || "N/A"}</td>
    </tr>
    <tr>
      <td>Address 1:</td>
      <td>${order.shipAddress1 || "N/A"}</td>
    </tr>
    <tr>
      <td>Address 2:</td>
      <td>${order.shipAddress2 || "N/A"}</td>
    </tr>
    <tr>
      <td>City:</td>
      <td>${order.shipCity || "N/A"}</td>
    </tr>
    <tr>
      <td>State:</td>
      <td>${order.shipState || "N/A"}</td>
    </tr>
    <tr>
      <td>Zip:</td>
      <td>${order.shipZip || "N/A"}</td>
    </tr>
    <tr>
      <td>Country:</td>
      <td>${order.shipCountry || "N/A"}</td>
    </tr>
    <tr>
      <td>Courier:</td>
      <td>${order.courier || "N/A"}</td>
    </tr>
    <tr>
      <td colspan="2">Status: ${order.status || "N/A"}</td>
    </tr>
    <tr>
      <td colspan="2">
        <table>
          <tr>
            <th>Item ID</th>
            <th>Description</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Total Cost</th>
          </tr>
          ${order.lineItems.map(lineItem => `
            <tr>
              <td>
                <a href="viewItem?itemId=${lineItem.item.itemId}">${lineItem.item.itemId}</a>
              </td>
              <td>
                ${lineItem.item.attribute1 || "N/A"} ${lineItem.item.product.name || "N/A"}
              </td>
              <td>${lineItem.quantity}</td>
              <td>$${lineItem.unitPrice}</td>
              <td>$${lineItem.total}</td>
            </tr>
          `).join("")}
          <tr>
            <th colspan="5">
              Total: $${order.totalPrice}
            </th>
          </tr>
        </table>
      </td>
    </tr>
  `);
}