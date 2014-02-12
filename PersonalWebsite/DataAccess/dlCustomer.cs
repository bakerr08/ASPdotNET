using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace DataAccess
{
    public class dlCustomer
    {
        public string GetCustomerFullName(int CustID)
        {
            string strFullName;
            try
            {
                string ConnectionString = ConfigurationManager.AppSettings["DatabaseConnection"];
                string strSQL = "Select FirstName, Lastname from Customer where CustomerID = @CustomerID";

                using(var Conn = new SqlConnection(ConnectionString))
                {
                    SqlCommand objCommand = new SqlCommand(strSQL, Conn);

                    objCommand.Parameters.AddWithValue("@CustomerID", CustID);
                    Conn.Open();

                    SqlDataReader reader = objCommand.ExecuteReader();
                    reader.Read();
                    strFullName = reader["FirstName"].ToString() + " " + reader["Lastname"].ToString();
                }
            }
            catch
            {
                strFullName = "";
            }

            return strFullName;
        }
    }
}
