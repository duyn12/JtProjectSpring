<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
          integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
          <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
    <title>Contact</title>
    
</head>

<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light" >
    <div class="container-fluid">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
		
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto"></ul>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/}" href="/index">Trang chủ</a>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" th:href="@{/cart}" href="#">Cart</a>
                </li>
                <li class="nav-item active">
                    <span class="nav-link" th:text="${cartCount}">0</span>
                </li>
                <li class="nav-item active">
                    <a class="nav-link" href="profileDisplay" >Profile</a>
                </li>
            </ul>

        </div>
    </div>
</nav> 
<header>
	<div class="overlay">
<center><h2>Form </h2></center>
<style>
h2 {
	font-family: 'Dancing Script', cursive;
	font-size: 80px;
	margin-bottom: 30px;
}
header {
	background: url('http://www.autodatz.com/wp-content/uploads/2017/05/Old-Car-Wallpapers-Hd-36-with-Old-Car-Wallpapers-Hd.jpg');
	text-align: center;
	width: 100%;
	height: auto;
	background-size: cover;
	background-attachment: fixed;
	position: relative;
	overflow: hidden;
	border-radius: 0 0 85% 85% / 30%;
}
header .overlay{
	width: 100%;
	height: 100%;
	padding: 50px;
	color: #FFF;
	text-shadow: 1px 1px 1px #333;
  background-image: linear-gradient( 135deg, #9f05ff69 10%, #fd5e086b 100%);
	
}</style>
<form action="https://formcarry.com/s/zUN3wZx0e9" method="POST" accept-charset="UTF-8">
        <table class="tab2" width="40%" align="center" bgcolor="#FF0000">
            <tr>
                <td><br></td>
            </tr>
            <tr>
                <font size="4">
                    <td width="12%" align="left">
                        <font size="4">
                            &nbsp;product-name:</font>
                    </td>
                    <td width="25%" align="left"><input type="text" name="product Name"></td>
            </tr>
            <tr>
                <font size="4">
                    <td width="15%" align="left">
                        <font size="4">
                            &nbsp;Contact No. :</font>
                    </td>
                    <td width="25%" align="left"><input type="text" name="Number" maxlength="10"></td>
            </tr>
            <tr>
                <td width="15%" align="left">
                    <font size="4">
                        &nbsp;EMAIL ID:</font>
                </td>
                <td width="25%" align="left"><input type="email" name="Email"> </td>
            </tr>
            <tr>
                <td width="15%" align="left">
                    <font size="4">
                        &nbsp;category:</font>
                </td>
                <td width="25%" align="left"><input type="text" name="category"></td>
            </tr>
            <tr>
                <td width="15%" align="left">
                    <font size="4">
                        &nbsp;description:</font>
                </td>
                <td width="25%" align="left"><textarea cols="51" rows="4" name="Message"></textarea></td><br>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <br><button type="submit">
                        <font size="5" face="arial">Send Message</font>
                    </button>
                </td>
            </tr>
            <tr>
                <td><br></td>
            </tr>
        </table>
    </form>

</header>
</div>


</body>
</html>