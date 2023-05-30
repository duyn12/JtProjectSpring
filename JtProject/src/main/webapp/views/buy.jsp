<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.*"%>
<%@page import ="java.io.FileOutputStream" %>    
<%@page import=" java.io.ObjectOutputStream" %>    
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <link rel="stylesheet" href="/css/checkoutcss.css" type="text/css">
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
      integrity="sha512-1sCRPdkRXhBV2PBLUdRb4tMg1w2YPf37qatUFeS7zlBy7jJI8Lf4VHwWfZZfpXtYSLy85pkm9GaYVYMfw5BC1A=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
    <link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<title>Thanh Toán </title>
</head>
<body>

    <header><h1>Checkout</h1></header>
    <div class="container">
      <div class="form">
        <form action="https://formcarry.com/s/zUN3wZx0e9" method="POST">
          <div class="contact">
            <h3>THÔNG TIN THANH TOÁN</h3>
            <label for="email">&nbsp;Email:</label>
            <div class="inputs">
              <span><i class="fa-solid fa-envelope"></i></span>
              <input
                type="email"
                name="email"
                id="email"
                placeholder="Enter your email..."
              />
            </div>
            <label for="phone">&nbsp;Phone:</label>
            <div class="inputs">
              <span><i class="fa-solid fa-phone"></i></span>
              <input
                type="number"
                name="phone"
                id="phone"
                placeholder="Enter your phone..."
              />
            </div>
          </div>
          <div class="shipping-address">
            <h3>Shipping Address</h3>
            <label for="name">&nbsp;Tên của bạn</label>
            <div class="inputs">
              <span><i class="fa-solid fa-user"></i></span>
              <input
                type="text"
                name="name"
                id="name"
                placeholder="Enter your Full Name..."
              />
            </div>

            <label for="address">&nbsp;Địa chỉ</label>
            <div class="inputs">
              <span><i class="fa-solid fa-house"></i></span>
              <input
                type="text"
                name="address"
                id="address"
                placeholder="Enter your address..."
              />
            </div>
            <label for="city">Thành Phố</label>
            <div class="inputs">
              <span><i class="fa-solid fa-city"></i></span>
              <input
                type="text"
                name="city"
                id="city"
                placeholder="Enter your city..."
              />
            </div>
          </div>
          <div class="post-country">
            <div class="country">
              <label for="country">Country</label>
              <div class="inputs">
                <span><i class="fa-solid fa-earth-americas"></i></span>
                <select name="country" id="country">
                  <option selected-value="Turkey">Tỉnh/Thành Phố</option>
                  <option value="ha noi">Hà Nội</option>
                  <option value="ho chi minh">Hồ Chí Minh</option>
                </select>
              </div>
            </div>
            <div class="post-code">
              <label for="post-code">Mã giảm giá</label>
              <div class="inputs">
                <span><i class="fa-solid fa-envelopes-bulk"></i></span>
                <input
                  type="number"
                  name="post-code"
                  id="post-code"
                  placeholder="Enter your postal code..."
                />
              </div>
            </div>
          </div>
          <div class="check-box">
            <div>
              <input type="checkbox" name="check-box" id="check-box" />
            </div>
            <div>
              <label for="check-box">See this information next time</label>
            </div>
          </div>
          <div class="continue">
            <input face="arial" type="submit" value="Submit" type="button" value="continue" class="continue-button" />
          </div>
        </form>
      </div>
        <form action="https://formcarry.com/s/zUN3wZx0e9" action="updateData" method="post">
      <div class="shopping-box">
        <div class="products">
	          <div class="product">
            <img src="/resources/Images/Hamhurger.png" alt="keyboard" />
            <div class="product-info">
              <h4 for="name">&nbsp;${pname}</h4>
              <div class="product-price">
                <p class="dollar">
                  <span for="price" class="first-price">&nbsp; ${ pprice }</span>
                  <%-- <span class="second-price"><%= rs.getInt(6) %></span> --%>
                </p>
              </div>
              <div class="product-amount">
                <i class="fa-solid fa-minus"></i>
                <p class="piece">1</p>
                <i class="fa-solid fa-plus"></i>
              </div>
              <div class="product-removal">
                <button class="remove-product">Xoá </button>
              </div>
              <div class="product-line-price">${ pprice }</div>
            </div>
          </div>
        <div class="buy-detail" id="cart-subtotal">
          <p>Subtotal</p>
          <p>0</p>
        </div>
        <div class="buy-detail" id="cart-tax">
          <p>VAT(%15)</p>
          <p>0</p>
        </div>
        <div class="buy-detail" id="cart-shipping">
          <p>Vận chuyển</p>
          <p>0</p>
        </div>
        <div class="buy-detail" id="cart-total">
          <p>Tổng</p>
          <p for="prince">&nbsp;0</p>
        </div>
      </div>
    </div>
    </form>
    <script src="/js/index.js"></script>
    	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
  </body>
<!--           <div class="product">
            <img src="/resources/Images/Cone.png" alt="mouse" />

            <div class="product-info">
              <h4>Wireless Mouse</h4>
              <div class="product-price">
                <p class="dollar">
                  <span class="first-price">34.99</span>
                  <span class="second-price">59.99</span>
                </p>
              </div>
              <div class="product-amount">
                <i class="fa-solid fa-minus"></i>
                <p class="piece">1</p>
                <i class="fa-solid fa-plus"></i>
              </div>
              <div class="product-removal">
                <button class="remove-product">Remove</button>
              </div>
              <div class="product-line-price">34.99</div>
            </div>
          </div>
          <div class="product">
            <img src="/resources/Images/Combo1.png" alt="headset" />

            <div class="product-info">
              <h4>Headset</h4>
              <div class="product-price">
                <p class="dollar">
                  <span class="first-price">74.99</span>
                  <span class="second-price">94.99</span>
                </p>
              </div>
              <div class="product-amount">
                <i class="fa-solid fa-minus"></i>
                <p class="piece">1</p>
                <i class="fa-solid fa-plus"></i>
              </div>
              <div class="product-removal">
                <button class="remove-product">Remove</button>
              </div>
              <div class="product-line-price">74.99</div>
            </div>
          </div>
        </div> -->


</html>