using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
namespace CloudKitchen
{
    public partial class Login : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        int i;

        protected void Page_Load(object sender, EventArgs e)
        {
            getCon();
        }
        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            getCon();

            string query = "SELECT Role FROM Register_user WHERE Email='" + txtunm.Text + "' AND Password='" + txtpwd.Text + "'";
            cmd = new SqlCommand(query, con);

            object roleObj = cmd.ExecuteScalar();

            if (roleObj != null)  
            {
                string role = roleObj.ToString();

                if (role == "Admin")
                {
                    Session["admin_email"] = txtunm.Text;
                    Response.Redirect("WebForm1.aspx");
                }
                else if (role == "User")
                {
                    Session["user_email"] = txtunm.Text;
                    Response.Redirect("index.aspx");
                }
            }
            con.Close();
        }
    }
}