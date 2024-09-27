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
    public partial class Matches : System.Web.UI.Page
    {
        Connection contest1 = new Connection();
        SqlConnection sqlcon1 = new SqlConnection();

        SqlCommand Log1 = new SqlCommand();
        public Matches()
        {
            //InitializeComponent();
            sqlcon1 = contest1.getConnection();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            //sqlcon1.Open();
            ////SqlConnection con1 = new SqlConnection(strConnection);
            //SqlCommand cmd1 = new SqlCommand("Select ID,Team_NAME,Match,Win,Loss,NRR,PTC from Points_Table", sqlcon1);
            //DataSet ds = new DataSet();
            //SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            //da1.Fill(ds);
            //GridView1.DataSource = ds;
            //GridView1.DataBind();

            if (!IsPostBack) // Check if the page is loaded for the first time
            {
                

                PopulateGridView();
                // Call the method to bind data to the DropDownList
                BindTeamHist();

                


            }

        }

        private void PopulateGridView()
        {
            sqlcon1.Open();
            using (SqlConnection sqlcon1 = new SqlConnection("Data Source=DESKTOP-951VNPM;Initial Catalog=Hrut;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
            {
                SqlCommand cmd1 = new SqlCommand("SELECT ID, Team_NAME, Match, Win, Loss, NRR, PTC FROM Points_Table", sqlcon1);
                SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
                DataTable dt = new DataTable();
                da1.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
        }

        protected void BindTeamHist()
        {
            
            string query = "Select  * from Matches_Dtls where Match_No=1";
            {
                // Create a SqlCommand object
                using (SqlCommand command = new SqlCommand(query, sqlcon1))
                {
                    // Open the database connection
                    //sqlcon1.Open();
                    // Execute the SQL command and get a SqlDataReader
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        
                        if (reader.HasRows)
                        {
                            // Read the first row of data
                            reader.Read();
                            // Set the InnerText property of the td element
                            dataRun_team1.InnerText = reader["Team1"].ToString();
                            dataRun_team2.InnerText= reader["Team2"].ToString();
                            DataWinStatement.InnerText = reader["Win_Statement"].ToString();
                            dataRunT1.InnerText = reader["RunWik_T1"].ToString();
                            dataRunT2.InnerText = reader["RunWik_T2"].ToString();
                            //String dRT1 = reader["RunWik_T1"].ToString().Trim();
                            //String dRT2 = reader["RunWik_T1"].ToString().Trim();

                            dataOverT1.InnerText = reader["OverBall_T1"].ToString();
                            dataOverT2.InnerText = reader["OverBall_T2"].ToString();

                            //string KPI_CODE = Request.QueryString["KPICode"].ToString().Trim();
                            //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "Adddiv('" + KPI_CODE + "','" + ddlsrctblnamdesc.SelectedItem + "','" + ddlsrctblnamdesc.SelectedValue + "','S');", true);
                            //ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "Adddiv('" + dRT1 + "','" + dRT2 + "','S');", true);
                            ScriptManager.RegisterStartupScript(this, this.GetType(), "popup", "Adddiv('S');", true);

                        }

                        reader.Close();

                    }
                }
            }
        }
            protected void NewM_Click(object sender, EventArgs e)
        {
            Response.Redirect("SBook2.aspx");
        }
    }
}