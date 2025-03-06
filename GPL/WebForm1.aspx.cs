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
                    cmd = new SqlCommand("select * from GPL_SignUpDtls where Login_ID = '" + DTT+"' and Password = '"+Password+"'", conn);
                    SqlDataAdapter sda = new SqlDataAdapter(cmd);
                    sda.Fill(dt);
                    if(dt.Rows.Count>0)
                    {
                    //lblMessage.Text("Login Successfully");
                    //string script = "alert('Login Successfully');";
                    //ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                    Response.Redirect("Matches.aspx?LGNM="+DTT.ToString());

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
        protected void Frg_pass_Clk(object sender, EventArgs e)
        {
            PasswordID.BorderColor=System.Drawing.Color.Red;
            LoginTxt.BorderColor=System.Drawing.Color.Red;
            PasswordID.ForeColor=System.Drawing.Color.Red;
            LoginTxt.ForeColor=System.Drawing.Color.Red;

            LoginTxt.Focus();
        }
       
        protected void chk_CheckedChanged(object sender, EventArgs e)
        {
            if (chk.Checked)
            {
                // Code to execute when the CheckBox is checked
                string script = "alert('Use default password (pass@123)');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                Response.Write("Checkbox is checked.");
            }
            else
            {
                // Code to execute when the CheckBox is unchecked
                string script = "alert('Use your password');";
                ScriptManager.RegisterStartupScript(this, GetType(), "ServerControlScript", script, true);
                Response.Write("Checkbox is unchecked.");
            }
        }

    }

    }