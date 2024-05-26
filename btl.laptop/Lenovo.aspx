<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Lenovo.aspx.cs" Inherits="btl.laptop.Lenovo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="Style\Dell.css" />
     <title>Lenovo</title>
</head>
<body>
   <div class="header">
		<div class="header_top" id="header-top">
			<p>LENOVO</p>
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
    <div class="up">
        <div class="abc">
            <a href="WebForm1.aspx"><strong>TRANG CHỦ</strong></a> / <a href="Lenovo.aspx"><strong>Máy Lenovo</strong></a>
        </div>
    </div>
    <div class="container">
        <div class="sidebar_one">
            <div class="row_1">
                <strong>Các sản phẩm khác</strong>
                <div class="show">
                    <ul>
                        <li><a href="Dell.aspx">Máy Dell</a></li>
                        <li><a href="Asus.aspx">Máy Asus</a></li>
						<li><a href="Macbook.aspx">Máy MacBook</a></li>
						<li><a href="Lenovo.aspx">Máy Lenovo</a></li>
                    </ul>
                </div>
            </div>
			<div class="row_2"></div>
            <div class="row_3"></div>
        </div>
        <div class="sidebar_two">
            <div class="sanpham">
                <asp:ListView ID="danhsachdell" runat="server">
                    <ItemTemplate>
                        <a href="Chitietsanpham.aspx?id=<%# Eval("Id") %>">
                            <div class="sanpham_show">
                                <img src="<%# Eval("Images") %>" alt="ảnh lỗi">
                                <div class="sanpham_gia">
                                    <strong><%# Eval("Name") %></strong>
                                    <p><%# Eval("Price") %> đồng</p>
                                </div>
                            </div>
                        </a>
                    </ItemTemplate>
                </asp:ListView>
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
</body>
</body>
</html>