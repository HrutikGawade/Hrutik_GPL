using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace GPL
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        Connection c = new Connection();
        SqlCommand cmd = new SqlCommand();//query
        DataTable dt=new DataTable();//table 
        public WebForm1()
        {
            //InitializeComponent();
            conn = c.getConnection();
        }          
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitID_Click(object sender, EventArgs e)
        {
            ////Hard coded
            //try
            //{
            //    String DTT = LoginTxt.Text.ToString().Trim();
            //    int login1 = Convert.ToInt32(DTT);

            //    if (login1 == 1001)
            //    {
            //        /////Console.WriteLine("Password");
            //        string Password = PasswordID.Text.ToString().Trim();
            //        ///string PasswordData = "Hrut"/////data

            //        if (Password == "Hrut")
            //        {
            //            Response.Redirect("Signup2.aspx");
            //        }
            //        else
            //        {
            //            PassID.Text = "Your Password  is invalid";
            //        }
            //    }
            //    else
            //    {
            //        LoginID.Text = "Your Login Id is invalid";
            //    }

            //}
            //catch (Exception)
            //{
            //    LoginID.Text = "Login UnSuccessful(DT)";
            //    PassID.Text = "Password Successful(DT)";
            //    //Response.Redirect("FindAgeDiff.aspx");
            //}

            //try
            //{
                String DTT = LoginTxt.Text.ToString().Trim();
                //int login1 = Convert.ToInt32(DTT);
                string Password = PasswordID.Text.ToString().Trim();

                //if (DTT=="" || Password=="" )
                if(string.IsNullOrEmpty(DTT) || string.IsNullOrEmpty(Password))
                {
                    //MessageBox.Show("Fill username or Password");
                    lblMessage.Text = "Fill username or Password";
                }
                else
                {
                    conn.Open();
                    cmd = new SqlCommand("select * from SignUpDtls where Login_ID = '" + DTT+"' and Password = '"+Password+"'", conn);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    if(dt.Rows.Count>0)
                    {
                    //lblMessage.Text("Login Successfully");
                    //string script = "alert('Login Successfully');";
                    //ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    Response.Redirect("Matches.aspx");

                }
                else
                    {
                        //lblMessage.Text("Incorrect Username or Password");
                        string script = "alert('Incorrect Username or Password');";
                        ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);

                }
                conn.Close();

                }
            //}

            

            

        }


        protected void CancelID_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://localhost:53633/Exc_popuppage");
        }
        protected void Sign_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup2.aspx");
        }
    }

}