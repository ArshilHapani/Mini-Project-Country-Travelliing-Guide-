using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Mini_Project__Country_Travelliing_Guide_
{
    public partial class New_User : System.Web.UI.Page
    {
        static string UserName = "";
        static string E_Mail = "";
        static int otp = 0; 
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
            Panel3.Visible = false;
            Panel4.Visible = false;
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Button9.Visible = false;
        }
       
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection();
            HttpCookie cookie = new HttpCookie("New_data");
            cookie["name"] = TextBox1.Text;
            cookie["Mail"] = TextBox2.Text;
            //cookie.Expires = DateTime.Now.AddMilliseconds(1);
            Response.Cookies.Add(cookie);
            string InsertData = "Insert into Project_Data values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox4.Text + "')";
            try
            {
                cn.ConnectionString = "Data Source=ARSHIL\\SQLEXPRESS;Initial Catalog=Sample1;Integrated Security=True";
                cn.Open();
                SqlCommand cmd = new SqlCommand(InsertData, cn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                cn.Close();
                Response.Redirect("User_Page.html");
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        protected void Button3_Click(object sender, EventArgs e)

        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
           
            try
            
            {
                SqlConnection cn = new SqlConnection();
                string UserCheck = "select * from Project_Data where Name  =  '" + TextBox5.Text + "'";
                cn.ConnectionString = "Data Source=ARSHIL\\SQLEXPRESS;Initial Catalog=Sample1;Integrated Security=True";
                cn.Open();
                SqlCommand cmd = new SqlCommand(UserCheck,cn);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    if(TextBox5.Text == dr.GetString(0))
                    {
                        UserName = dr.GetString(0);
                        Response.Write(UserName);
                        string Mail = dr.GetString(1);
                        dr.Close();
                        try
                        {
                            string PassCheck = "select * from Project_Data where Password = '" + TextBox6.Text + "' and Name = '"+UserName+"'";
                            cmd = new SqlCommand(PassCheck, cn);
                            dr = cmd.ExecuteReader();
                            if (dr.Read())
                            {
                                //HttpCookie cookie = new HttpCookie("Old_data");
                                //cookie["name"] = TextBox5.Text;
                                //cookie["Mail"] = Mail;
                                //cookie.Expires = DateTime.Now.AddMilliseconds(1);
                                //Response.Cookies.Add(cookie);
                                Response.Redirect("User_Page.html");
                            }
                            else
                            {
                                Label2.Visible = true;
                                Label2.Text = "*Incorrect Password";
                            }
                            
                        }
                        catch(Exception ex)
                        {
                            Response.Write(ex);
                        }
                    }
                    
                }
                else
                {
                    Label1.Visible = true;
                    Label1.Text = "*Incorrect Username";
                }
                cn.Close();
            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
            
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
            Panel3.Visible = true;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Random rnd = new Random();
            otp = rnd.Next(0, 100000);
            try
            {
                SqlConnection cn = new SqlConnection();
                cn.ConnectionString = "Data Source=ARSHIL\\SQLEXPRESS;Initial Catalog=Sample1;Integrated Security=True";
                cn.Open();
                //Response.Write(otp);
                string userCheck = "select * from Project_Data where Name = '" + TextBox7.Text + "' and E_Mail = '"+TextBox8.Text+"'";
                SqlCommand cmd = new SqlCommand(userCheck, cn);
                SqlDataReader dr = cmd.ExecuteReader();
                cmd.Dispose();
                if (dr.Read())
                {
                    try
                    {
                        if (TextBox7.Text == dr.GetString(0) && TextBox8.Text == dr.GetString(1))
                        {
                            UserName = dr.GetString(0);
                            E_Mail = dr.GetString(1);

                            MailMessage mm = new MailMessage("arshilhapani018@gmail.com", E_Mail);
                            mm.Subject = "E-Mail Confirmation ";
                            mm.Body = "Hey <h3>" + UserName.ToString() + "</h3> Your OTP for Password Reset is <b>" + otp.ToString() + "</b>" +
                                "<br> Don't Share it with anyone.";
                            mm.IsBodyHtml = true;

                            SmtpClient sc = new SmtpClient();
                            sc.Send(mm);

                            Label3.Visible = true;
                            Label3.Text = "Mail Send Successfully.";
                        }
                    }
                    catch (Exception)
                    {
                        Response.Write("<h1>Check your Network Connection");
                    }
                }
                else
                {
                    Label3.Visible = true;
                    Label3.Text = "*Incorrect Username or E-mail";
                }


            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            if(TextBox9.Text == otp.ToString())
            {
                Panel4.Visible = true;
                Panel3.Visible = false;
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "*Invalid OTP";
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;

            SqlConnection cn = new SqlConnection();
            cn.ConnectionString = "Data Source=ARSHIL\\SQLEXPRESS;Initial Catalog=Sample1;Integrated Security=True";
            cn.Open();
            string PassUpdate = "update  Project_Data set Password = '" + TextBox11.Text + "' where Name = '" + UserName + "'";
            try
            {
                SqlCommand cmd = new SqlCommand(PassUpdate, cn);
                cmd.ExecuteNonQuery();
                cmd.Dispose();
                Button9.Visible = true;
                Button9.Text = "Password Updated Succeccfully \n Go back to home page?";

            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
           
            Response.Redirect("User_Page.html");
        }
    }
}