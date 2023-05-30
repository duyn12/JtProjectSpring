<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="java.text.*"%>
<!doctype html>
<html
      xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="/css/styles.css" type="text/css">
    <link rel="shortcut icon" href="/resources/Images/LogoBurger.png" />
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
         
    <title>Trang chủ | Thức ăn nhanh</title>
    
</head>
<body>
	<header class="header">

		<a href="#" class="logo"> <img src="/resources/Images/LogoBurger.png" alt="">
		</a>
		<form action="searchServlet" method="get">

			<div class="search-for">
				<label for="nameproduct"><input class="search" type="text"
					name="q" placeholder="Nhập từ khoá" /> 
			</div>

		</form>
				<button class="cta">
			<a href="/sale" class="hover-underline-animation"> Khuyến mãi</a>
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
					<a href="categories" class="fa fa-shopping-cart"> Giỏ hàng</a>

				</div>

			</button>
						<button class="btnsignup">
				<div class="arrow-wrapper">
					<a href="profileDisplay" class="fa fa-">${ username }</a>

				</div>

			</button>
			<button class="btnsign">
				<div class="arrow-wrapper">
					<a href="logout" sec:authorize="isAuthenticated()" class="fa fa-sign-out"> Đăng xuất</a>
				</div>

			</button>
		</form>
	</header>
<section class="wrapper">
        <div class="container-fostrap">

<br>
<br>
<br>
	<section class="home" id="home">
<div class="bg mt-5">
  <div class="bg-product mt-5">
    <div class="container product">
      <div class="row">
        <div id="sliderproduct" class="carousel slide " data-ride="carousel" data-interval="3000">
          <ol class="carousel-indicators">
            <li data-target="#sliderproduct" data-slide-to="0" class="active"></li>
            <li data-target="#sliderproduct" data-slide-to="1"></li>
            <li data-target="#sliderproduct" data-slide-to="2"></li>
          </ol>
          <div class="carousel-inner" role="listbox" data-interval="3000000">
            <div class="carousel-item active">
              <div class="container text-center">
                <div class="row">
                  <div class="col-sm-6 image">
                    <div class="item">
                      <img class="img-fluid" src="https://tmbidigitalassetsazure.blob.core.windows.net/secure/RMS/attachments/37/1200x1200/Sausage-Sliders-with-Cran-Apple-Slaw_exps48783_SD2235819D06_24_2bC_RMS.jpg" alt="">
                    </div><!--enditem-->
                  </div><!--endcol-->
                  <div class="col-sm-6">
                    <div class="top d-flex justify-content-center">
                    </div><!--endtop-->
                    <div class="details">
                      <h2 class="cr3"> Burger</h2>
                      <p class="cr4"> tomato, green salad, pita,<br> ketchup, mayonnaise, â¦.</p>
                      <div class="rating">
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                        <i class="fa fa-star"></i>
                      </div><!--endrating-->
                      <p class="cr1">$ 3.55-$ 5.55</s></p>
                  <a href="/getProduct" class="btn btn-food">Mua ngay</a>
                </div><!--enddetails-->
              </div><!--endcol-->
            </div><!--endrow-->
          </div><!--endcontainer-->
        </div><!--endcarousel-item-->
        <div class="carousel-item">
          <div class="container text-center">
            <div class="row">
              <div class="col-sm-6 image">
                <div class="item">
                   <img class="img-fluid" src="/resources/Images/Menu+BG+1.jpg" alt="">
                </div><!--enditem-->
              </div><!--endcol-->
              <div class="col-sm-6">
                <div class="top d-flex justify-content-center">
                </div><!--endtop-->
                <div class="details">
                  <h2 class="cr3">cheeze pizza</h2>
                  <p class="cr4">margarita,<br> ketchup, maionese, â¦.</p>
                  <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div><!--endrating-->
                  <p class="cr1">$ 3.55-$ 5.55</s></p>
              <a href="/getProduct" class="btn btn-food">Buy Now</a>
            </div><!--enddetails-->
          </div><!--endcol-->
        </div><!--endrow-->
      </div><!--endcontainer-->
    </div><!--endcarousel-item-->
      <div class="carousel-item">
          <div class="container text-center">
            <div class="row">
              <div class="col-sm-6 image">
                <div class="item">
   <img class="img-fluid" src="/resources/Images/MENU-PC_Coca-Zero-1L5_trang.png" alt="">
                </div><!--enditem-->
              </div><!--endcol-->
              <div class="col-sm-6">
                <div class="top d-flex justify-content-center">
                </div><!--endtop-->
                <div class="details">
                  <h2 class="cr3">fruits</h2>
                  <p class="cr4">margarita,<br> ketchup, maionese,</p>
                  <div class="rating">
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                    <i class="fa fa-star"></i>
                  </div><!--endrating-->
                  <p class="cr1">$ 3.55-$ 5.55</s></p>
              <a href="/user/products" class="btn btn-food">Buy Now</a>
            </div><!--enddetails-->
          </div><!--endcol-->
        </div><!--endrow-->
      </div><!--endcontainer-->
    </div><!--endcarousel-item-->
    <a class="carousel-control-prev fa fa-angle-left" href="#sliderproduct" role="button" data-slide="prev">
    </a>
    <a class="carousel-control-next fa fa-angle-right" href="#sliderproduct" role="button" data-slide="next">
    </a>
  </div><!--endslidesliderproduct-->
