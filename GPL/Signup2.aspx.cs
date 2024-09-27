using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GPL
{
    public partial class Signup2 : System.Web.UI.Page
    {
        Connection contest = new Connection();
        SqlConnection sqlcon = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlCommand Log = new SqlCommand();
        public Signup2()
        {
            //InitializeComponent();
            sqlcon = contest.getConnection();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            sqlcon.Open();
            Log = new SqlCommand("Select Max(login_ID)+1 as Result from SignUpDtls", sqlcon);
            Log.ExecuteNonQuery();
            SqlDataAdapter da = new SqlDataAdapter(Log);
            DataSet ds = new DataSet();
            da.Fill(ds);
            sqlcon.Close();
            string result = ds.Tables[0].Rows[0]["Result"].ToString();
            TextBox1.Text = result;
            //LogMessage.Text = result;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sqlcon.Open();
            if (TextBox5.Text=="" || TextBox4.Text == "")
            {
                PassMessage.Text = "Fill username or Password";
            }
            else
            {

            if (TextBox5.Text == TextBox4.Text)
                {
                cmd = new SqlCommand("Insert into SignUpDtls (Login,Login_ID,Password,Com_Pass) values('" + DropDownList1.Text + "','" + TextBox1.Text + "','" + TextBox5.Text + "','" + TextBox4.Text + "')", sqlcon);
                cmd.ExecuteNonQuery();
                string script = "alert('Added');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                Response.Redirect("WebForm1.aspx");
                sqlcon.Close();
            }
            else
            {
                PassMessage.Text = "Password is not match";
                //string script = "alert('Password not match with Confirm password');";
                //ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
            }

            }
          
        }
        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("WebForm1.aspx");
        }
    }
}