<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta>
    <link rel="shortcut icon" href="/resources/Images/LogoBurger.png" />
    <link rel="stylesheet" href="/css/styles.css" type="text/css">
<title>Sản phẩm</title>
</head>
<body>
<header class="header">

		<a href="/index" class="logo"> <img src="/resources/Images/LogoBurger.png" alt="">
		</a>
		<form action="searchServlet" method="get">

			<div class="search-for">
				<label for="nameproduct"><input class="search" type="text"
					name="q" placeholder="Nhập từ khoá" /> <!-- 				<button type="submit">Tìm kiếm</button></label> -->
			</div>

		</form>
				<button class="cta">
			<a href="#" class="hover-underline-animation"> Khuyến mãi</a>
		</button>
		<button class="cta">
			<a href="/user/products"  class="hover-underline-animation"> Cửa hàng </a>
		</button>
				<button class="cta">
			<a href="/contact"  class="hover-underline-animation"> Phản hồi </a>
		</button>
		<form class="sign">
			<button class="btnsignup">
				<div class="arrow-wrapper">
					<a href="giohang.jsp" class="fa fa-shopping-cart"> Giỏ hàng</a>

				</div>
			</button>
			<button class="btnsign">
				<div class="arrow-wrapper">
					<a href="logout" sec:authorize="isAuthenticated()" class="fa fa-sign-out"> Đăng xuất</a>
				</div>

			</button>
		</form>
	</header>
<section class="categories" items="${getProduct}">
      <h4>Tất cả sản phẩm</h4>
      <div class="text-xl">Sale</div>
<%
					try {
						String url = "jdbc:mysql://localhost:3306/springproject";
						Class.forName("com.mysql.cj.jdbc.Driver");
						Connection con = DriverManager.getConnection(url, "root", "");
						Statement stmt = con.createStatement();
						Statement stmt2 = con.createStatement();
						ResultSet rs = stmt.executeQuery("select * from products");
					%>
					<%
					while (rs.next()) {
					%>
      <div class="covers">
        <div class="cover-1">
<%--         <img src="<c:url value="/resources/Images/<%= rs.getInt(4) %>.png"/>"> </img> --%> <%-- ${getProduct.picture} --%>
          <div class="cover-grad"></div>
          <div class="cover-text">
            <div class="sub-title"><%= rs.getInt(6) %> đ</div>
            <h3><%= rs.getString(2) %></h3>
          </div>

        </div>
        		<%
				}
				%>
         </div>
    </section>
    		<%
		} catch (Exception ex) {
		out.println("Exception Occurred:: " + ex.getMessage());
		}
		%>
<style>
body {
  display: flex ;
   top: 0;
  left: 0;
  right: 0;
}
.categories {
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 90px 40px;
  position: fixed;

}

.covers {
  display: grid;
  grid-template-columns: repeat(4, 2fr);
  gap: 40px;

  
}

.categories .covers > div {
  height: 350px;
  width: 300px;
  position: relative;
}

.categories .cover-grad {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;

  background: linear-gradient(
      156.82deg,
      rgba(0, 0, 0, 0.6) 4.58%,
      rgba(0, 0, 0, 0) 69.61%
    ),
    linear-gradient(24.5deg, rgba(0, 0, 0, 0.2) 4.71%, rgba(0, 0, 0, 0) 71.49%);
}

.categories .cover-text {
  position: absolute;
  top: 250px;
  font-weight: 700;
  font-size: 22px;
  color: #fff;
  left: 20px;
  text-align: left;
}

.categories .cover-1 {
  background: url('/resources/Images/Hamhurger.png') no-repeat center center / cover;
} 


</style>

</body>
</html>