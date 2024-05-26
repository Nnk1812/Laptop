using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace btl.laptop
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            //user
            Application["Users"] = new List<NguoiDung>();
            List<NguoiDung> Users = (List<NguoiDung>)Application["Users"];
            Users.Add(new NguoiDung("trongphu", "letrongphu1568@gmail.com", "a", "a"));
            Users.Add(new NguoiDung("nnk1812", "nnk18122002@gmail.com", "1", "1"));

            //san pham
            Application["ProductList"] = new List<Product>();
            List<Product> ProductList = new List<Product>();
            //san pham dell
            ProductList.Add(new Product() { Id = "1", Images = "images/dell-11.jpg", Name = "Dell Latitude 7480", Price = "11500000", Detail = "CPUIntel Core i5-7200U (2-core, 2.50 – 3.10 GHz, 3MB cache).RAM8GB (1x 8192MB) – DDR4, 2400MHz.Ổ cứng256GB M.2 SATA SSD.Màn hình15.6 inch Anti-glare LED Backlit High Definition (Full HD 1920x1080) IPS.Card đồ họaIntel HD Graphics 620" });
            ProductList.Add(new Product() { Id = "2", Images = "images/dell-4.png", Name = "Dell Latitude 3420", Price = "18790000", Detail = "Bộ VXL: Core i5 1135G7 2.4 Ghz up to 4.2Ghz-8Mb, Cạc đồ họa: Intel® Iris® Xe Graphics, Bộ nhớ: 8Gb, Màn hình: 14.0Inch, Hệ điều hành: DOS" });
            ProductList.Add(new Product() { Id = "3", Images = "images/dell-3.png", Name = "Dell Alienware m15", Price = "21790000", Detail = "Bộ VXL: Core i5 1135G7 2.4 Ghz up to 4.2Ghz-8Mb, Cạc đồ họa: Intel® Iris® Xe Graphics, Bộ nhớ: 8Gb, Màn hình: 14.0Inch, Hệ điều hành: DOS" });
            ProductList.Add(new Product() { Id = "4", Images = "images/dell-5.png", Name = "Dell XPS 15", Price = "19790000", Detail = "DELL XPS 15 9550, CPU : Intel Core i7 - 6700HQ, Ram : 8GB DDR 4, Đĩa cứng : 256GB SSD PCIe" });
            ProductList.Add(new Product() { Id = "5", Images = "images/dell-6.png", Name = "Dell Precision 7510", Price = "10790000", Detail = "DELL PRECISION 7510 XEON E3, CPU : Intel Xeon E3-1505M, Ram : 16GB DDR4 2133Mhz, Card đồ họa : Nvidia Quadro M2000M 2GB GDDR5" });
            ProductList.Add(new Product() { Id = "6", Images = "images/dell-7.jpg", Name = "Dell Inspiron N7567", Price = "15790000", Detail = "CPU Intel® Core™ i5-7300HQ, RAM 8GB DDR4 Bus 2400, Ổ cứng SSD 128GB + HDD 500g, Card VGA NVIDIA GTX 1050Ti 4GBMàn hình 15.6 inch FHD (1920x1080)" });
            ProductList.Add(new Product() { Id = "7", Images = "images/dell-8.jpg", Name = "Dell G5 5587", Price = "20790000", Detail = "CPU Intel® Core™ i5-7300HQ, RAM 8GB DDR4 Bus 2400, Ổ cứng SSD 128GB + HDD 500g, Card VGA NVIDIA GTX 1050Ti 4GBMàn hình 15.6 inch FHD (1920x1080)" });
            //san pham dell
            ProductList.Add(new Product() { Id = "11", Images = "images/Asus-1.png", Name = "Asus VivoBook 15", Price = "19999000", Detail = "Bộ VXL: Core i5 1135G7 2.4Ghz-8Mb, Cạc đồ họa: Nvidia MX330 2GB, Ổ cứng/ Ổ đĩa quang: 512GB SSD PCIe (M.2 2280), Màn hình: 15.6Inch Full HD" });
            ProductList.Add(new Product() { Id = "12", Images = "images/Asus-2.png", Name = "Asus ROG Strix G15", Price = "22999000", Detail = "Bộ VXL: Core i5 1135G7 2.4Ghz-8Mb, Cạc đồ họa: Nvidia MX330 2GB, Ổ cứng/ Ổ đĩa quang: 512GB SSD PCIe (M.2 2280), Màn hình: 15.6Inch Full HD" });
            ProductList.Add(new Product() { Id = "13", Images = "images/Asus-3.png", Name = "Asus Vivobook A412FA", Price = "10999000", Detail = "CPU: i3-8145U (2.10 GHz upto 3.90GHz, 4MB), RAM: 4GB DDR4, Ổ cứng: 512GB SSD, Màn hình: 14.0 inch FHD (1920x1080) 60Hz" });
            ProductList.Add(new Product() { Id = "14", Images = "images/Asus-4.png", Name = "Asus TUF A15", Price = "19999000", Detail = "CPU: Ryzen 5 - 4600H (4.0GHz Max Boost) / 6 cores / 12 threads, RAM: 8GB bus 3200Mhz, Ổ cứng: SSD 512GB Nvme, Màn Hình: 15.6 inch FHD 144Hz , IPS panel, VGA: GTX 1650 4GB" });
            ProductList.Add(new Product() { Id = "15", Images = "images/Asus-5.png", Name = "Asus ROG Zephyrus G14", Price = "19999000", Detail = "CPU: AMD Ryzen R5-4600HS (3.00Ghz up to 4.00Ghz, 8MB), RAM:8GB DDR4 3200MHz (Onboard)  , Ổ cứng: 512GB PCIe SSD, Màn Hình: 4.0 inch FHD (1920*1080) IPS, 100% RGB, 300nits, 120Hz Nanoedge, Pantone Validated Display , IPS panel, VGA: GTX 1650 4GB" });
            ProductList.Add(new Product() { Id = "16", Images = "images/Asus-6.png", Name = " ASUS ROG Strix G17", Price = "30999000", Detail = "CPU: Intel® Core™ i7-10750H (2.60GHz upto 5.00GHz, 12 MB cache), RAM: 16GB(2x8GB) DDR4 2933Mhz ( 2 khe, tối đa 32GB), Ổ cứng: 512GB M.2 NVMe™ PCIe® 3.0 SSD, Màn hình: 15.6 inch FHD (1920 x 1080) ,144Hz,IPS" });
            // san pham macbook
            ProductList.Add(new Product() { Id = "21", Images = "images/mac-1.png", Name = " MacBook Air 2020", Price = "25999000", Detail = "Bộ xử lý CPU: Apple M1 chip with 8-core CPU, 7-core GPU, and 16-core Neural Engine, Bộ nhớ RAM: 8GB, Ổ cứng: 256GB SSD, Màn hình: 13-inch Retina display with True Tone, Card màn hình: 7-core GPU" });
            ProductList.Add(new Product() { Id = "22", Images = "images/mac-1.png", Name = " MacBook  Pro 2020", Price = "30999000", Detail = "Bộ xử lý CPU: Apple M1 chip with 8-core CPU, 8-core GPU, and 16-core Neural Engine, 7-core GPU, and 16-core Neural Engine, Bộ nhớ RAM: 8GB, Ổ cứng: 512GB SSD, Màn hình: 13-inch Retina display with True Tone, Card màn hình: 8-core GPU" });
            ProductList.Add(new Product() { Id = "23", Images = "images/Macbook-3.jpg", Name = " Macbook Air MQD32 ", Price = "30999000", Detail = "Bộ xử lý CPU: Apple M1 chip with 8-core CPU, 8-core GPU, and 16-core Neural Engine, 7-core GPU, and 16-core Neural Engine, Bộ nhớ RAM: 8GB, Ổ cứng: 512GB SSD, Màn hình: 13-inch Retina display with True Tone, Card màn hình: 8-core GPU" });
            // san pham lenovo
            ProductList.Add(new Product() { Id = "31", Images = "images/Lenovo-1.jpg", Name = "Lenovo ThinkPad X390", Price = "15999000", Detail = "CPU Intel Core i5-8250U 1.6GHz upto 3.4GHz, Memory 8GB DDR4, Hardisk SSD 256GB, VGA Intel UHD Graphics 620, Display 13.3 inch FHD 1920x1080 IPS" });
            ProductList.Add(new Product() { Id = "32", Images = "images/Lenovo-2.jpg", Name = "Lenovo ThinKPad L540", Price = "10999000", Detail = "CPU: Intel Core i5- 4300M HOẶC (4200M), RAM: 4GB, 8GB DDR3L, SSD :120 GB, VGA: Intell HD 4600" });
            ProductList.Add(new Product() { Id = "33", Images = "images/Lenovo-3.jpg", Name = "Lenovo ThinKPad T14", Price = "10999000", Detail = "CPU: Intel Core i5- 4300M HOẶC (4200M), RAM: 4GB, 8GB DDR3L, SSD :120 GB, VGA: Intell HD 4600" });
            ProductList.Add(new Product() { Id = "34", Images = "images/Lenovo-4.jpg", Name = "Lenovo ThinKPad P51", Price = "17999000", Detail = "CPU: Intel Core i5- 4300M HOẶC (4200M), RAM: 4GB, 8GB DDR3L, SSD :120 GB, VGA: Intell HD 4600" });
            ProductList.Add(new Product() { Id = "35", Images = "images/Lenovo-9.png", Name = "Lenovo ThinkPad X1 Gen9", Price = "17999000", Detail = "CPU: Intel Core i5- 4300M HOẶC (4200M), RAM: 4GB, 8GB DDR3L, SSD :120 GB, VGA: Intell HD 4600" });
            Application["ProductList"] = ProductList;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            /**Session["product"] = new List<Product>();**/
            Session["login"] = 0;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}