<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java"    pageEncoding="utf-8"%>
<%@ page import="java.lang.*"%>
<html >
<head>
  <meta charset="UTF-8">
  <title>Shopping Cart</title>
  <link href='https://fonts.googleapis.com/css?family=Lato:300,400' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="http://weloveiconfonts.com/api/?family=entypo">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  <link rel='stylesheet prefetch' href='https://s3-us-west-2.amazonaws.com/s.cdpn.io/5175/utf-latest.min.css'>

      <style>
      /* NOTE: The styles were added inline because Prefixfree needs access to your styles and they must be inlined if they are on local disk! */
      [class*="entypo-"]:before { font-family: 'entypo', sans-serif; }
body {
  background-color: #ecf0f1;
  font: 300 1.25em/1.4 "Lato", sans-serif;
  color: #686868;
}
h1, h2, h3, h4, h5, h6 { font-weight: 400; }
h1, .sub-heading {
  text-align: center;
  margin: .5rem 0 1rem;
}
.sub-heading {
  font-size: .75em;
  font-weight: 300;
}

/**
 * @section: utilities;
 * @see: Justify Grid [http://justifygrid.com/]
 */
._grid {
  text-align: justify !important;
  text-justify: distribute-all-lines;
  font-size: 0 !important;
  text-rendering: optimizespeed;
}
._grid:after {
  content: "";
  display: inline-block;
  width: 100%;
}
._column {
  display: inline-block;
  vertical-align: top;
  font-size: medium;
  text-align: left;
  text-rendering: optimizeLegibility;
}
._btn {
  display: inline-block;
  background-color: #bdc3c7;
  border: none;
  padding: .5em .75em;
  text-align: center;
  font-weight: 300;
}
._btn:hover,
.cart-totals:hover ._btn {
  background-color: #3498db;
  color: #ecf0f1;
}

/**
 * @section: shopping-cart;
 */
.shopping-cart {
  width: 80%;
  max-width: 60rem;
  margin: 0 auto;
}
/**
 * @extends: _grid;
 */
.shopping-cart--list-item {
  border: 1px solid #bdc3c7;
  margin-bottom: 3rem;
  height: 10rem;
  overflow: hidden;
}
.shopping-cart--list-item:hover,
.shopping-cart--list-item:hover * {
  border-color: #3498db;
}
.shopping-cart--list-item > ._column {
    height: 100%; /* make vertical lines match */
}

/**
 * @section: product-image;
 * @extends: _column;
 */
.product-image {
  width: 16.663198%;
  background: url("data:image/gif;base64,R0lGODlhAQABAIAAAAAAAP///yH5BAEAAAAALAAAAAABAAEAAAIBRAA7") no-repeat center / cover transparent;
}

/**
 * @section: product-info;
 * @extends: _column;
 */
.product-info {
  width: 70.832119%;
  padding: .5rem;
}
.product-name {
  font: 300 2.4em/1 "Lato", sans-serif;
  letter-spacing: -.025em;
  margin: 0 0 .125em;
}
.price {
  line-height: 1;
  text-align: right;
}
.product-single-price {
  margin-top: -1rem;
  font-size: 2.4em;
}

/**
 * @section: product-modifiers;
 * @extends: _column;
 */
.product-modifiers {
  width: 12.496358%;
  text-align: right;
  border-left: 1px solid #bdc3c7;
}
.product-subtract,
.product-plus,
.product-qty {
  width: 33.330557%;
  background-color: transparent;
  color: #686868;
  text-align: center;
}
.product-qty {
  padding: .35em .75em;
}
.product-remove {
  font-size: .875em;
  margin-top: 3.35rem;
  background-color: #e74c3c;
  color: #ecf0f1;
  width: 100%;
  visibility: hidden;
}
.product-modifiers:hover .product-remove {
  visibility: visible;
}
.product-remove:before {
  margin-right: .5em;
}
.product-remove:hover {
  background-color: #c0392b;
}
.product-total-price {
  border-top: 1px solid #bdc3c7;
  color: #95a5a6;
  font-size: 1.25em;
  padding: .5rem;
}
.shopping-cart--list-item:hover .product-total-price {
  background-color: #3498db;
  color: #ecf0f1;
}

/**
 * @section: cart-totals;
 * @extends: _grid;
 */
.cart-totals {
  border-top: 1px solid #bdc3c7;
  margin-bottom: 3rem;
}
.cart-totals ._column {
  width: 19.984013%;
  padding: .5rem;
  line-height: 1.2;
}
.cart-totals ._column:not(:last-of-type) {
  border-right: 1px solid #bdc3c7;
}
.cart-totals ._column:first-of-type {
  padding-left: 0;
}
.cart-totals-key {
  font-size: 1.125em;
  color: #bdc3c7;
}
.cart-totals ._column:hover .cart-totals-value,
.cart-totals ._column:hover .cart-totals-key {
  color: #333;
}
.cart-totals-value {
  font-size: 2em;
}
._column.checkout {
  text-align: right;
  padding: 0;
  margin-top: 1.5em;
  vertical-align: middle;
}
.checkout-btn:before {
  margin-right: .5em;
}
._btn.checkout-btn:hover {
  background-color: #2980b9;
}

/**
 * Animations
 */
.product-remove,
.cart-totals * {
  transition: all .2s ease;
}
.closing {
  transition: all .5s ease;
  transform: translate3d(0, -100%, 0);
  opacity: 0;
}

    </style>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/prefixfree/1.0.7/prefixfree.min.js"></script>

</head>

<body>
  <div class="main">
  <h1>WELCOME</h1>
  <h2 class="sub-heading">Student Expenses</h2>

  <section class="shopping-cart">
    <ol class="ui-list shopping-cart--list" id="shopping-cart--list">

    
    </ol>

    <footer class="_grid cart-totals">
      <div class="_column subtotal" id="subtotalCtr">
        <div class="cart-totals-key">Subtotal</div>
        <div class="cart-totals-value">$0.00</div>
      </div>
      <div class="_column shipping" id="shippingCtr">
        <div class="cart-totals-key">Dues</div>
        <div class="cart-totals-value">$0.00</div>
      </div>
      <div class="_column taxes" id="taxesCtr">
        <div class="cart-totals-key">Taxes (6%)</div>
        <div class="cart-totals-value">$0.00</div>
      </div>
      <div class="_column total" id="totalCtr">
        <div class="cart-totals-key">Total</div>
        <div class="cart-totals-value">$0.00</div>
      </div>
      <div class="_column checkout">
        <button class="_btn checkout-btn entypo-forward">PAYDUES</button>
      </div>
    </footer>

  </section>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/zepto/1.0/zepto.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>
