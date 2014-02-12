using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;

namespace PersonalWebsite
{
    public partial class three : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGetCustomer_Click(object sender, EventArgs e)
        {
            Customer oCustomer = new Customer();
            int CustID;
            Int32.TryParse(txtID.Text, out CustID);
            lblUser.Text = oCustomer.GetCustomerFullName(CustID);

        }
    }
}