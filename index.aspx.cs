using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace CloudKitchen
{
    public partial class index : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_email"].ToString() != "")
            {
                getCon();
                da = new SqlDataAdapter("select * from Register_user where Email='" + Session["user_email"].ToString() + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                int uid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                string s = ds.Tables[0].Rows[0][1].ToString();
                Label1.Text = "Welcome " + s;
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }


        void getCon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void Clear()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Button1.Text == "Book Table")
            {
                getCon();
                cmd = new SqlCommand("insert into book_tbl(Day,Name,Phone,Persons)values('" + DropDownList1.SelectedValue + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList2.SelectedValue + "')", con);
                cmd.ExecuteNonQuery();
                Clear();
            }
        }
    }
}