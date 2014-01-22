using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace prjHelloWorld
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBye_Click(object sender, EventArgs e)
        {
            if(lblHello.Visible == false)
            {
                lblHello.Visible = true;
                btnBye.Text = "Goodbye World";
            }
            else
            {
                lblHello.Visible = false;
                btnBye.Text = "Hello World";
            }
        }

        protected void btnRun_Click(object sender, EventArgs e)
        {
            lblStuff.Text = txtInput.Text;
        }
    }
}