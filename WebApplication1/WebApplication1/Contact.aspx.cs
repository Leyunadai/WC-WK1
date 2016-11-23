using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Contact : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Text = "test voor github";

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}