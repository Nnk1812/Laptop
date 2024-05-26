<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Dangky.aspx.cs" Inherits="btl.laptop.Dangky" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style\DangKy.css" />
    <title>Dang Ky</title>
</head>
<body>
   <div class="header">
		<div class="header_top" id="header-top">
			<p>Đăng Ký</p>
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
	<div id="reg-form" class="auth">
                <form action="Dangky.aspx" method="post" runat="server">
                <div class="auth__header">
                    <h2>Đăng ký</h2>
                    <a href="Dangnhap.aspx">Đăng nhập</a>
                </div>
                <div class="auth__form">
                    <div class="form-control">
                        <label for="username">Tên đăng nhập</label>
                        <input type="text" id="username" placeholder="Nhập tên đăng nhập" name="username"/>
                        <p runat="server" id="username_error"></p>
                    </div>
                    <div class="form-control">
                        <label for="email">Email</label>
                        <input type="text" id="email" placeholder="abcd@gmail.com" name="email"/>
                        <p></p>
                    </div>
                    <div class="form-control">
                        <label for="password">Mật khẩu</label>
                        <input type="password" id="password" placeholder="Nhập mật khẩu" name="password"/>
                        <p></p>
                    </div>
                    <div class="form-control">
                        <label for="re-password">Xác nhận mật khẩu</label>
                        <input type="password" id="re-password" placeholder="Nhập lại mật khẩu" name="re-password"/>
                        <p></p>
                    </div>
                    <p runat="server" id="btn_error" style="color:red"></p>
                    <button class="auth_btn" id="btnReg">Đăng ký</button>
                </div>
                </form>
            </div>
        
    </div>
</body>
    <script src="script\Dangky.js"></script>
</html>
