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

    public partial class Registration : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getCon();
        }
        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

       void imgUpload()
        {
            if (img1.HasFile)
            {
                fnm = "images/" + img1.FileName;
                img1.SaveAs(Server.MapPath(fnm));
            }
        }

        void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Register")
            {
                getCon();
                imgUpload();
                cmd = new SqlCommand("insert into Register_user(Name,Gender,Email,Password,City,Image)values('" + TextBox1.Text + "','" + RadioButtonList1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','"+fnm+"')", con);
                cmd.ExecuteNonQuery();
                Clear();
                Response.Redirect("Login.aspx");
            }
        }
    }
}