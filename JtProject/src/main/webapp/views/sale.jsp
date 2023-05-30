<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" href="/resources/Images/LogoBurger.png" />
    <link rel="stylesheet" href="/css/styles.css" type="text/css">
    <title>Trang chủ | Thức ăn nhanh</title>
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

<%-- 			</button>
						<button class="btnsignup">
				<div class="arrow-wrapper">
					<a href="profileDisplay" class="fa fa-">${username}</a>

				</div>

			</button> --%>
			<button class="btnsign">
				<div class="arrow-wrapper">
					<a href="logout" sec:authorize="isAuthenticated()" class="fa fa-sign-out"> Đăng xuất</a>
				</div>

			</button>
		</form>
	</header>
 <section class="categories">
      <h4>Included in all plans</h4>
      <div class="text-xl">Sale</div>
      <div class="sub-text">
        Stream full seasons of exclusive series, current-season episodes, hit
        movies, Hulu Originals, kids shows, and more.
      </div>

      <div class="covers">
        <div class="cover-1">
          <div class="cover-grad"></div>
          <div class="cover-text">
            <div class="sub-title">Past & Current Seasons</div>
            <h3>Sale</h3>
          </div>
        </div>
        <div class="cover-2">
          <div class="cover-grad"></div>
          <div class="cover-text">
            <div class="sub-title">New & Classics</div>
            <h3>Movies</h3>
          </div>
        </div>
        <div class="cover-3">
          <div class="cover-grad"></div>
          <div class="cover-text">
            <div class="sub-title">Groundbreaking</div>
            <h3>Hulu Originals</h3>
          </div>
        </div>
        <div class="cover-4">
          <div class="cover-grad"></div>
          <div class="cover-text">
            <div class="sub-title">Add-On</div>
            <h3>Premiums</h3>
          </div>
        </div>
      </div>
    </section>
<style>
.categories {
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  text-align: center;
  padding: 90px 40px;
}

.categories .covers {
  display: grid;
  grid-template-columns: repeat(2, 1fr);
  gap: 80px;
  margin-top: 40px;
}

.categories .covers > div {
  height: 500px;
  width: 450px;
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
  top: 20px;
  left: 20px;
  text-align: left;
}

.categories .cover-1 {
  background: url('/resources/Images/sale1.png') no-repeat center center / cover;
}
.categories .cover-2 {
  background: url('/resources/Images/sale1.png') no-repeat center center / cover;
}
.categories .cover-3 {
  background: url('/resources/Images/sale2.png') no-repeat center center / cover;
}
.categories .cover-4 {
  background: url('/resources/Images/sale2.png') no-repeat center center / cover;
}

</style>
</body>

</html>