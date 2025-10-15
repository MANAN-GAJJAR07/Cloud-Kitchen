using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace CloudKitchen
{
    public partial class contact : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            getCon();
        }

        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void Clear()
        {
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            txtMessage.Text = "";


        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            if (btnSend.Text == "Send Message")
            {
                getCon();
                cmd = new SqlCommand("insert into ContactUs(Name,Email,Phone,Message)values('" + txtName.Text + "','" + txtEmail.Text + "','" + txtPhone.Text + "','"+txtMessage.Text+"')", con);
                cmd.ExecuteNonQuery();
                Clear();


               // ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Thank you {name}, we received your message!');", true);
            }
        }
    }
}
