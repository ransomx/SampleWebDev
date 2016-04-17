using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace SiteSample
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountConnectionString"].ConnectionString);
                conn.Open();

                string checkUser = "select count(*) from Account where Email='"+TxtEmail+"'";
                SqlCommand com = new SqlCommand(checkUser, conn);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString()); 
                if(temp == 1)
                {
                    Response.Write("Account with this email already exists");
                }
                conn.Close();
            }
        }

        protected void BtnConfirm_Click(object sender, EventArgs e)
        {
            try{
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["AccountConnectionString"].ConnectionString);
            conn.Open();
            string insertQuery = "insert into Account (Namn,Email,Titel,Foretagsnamn) values (@Namn, @Email, @Titel, @Foretagsnamn)";
            SqlCommand com = new SqlCommand(insertQuery, conn);
                com.Parameters.AddWithValue("@Namn",TxtNamn.Text);
                com.Parameters.AddWithValue("@Email", TxtEmail.Text);
                com.Parameters.AddWithValue("@Titel", TxtTitel.Text);
                com.Parameters.AddWithValue("@Foretagsnamn", TxtForegtagsnamn.Text);

                com.ExecuteNonQuery();

                conn.Close();
                Response.Redirect("Admin.aspx");
                Response.Write("Registration was successfull.");
            }
            catch (Exception ex)
            {
                Response.Write("Error " + ex.ToString());
            }
        }
    }
}