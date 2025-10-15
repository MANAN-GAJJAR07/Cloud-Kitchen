using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace CloudKitchen
{
    public partial class BookTable : System.Web.UI.Page
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