<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangnhap.aspx.cs" Inherits="btl.laptop.Dangnhap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	 <link rel="stylesheet" href="Style\Dangnhap.css" />
    <title>Dang Nhap</title>
</head>
<body>
   <div class="header">
		<div class="header_top" id="header-top">
			<p>Đăng Nhập</p>
			<div id="login" class="login" runat="server">
				<p class="user"></p>
				<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
			</div>	
		</div>
		<div class="header_mid">
			<a href="WebForm1.aspx">
				<h1>HOU Store</h1>
			</a>
		</div>
		  </div>
		<div class="header_bot" id="header-bot">
			<ul>
				<li><a href="WebForm1.aspx">Trang chủ</a></li>
				<li><a href="Dell.aspx">Dell</a></li>
				<li><a href="Asus.aspx">Asus</a></li>
				<li><a href="Macbook.aspx">Macbook</a></li>
				<li><a href="Lenovo.aspx">Lenovo</a></li>
				<li><a href="Giohang.aspx">Giỏ hàng</a></li>
			</ul>
		</div>
	 <div class="content">

            <div id="login-form" class="auth" >
                <form action="Dangnhap.aspx" method="post" runat="server">
                <div class="auth__header">
                    <h2>Đăng nhập</h2>
                    <a href="Dangky.aspx">Đăng ký</a>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="usernameL" placeholder="Nhập tên đăng nhập" name="usernameL" />
                    </div>
                    <div class="form-control">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="passwordL" placeholder="Nhập mật khẩu" name="passwordL" />
                    </div>
                    <p runat="server" id="errorL" style=" color:red"></p>
                    <button class="auth_btn" id="btnLogin" runat="server">Đăng nhập</button>
                </div>
                </form>
            </div>
		</div>

		<script>
            btnLogin.onclick = function (e) {
                var valid = true;
                if (!(usernameL.value.trim() && passwordL.value.trim())) {
                    valid = false;
                }
                if (!valid) {
                    e.preventDefault();
                    btn_error = document.getElementById("errorL");
                    btn_error.innerHTML = "Điền đầy đủ tài khoản và mật khẩu";
                }
            }

        </script>
</body>

</html>
