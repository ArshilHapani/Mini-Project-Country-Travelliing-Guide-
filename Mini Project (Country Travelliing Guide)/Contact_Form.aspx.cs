using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mini_Project__Country_Travelliing_Guide_
{
    public partial class Contact_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
           
            string InsertData = "Insert into Project_Contact1 values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            try
            {
                cn.ConnectionString = "Data Source=ARSHIL\\SQLEXPRESS;Initial Catalog=Sample1;Integrated Security=True";
                cn.Open();
                SqlCommand cmd = new SqlCommand(InsertData, cn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
                Label1.Visible = true;
                Label1.Text = "Thanks for contacting us. \n We will contact you soon";
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}