</div><!--endrow-->
</div><!--endcontainer-->
</div><!--endbg-product-->
</div>
</div>
<div class="quickly-contact">
	<a href="tel:19006960">
	<img class="messenger" alt="delivery" src="https://z-p3-static.xx.fbcdn.net/rsrc.php/yd/r/hlvibnBVrEb.svg"></img>
	</a>
</div>
</section>
    <section id="about" class="about">
        <div class="container grid">
        </div>
    </section>

    
                    
<section class="blogs" id="blogs">
		<h1 class="heading">
			Sản Phẩm <span> </span>
		</h1>
<%-- 				<div class="box-container">
					<div class="box">
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



				<div class="image">
					<img src="https://img.jamieoliver.com/jamieoliver/recipe-database/oldImages/large/62_36_1429634659.jpg?tr=w-800,h-800" alt="">
				</div>
				<div class="content">
					<a href="#" class="title"><%= rs.getInt(1) %></a>
					<p><%= rs.getInt(4) %> đ</p>
				</div>
					<%
				}
				%>
				    		<%
		} catch (Exception ex) {
		out.println("Exception Occurred:: " + ex.getMessage());
		}
		%> --%>
		<div class="box-container">
			<div class="box">
				<div class="image">
					<img src="https://img.jamieoliver.com/jamieoliver/recipe-database/oldImages/large/62_36_1429634659.jpg?tr=w-800,h-800" alt="">
				</div>
				<div class="content">
					<a href="#" class="title">Pizza</a>
					<p>95.000 đ</p>
				</div>
			</div>

			<div class="box">
				<div class="image">
					<img src="https://bizweb.dktcdn.net/thumb/grande/100/169/223/products/0dd2cdea4ced7e2be5b80a21e5529f99.jpg?v=1646544840683" alt="">
				</div>
				<div class="content">
					<a href="#" class="title">Salad</a>
					<p>35.000 đ</p>
				</div>
			</div>
			<div class="box">
				<div class="image">
					<img src="https://hangngoainhap.net.vn/upload/news/nh-bia-7732.PNG" alt="">
				</div>
				<div class="content">
					<a href="#" class="title">Mì ý</a>
					<p>45.000 đ</p>
				</div>
			</div>
			<div class="box">
				<div class="image">
					<img src="https://alohamall.vn/uploads/1.jpg" alt="">
				</div>
				<div class="content">
					<a href="#" class="title">Nước uống</a>
					<p>15.000 đ</p>
				</div>
			</div>

		</div>
		<button class="cta">
			<a href="/user/products" class="hover-underline-animation"> Xem thêm
			</a>
			<svg viewBox="0 0 46 16" height="10" width="30"
				xmlns="http://www.w3.org/2000/svg" id="arrow-horizontal">
        		<path transform="translate(30)"
					d="M8,0,6.545,1.455l5.506,5.506H-30V9.039H12.052L6.545,14.545,8,16l8-8Z"
					data-name="Path 10" id="Path_10"></path>
    			</svg>
		</button>
</section>
</section>

 <footer class="footer">
      <div class="footer-container">
        <div class="footer-lists">
          <ul>
            <li class="list-head">HELP</li>
            <li><a href="#">Account & Billing</a></li>
            <li><a href="#">Supported Devices</a></li>
            <li><a href="#">Accesibility</a></li>
          </ul>
          <ul>
            <li class="list-head">ABOUT US</li>
            <li><a href="#">Jobs</a></li>
            <li><a href="#">Contact</a></li>
          </ul>
        </div>
        <div class="divider"></div>

        <div class="social-icons">
          <a href="#"><img src="/resources/Images/facebook.png" alt="" /></a>
          <a href="#"><img src="/resources/Images/iinstagram.png" alt="" /></a>
        </div>
      </div>
    </footer>



 <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>s
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>



</html>