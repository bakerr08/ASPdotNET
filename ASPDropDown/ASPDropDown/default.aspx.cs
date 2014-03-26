using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPDropDown
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ddList_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblMessage.Text = "You Clicked: " + ddList.SelectedItem.Text;
        }
    }
}