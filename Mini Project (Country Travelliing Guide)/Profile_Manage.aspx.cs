using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mini_Project__Country_Travelliing_Guide_
{
    public partial class Profile_Manage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
        }

        protected void UserName_Update_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
            Panel3.Visible = false;
        }

        protected void E_MailUpdate_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
            Panel3.Visible = false;
        }

        protected void DeleteProfile_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel3.Visible = true;
            Panel2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=ARSHIL\\SQLEXPRESS;Initial Catalog=Sample1;Integrated Security=True";
            cn.Open();
            string PassUpdate = "update  Project_Data set Name = '" + Name_Textbox.Text + "' where Name = '" + OldUserName.Text+ "'";
            try
            {
                SqlCommand cmd = new SqlCommand(PassUpdate, cn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                Label1.Visible = true;
                Label1.Text = "Username Updated Successfully.";

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=ARSHIL\\SQLEXPRESS;Initial Catalog=Sample1;Integrated Security=True";
            cn.Open();
            string PassUpdate = "update  Project_Data set E_Mail = '" + E_Mail_Textbox.Text + "' where E_Mail = '" + TextBox1.Text + "'";
            try
            {
                SqlCommand cmd = new SqlCommand(PassUpdate, cn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                Label2.Visible = true;
                Label2.Text = "E-Mail Updated Successfully.";

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=ARSHIL\\SQLEXPRESS;Initial Catalog=Sample1;Integrated Security=True";
            cn.Open();
            string FeedbackSend = "insert into Project_Feedback values('"+FeedBack.Text+"')";
            string DeleteAcc = "Delete from Project_Data where Name = '" + TextBox2.Text + "'";
            try
            {
                SqlCommand cmd = new SqlCommand(FeedbackSend, cn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                Label3.Visible = true;
                Label3.Text = "Thanks for your feedback.";
                try
                {
                    SqlCommand cmd1 = new SqlCommand(DeleteAcc, cn);
                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();
                    Label4.Visible = true;
                    Label4.Text = "Account Deleted";

                }
                catch(Exception ex)
                {
                    Response.Write(ex + " inside one");
                }
            }
                       
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}