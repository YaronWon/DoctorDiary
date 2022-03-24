using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace DoctorDiary
{
    public partial class AddingDoc : System.Web.UI.Page 
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Sub_Click(object sender, EventArgs e)
        {
            String sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\DoctorDiary.mdf;Integrated Security=True"; ;
            String Command = $"insert into Doctor values(N'{DocID.Text}',N'{DocFname.Text}',N'{DocLname.Text}',N'{DocPhone.Text}',N'{DocEmail.Text}',N'{DocPass.Text}')";


            SqlConnection SQconn = new SqlConnection(sqlCon);
            SQconn.ConnectionString = sqlCon;
            SQconn.Open();
            SqlCommand cmd = new SqlCommand(Command, SQconn);
            cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader();
            SQconn.Close();

            SQconn.Open();
           
            
            HttpCookie Cookie1 = new HttpCookie("MyCookie");

            Cookie1["Fname"] = reader["DocFName"].ToString();
            Cookie1["Lname"] = reader["DocLName"].ToString();
            Cookie1["DocId"] = reader["DocID"].ToString();

            Cookie1.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(Cookie1);
            SQconn.Close();

            Response.Redirect("AddingClinc.aspx");
        }


    
    }
}