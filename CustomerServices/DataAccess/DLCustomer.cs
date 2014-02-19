using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace DataAccess
{
    public class DLCustomer
    {
        public void AddCustomer(string FirstName, 
                                string LastName,
                                string Address,
                                string City,
                                string State,
                                string Zip,
                                string Phone,
                                string Email)
        {
            string strDBConn = ConfigurationManager.AppSettings["DatabaseConnection"];
            string SQL = "insert into Customer(FirstName, LastName, Address, City, State, Zip, Phone, Email) values (@FirstName, @LastName, @Address, @City, @State, @Zip, @Phone, @Email)";

            using (var Conn = new SqlConnection(strDBConn))
            {
                SqlCommand oCommand = new SqlCommand(SQL, Conn);
                oCommand.Parameters.AddWithValue("@FirstName", FirstName);
                oCommand.Parameters.AddWithValue("@LastName", LastName);
                oCommand.Parameters.AddWithValue("@Address", Address);
                oCommand.Parameters.AddWithValue("@City", City);
                oCommand.Parameters.AddWithValue("@State", State);
                oCommand.Parameters.AddWithValue("@Zip", Zip);
                oCommand.Parameters.AddWithValue("@Phone", Phone);
                oCommand.Parameters.AddWithValue("@Email", Email);

                Conn.Open();
                oCommand.ExecuteNonQuery();
            }
        }

        public void DeleteCustomer(int CustomerID)
        {
            string strDBConn = ConfigurationManager.AppSettings["DatabaseConnection"];
            string SQL = "delete from Customer where CustomerID = @CustomerID";

            using (var Conn = new SqlConnection(strDBConn))
            {
                SqlCommand oCommand = new SqlCommand(SQL, Conn);
                oCommand.Parameters.AddWithValue("@CustomerID", CustomerID);

                Conn.Open();
                oCommand.ExecuteNonQuery();
            }
        }

        public DataTable GetCustomers()
        {
            DataTable dt = new DataTable();

            string strDBConn = ConfigurationManager.AppSettings["DatabaseConnection"];
            string SQL = "select * from Customers";

            using (var Conn = new SqlConnection(strDBConn))
            {
                SqlCommand oCommand = new SqlCommand(SQL, Conn);
                
                Conn.Open();
                dt.Load(oCommand.ExecuteReader());
            }

            return dt;
        }
    }
}
