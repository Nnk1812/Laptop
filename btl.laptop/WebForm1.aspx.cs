using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace btl.laptop
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                login.InnerHtml = "<p class='user'>Xin chào " + Session["username"].ToString() + " | " + "</p>" +
                                  "<a href = 'Dangxuat.aspx'> Đăng xuất </a>";

            }

            List<Product> ProductList = (List<Product>)Application["productList"];
            List<Product> banchay = new List<Product>();
            List<Product> banchay2 = new List<Product>();
            foreach (Product product in ProductList)
            {
                string id = product.Id;
                if (id == "5" || id == "11" || id == "22" || id == "14" || id == "32" || id == "15" || id == "33" || id == "3")
                {
                    banchay.Add(product);
                }
                if ( id == "21" || id == "12" || id == "4")
                {
                    banchay2.Add(product);
                }
            }
            sanphambanchay.DataSource = banchay;
            sanphambanchay.DataBind(); //dataBinding
            sanphambanchay2.DataSource = banchay2;
            sanphambanchay2.DataBind();
        }
    }
}