0<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Chitietsanpham.aspx.cs" Inherits="btl.laptop.Chitietsanpham" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link rel="stylesheet" href="Style\Chitietsanpham.css" />
    <title>Chi Tiết Sản Phẩm</title>
</head>
<body>
    <form id="form1" runat="server">
       <div class="header">
		<div class="header_top" id="header-top">
			<p>Chi Tiết Sản Phẩm</p>
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
		<div>
	<div class="main">
		<asp:ListView ID="ListViewProductinformation" runat="server" >
			<ItemTemplate>
				<div class="anh">
					<img src="<%# Eval("Images") %>" title="ảnh Laptop">
				</div>

				<div class="content">
				
					<h1 class="header-content"><%# Eval("Name") %></h1>
					<hr width="20px" />
					<p style="font-size:45px;color: #C89979;   " class="header-content"><b><%# Eval("Price") %> đồng</b></p>
					<p class="header-content"><%# Eval("Detail") %>
					</p>
					<ul class="header-content">
						<li>Sản Phẩm Chính Hãng</li>
						<li>Bảo Hành Trong Vòng 12 Tháng</li>
					</ul>
				</ItemTemplate>
		</asp:ListView>
		<div class="submit">
			<p class="Themgio" name="Themgio" runat="server" id="Themgio" style="color:red"></p>
			<button type="submit" class="themvaogio" runat="server" ID="AddToCartButton1" onserverclick="AddToCartButton" >Thêm vào giỏ hàng</button>
		</div>
		</div>
		</div>
		<div class="footter">
		<div class="footter_top">
			<div class="Thongtinlienhe">
				<h1>Thông Tin Liên Hệ</h1>
				<p>Địa chỉ: 96 Định Công </p>
				<p>SĐT: 0123456789</p>
				<p>Gmail:1234@gmail.com</p>
			</div>
		</div>
		<div class="footter_bot">
			<div class="copyright">
        		© Bản quyền
			</div>
		</div>
	</div>
    </form>
</body>
</html>
