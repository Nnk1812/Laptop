<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="btl.laptop.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="Style\trangchu1.css" />
    <title>Trang Chủ</title>
</head>
<body>
      <div class="header">
		
		<div class="header_mid">
			<a href="WebForm1.aspx">
				<h1>HOU Store</h1>
			</a>
			<div class="header_top" id="header-top">
				<div id="Div1" class="login" runat="server">
				<p class="user"></p>
			<a href="Dangnhap.aspx" title="Đăng nhập">Đăng nhập</a>
		</div>	
</div>
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
	<div class="banner">
		<div class="noidung_banner">
				<h2>LAPTOP Chính Hãng</h2>
				<h1>HOU Store</h1>
		</div>
		<img id="img" src="images/dell banner.png" width="auto"/>
	</div>
	<h1 class="h1">Có Thể Bạn Quan Tâm</h1>
	<div class="sanpham">
			<asp:ListView ID="sanphambanchay" runat="server">
				<ItemTemplate>
					<div class="sanphambanchay">
					<a href="Chitietsanpham.aspx?id=<%# Eval("Id") %>">
						<img id="anh1" width="200" height="80" src="<%# Eval("Images") %>" title="Laptop">
						<div class="sanphambanchay_gia" id="sanpham1">
							<strong id="ten1"><%# Eval("Name") %></strong>
							<p id="gia1"><%# Eval("Price") %> đồng</p>
						</div>
					</a>
					</div>
				</ItemTemplate>
			</asp:ListView>
	</div>
	<div>
	<h1 class="h1">Mẫu Laptop mới</h1>
	</div>
	<div class="sanpham2">
			<asp:ListView ID="sanphambanchay2" runat="server">
				<ItemTemplate>
					<div class="sanphambanchay2">
					<a href="Chitietsanpham.aspx?id=<%# Eval("Id") %>">
						<img id="anh2" width="200" height="80" src="<%# Eval("Images") %>" title="Laptop">
						<div class="sanphambanchay_gia2" id="sanpham2">
							<strong id="ten2"><%# Eval("Name") %></strong>
							<p id="gia2"><%# Eval("Price") %> đồng</p>
						</div>
					</a>
					</div>
				</ItemTemplate>
			</asp:ListView>
	</div>
	<div class="footter">
		<div class="footter_top">
			<div class="Thongtinlienhe">
				<h1>Thông Tin Liên Hệ</h1>
				<p>Địa chỉ: Định Công, Hoàng Mai, Hà Nội	</p>
				<p>SĐT: 0123456789</p>
				<p>Gmail: HouStore@gmail.com</p>
			</div>
		</div>
		<div class="footter_bot">
			<div class="copyright">
        		© Bản quyền
			</div>
		</div>
	</div>
	<script>
        function responsive() {
            var x = document.getElementById("header-bot");
            if (x.className === "header_bot") {
                x.className += "responsive";
            }
            else {
                x.className = "header_bot";
            }
        }
    </script>
</body>
</html>
