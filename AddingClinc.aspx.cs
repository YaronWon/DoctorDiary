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
    public partial class AddingClinc : System.Web.UI.Page 
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            string S = Request.Cookies["MyCookie"]["DocID"];
            Console.WriteLine(S);
        }

        protected void ClinicSub_Click(object sender, EventArgs e )
        {
            
            String sqlCon = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ProjectDoc.mdf;Integrated Security=True"; ;
            String Command = $"insert into Clinic values(N'',N'{ClinicName.Text}' , N'{ClinicAdd.Text}' ,N'{ClincOPH.Text}' ,N'{ClnicCity.Text}' )";


            SqlConnection SQconn = new SqlConnection(sqlCon);
            SQconn.ConnectionString = sqlCon;
            SQconn.Open();
            SqlCommand cmd = new SqlCommand(Command, SQconn);
            cmd.ExecuteNonQuery();
            SqlDataReader reader = cmd.ExecuteReader();
            SQconn.Close();
            if (Run.Checked)
            {
                Response.Redirect("Clinics.aspx");
            }


        }
    }
}