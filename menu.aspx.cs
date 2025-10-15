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
    public partial class Menu : System.Web.UI.Page
    {
        string s = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        String fnm;

        PagedDataSource pg;
        int row = 3, p;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user_email"].ToString() != "")
            {
                getcon();
                da = new SqlDataAdapter("select * from Register_user where Email='" + Session["user_email"].ToString() + "'", con);
                ds = new DataSet();
                da.Fill(ds);
                int uid = Convert.ToInt32(ds.Tables[0].Rows[0][0]);
                string s = ds.Tables[0].Rows[0][1].ToString();
                Label4.Text = "Welcome " + s;
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            //fillcombo();
            filllist();
        }
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void filllist()
        {
            getcon();
            da = new SqlDataAdapter("select * from add_dishes", con);
            ds = new DataSet();
            da.Fill(ds);

            row = ds.Tables[0].Rows.Count;
            pg = new PagedDataSource();

            //pg.AllowPaging = true;
            //pg.PageSize = 3;
            //pg.CurrentPageIndex = Convert.ToInt32(ViewState["pid"]);

            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;
            DataList1.DataBind();

                
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
