using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btl.laptop
{
    public partial class Asus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>Xin chào " + Session["username"].ToString() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> Đăng xuất </a>";

            }
            List<Product> ProductList = (List<Product>)Application["productList"];
            List<Product> donghonam = new List<Product>();
            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "11" || id == "12" || id == "13" || id == "14" || id == "15" || id == "16")
                {
                    donghonam.Add(product);
                }
            }
            danhsachAsus.DataSource = donghonam;
            danhsachAsus.DataBind();
        }
    }
    }
