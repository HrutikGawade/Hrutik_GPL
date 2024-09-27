using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GPL
{
    public partial class WebForm2 : Page
    {
        Connection contest1 = new Connection();
        SqlConnection sqlcon1 = new SqlConnection();
        SqlConnection sqlcon2 = new SqlConnection();

        SqlCommand Log1 = new SqlCommand();
        public WebForm2()
        {
            //InitializeComponent();
            sqlcon1 = contest1.getConnection();
            sqlcon2 = contest1.getConnection();
        }


        protected void Page_Load(object sender, EventArgs e)
        {
            //BindDropDownList();
            //if (!IsPostBack) // Check if the page is loaded for the first time
            //{
            //    // Call the method to bind data to the DropDownList
            //    BindDropDownList();
            //}                     

        }

        protected void BindDropDownList()
        {
            string query = "Select * from Points_Table";
            {
                // Create a SqlCommand object
                using (SqlCommand command = new SqlCommand(query, sqlcon1))
                {
                    // Open the database connection
                    sqlcon1.Open();

                    // Execute the SQL command and get a SqlDataReader
                    sqlcon1.Close();
                }
            }
        }

       
        protected void Team1_Select(object sender, EventArgs e)
        {
            string query = "Select * from Points_Table";
            {
                // Create a SqlCommand object
                using (SqlCommand command = new SqlCommand(query, sqlcon1))
                {
                    // Open the database connection
                    sqlcon1.Open();

                    // Execute the SQL command and get a SqlDataReader
                    //using (SqlDataReader reader = command.ExecuteReader())
                    //{
                    //    // Bind the data to the DropDownList
                    //    DropDownList6.DataSource = reader;
                    //    DropDownList6.DataTextField = "Team_NAME"; // Field to display in the DropDownList
                    //    //DropDownList6.DataValueField = "ID"; // Field to use as the value
                    //    DropDownList6.DataBind();
                    //    // Close the SqlDataReader
                    //    reader.Close();

                    //}                  
                    
                    String DTT1 = DropDownList6.Text.ToString().Trim();
                    string query2 = "Select * from Points_Table where Team_NAME<>'" + DTT1 + "'";
                    Session["Globl1"] = DTT1;
                    {
                        using (SqlCommand command1 = new SqlCommand(query2, sqlcon2))
                        {
                            // Open the database connection
                            sqlcon2.Open();
                            using (SqlDataReader reader2 = command1.ExecuteReader())
                            {
                                DropDownList7.DataSource = reader2;
                                DropDownList7.DataTextField = "Team_NAME";
                                DropDownList7.DataBind();
                                reader2.Close();
                            }
                            sqlcon2.Close();
                        }
                    }

                    //using (SqlDataReader reader1 = command.ExecuteReader())
                    //{
                    //    DropDownList8.DataSource = reader1;
                    //    DropDownList8.DataTextField = "Team_NAME";
                    //    DropDownList8.DataBind();
                    //    reader1.Close();
                    //}
                }
            }
                        
        }

        protected void Team2_Select(object sender, EventArgs e)
        {
            String DTT2 = DropDownList7.Text.ToString().Trim();
            Session["Globl2"] = DTT2;
            string DTT1 = Session["Globl1"] as string;
            string query3 = "Select * from Points_Table where Team_NAME in ('" + DTT1 + "','" + DTT2 + "')";
            {
                using (SqlCommand command2 = new SqlCommand(query3, sqlcon2))
                {
                    // Open the database connection
                    sqlcon2.Open();
                    using (SqlDataReader reader3 = command2.ExecuteReader())
                    {
                        DropDownList1.DataSource = reader3;
                        DropDownList1.DataTextField = "Team_NAME";
                        DropDownList1.DataBind();
                        reader3.Close();
                    }
                    sqlcon2.Close();
                }
            }

        }


        protected void BatBowl(object sender, EventArgs e)
        {
            String DTT3 = DropDownList1.Text.ToString().Trim();
            String BatBall = DropDownList2.Text.ToString().Trim();
            string DTT1 = Session["Globl1"] as string;
            string DTT2 = Session["Globl2"] as string;

            if (BatBall == "BAT")
            {
                //string query4 = "Select * from Player_dtls where Team_Name='" + DTT3 + "'";
                string query4 = "Select * from Player_Dtls where Team_Name in ('" + DTT1 + "','" + DTT2 + "') and Team_Name = '" + DTT3 + "'";
                string query6 = "Select * from Player_Dtls where Team_Name in ('" + DTT1 + "','" + DTT2 + "') and Team_Name != '" + DTT3 + "'";
                {
                    using (SqlCommand command3 = new SqlCommand(query4, sqlcon2))
                    using (SqlCommand command5 = new SqlCommand(query6, sqlcon2))
                    {
                        sqlcon2.Open();

                        using (SqlDataReader reader4 = command3.ExecuteReader())
                        {
                            DropDownList3.DataSource = reader4;
                            DropDownList3.DataTextField = "Player_Name";
                            DropDownList3.DataBind();
                            reader4.Close();
                        }
                        using (SqlDataReader reader4 = command3.ExecuteReader())
                        {
                            DropDownList4.DataSource = reader4;
                            DropDownList4.DataTextField = "Player_Name";
                            DropDownList4.DataBind();
                            reader4.Close();
                        }
                        using (SqlDataReader reader4 = command5.ExecuteReader())
                        {
                            DropDownList5.DataSource = reader4;//////Bolower
                            DropDownList5.DataTextField = "Player_Name";
                            DropDownList5.DataBind();
                            reader4.Close();
                        }                        
                        sqlcon2.Close();
                    }
                }
            }
            else
            {
                string query5 = "Select* from Player_Dtls where Team_Name in ('" + DTT1 + "','" + DTT2 + "') and Team_Name != '" + DTT3 + "'";
                string query7 = "Select* from Player_Dtls where Team_Name in ('" + DTT1 + "','" + DTT2 + "') and Team_Name = '" + DTT3 + "'";
                {
                    using (SqlCommand command4 = new SqlCommand(query5, sqlcon2))
                    using (SqlCommand command6 = new SqlCommand(query7, sqlcon2))
                    {
                        sqlcon2.Open();
                        using (SqlDataReader reader5 = command4.ExecuteReader())
                        {
                            DropDownList3.DataSource = reader5;
                            DropDownList3.DataTextField = "Player_Name";
                            DropDownList3.DataBind();
                            reader5.Close();
                        }
                        using (SqlDataReader reader5 = command4.ExecuteReader())
                        {
                            DropDownList4.DataSource = reader5;
                            DropDownList4.DataTextField = "Player_Name";
                            DropDownList4.DataBind();
                            reader5.Close();
                        }
                        using (SqlDataReader reader5 = command6.ExecuteReader())
                        {
                            DropDownList5.DataSource = reader5;//////Bolower
                            DropDownList5.DataTextField = "Player_Name";
                            DropDownList5.DataBind();
                            reader5.Close();
                        }
                        
                        sqlcon2.Close();
                    }
                }
            }

        }

        protected void Batsman1(object sender, EventArgs e)
        {
            BatName1.Text = DropDownList3.Text.ToString().Trim();
        }
        protected void Batsman2(object sender, EventArgs e)
        {            
            BatName2.Text = DropDownList4.Text.ToString().Trim();
        }
        protected void BolwerN(object sender, EventArgs e)
        {
            Bolwor1.Text = DropDownList5.Text.ToString().Trim();
        }
        protected void Btn0(object sender, EventArgs e)
        {
            string[] cars = new string[10];
            //{ "a", "b", "c" };
            cars[0] = ID_0.Text.ToString().Trim();            
            Lv_sc.Text = (cars[0]);
        }
        protected void Drp1to10(object sender, EventArgs e)
        {
            string[] cars = new string[10];
            cars[1] = "WB";
            Lv_sc2.Text = (cars[1]);
        }
    }
}
