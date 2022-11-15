using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentRegistration
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getStudentList();
            }
        }

        SqlConnection connection = new SqlConnection(@"Data Source=LAPTOP-HFL4D08K\SQLEXPRESS;Initial Catalog=studentRegister;Integrated Security=True");
        protected void btnInsert_Click(object sender, EventArgs e)
        {
            int stid = int.Parse(TextBox1.Text);
            string stname = TextBox2.Text, gender = RadioButtonList1.Text, city = DropDownList1.Text, number = TextBox4.Text;
            DateTime dob = DateTime.Parse(TextBox3.Text);

            connection.Open();
            SqlCommand command = new SqlCommand("Insert into Student values ('" + stid + "', '" + stname + "', '" + gender + "','" + dob + "','" + city + "','" + number + "')", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('Student Added');", true);
            getStudentList();

        }
        void getStudentList()
        {
            SqlCommand command = new SqlCommand("Select * from Student", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int stid = int.Parse(TextBox1.Text);
            string stname = TextBox2.Text, gender = RadioButtonList1.Text, city = DropDownList1.Text, number = TextBox4.Text;
            DateTime dob = DateTime.Parse(TextBox3.Text);

            connection.Open();
            SqlCommand command = new SqlCommand("update Student set StName = '" + stname + "', Gender = '" + gender + "', DOB = '" + dob + "', City = '" + city + "', Number = '" + number + "' where StID = '"+ stid +"'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student Updated');", true);
            getStudentList();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            int stid = int.Parse(TextBox1.Text);
            
            connection.Open();
            SqlCommand command = new SqlCommand("Delete Student where StID = '" + stid + "'", connection);
            command.ExecuteNonQuery();
            connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Student Deleted');", true);
            getStudentList();
        }

        protected void btnGet_Click(object sender, EventArgs e)
        {
            int stid = int.Parse(TextBox1.Text);

            SqlCommand command = new SqlCommand("Select * from Student where StID = '" + stid + "'", connection);
            SqlDataAdapter sd = new SqlDataAdapter(command);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnLoad_Click(object sender, EventArgs e)
        {
            getStudentList();
        }
    }
}