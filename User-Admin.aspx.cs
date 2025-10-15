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
    public partial class User_Admin : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        string fnm;
        protected void Page_Load(object sender, EventArgs e)
        {
            getcon();
            fillgrid();
        }

        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void fillgrid()
        {
            getcon();
            da = new SqlDataAdapter("select * from Register_user", con);
            ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        void select()
        {
            getcon();
            da = new SqlDataAdapter("select * from Register_user where Id='" + ViewState["id"] + "'", con);
            ds = new DataSet();
            da.Fill(ds);
            //Paring
            TextBox1.Text = ds.Tables[0].Rows[0][1].ToString();
            RadioButtonList1.SelectedValue = ds.Tables[0].Rows[0][2].ToString();
            TextBox3.Text = ds.Tables[0].Rows[0][3].ToString();
            DropDownList1.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
        }
        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName == "cmd_edt")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                Button1.Text = "Update";
                Panel1.Visible=true;
                select();
            }
            else
            {
                getcon();
                int id = Convert.ToInt32(e.CommandArgument);
                ViewState["id"] = id;
                cmd = new SqlCommand("delete from Register_user where Id='" + ViewState["id"] + "'", con);
                cmd.ExecuteNonQuery();
                fillgrid();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cmd = new SqlCommand("update Register_user set Name='" + TextBox1.Text + "',Gender='" + RadioButtonList1.Text + "',Email='" + TextBox3.Text + "',City='" + DropDownList1.SelectedValue + "',Role='"+ DropDownList2.SelectedValue+"' where Id='" + ViewState["id"] + "'", con);
            cmd.ExecuteNonQuery();
            fillgrid();

        }
    }
}