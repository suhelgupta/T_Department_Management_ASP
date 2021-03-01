using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Library_returnbook : System.Web.UI.Page
{
    // connction String
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        string sqlcmd = "";
        if (!IsPostBack)
        {
            //sqlcmd = "SELECT * FROM [libissubook] ";
            //SqlDataSource1.SelectCommand = sqlcmd;

        }
        else
        {
            //string Searchby = DropDownList1.SelectedValue;
            //string search = TextBox7.Text;
            //sqlcmd = "SELECT * FROM [libissubook] WHERE (" + Searchby + " like '%" + search + "%') ";
            //SqlDataSource1.SelectCommand = sqlcmd;
            myfunc();
        }


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        // removing a class
        //successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        //successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        //string Searchby = DropDownList1.SelectedValue;
        //string search = TextBox7.Text;
        ////TextBox1.Text = Searchby;
        //TextBox2.Text = search;

        //string query = "SELECT * from libaddbook where(" + Searchby + " like '%" + search + "%') ";
        //SqlDataSource2.SelectCommand = query;

        //string Searchby = DropDownList1.SelectedValue;
        //string search = TextBox7.Text;
        //string sqlcmd = "SELECT * FROM [libissubook] WHERE (" + Searchby + " like '%" + search + "%') ";
        //SqlDataSource1.SelectCommand = sqlcmd;
        //TextBox7.Text = search;
        //DropDownList1.SelectedValue = Searchby;
        myfunc();
    }

    protected void myfunc()
    {
        string Searchby = DropDownList1.SelectedValue;
        string search = TextBox7.Text;
        string sqlcmd = "SELECT * FROM [libissubook] WHERE (" + Searchby + " like '%" + search + "%') ";
        SqlDataSource1.SelectCommand = sqlcmd;
        TextBox7.Text = search;
        DropDownList1.SelectedValue = Searchby;
    }



    //bool checkbookcode(string bookcode1)
    //{
    //    // connection 1
    //    SqlConnection con = new SqlConnection(cs);
    //    con.Open();
    //    SqlCommand myCommand = con.CreateCommand();
    //    myCommand.CommandText = ("SELECT bookcode,avquantity from libaddbook "); // Where Login is your table . UserName and Password Columns
    //    SqlDataReader myReader = myCommand.ExecuteReader();


        
    //    // Check Email and phone no.
    //    while (myReader.Read())
    //    {
    //        //checkme.InnerHtml += bookcode1+ " " + myReader["bookcode"].ToString() + "<br>";
    //        if (bookcode1.CompareTo(myReader["bookcode"].ToString()) == 0) // passwordBox.Text.CompareTo(myReader["Password"].ToString()) == 0) // A little messy but does the job to compare your infos assuming your using a textbox for username and password
    //        {
    //            string avbook = myReader["avquantity"].ToString();
    //            int avlablebook = Convert.ToInt32(avbook);
                
    //            avlablebook = avlablebook - 1;
    //            SqlConnection con2 = new SqlConnection(cs);
    //            SqlCommand cmd2 = new SqlCommand("UPDATE libaddbook SET avquantity = " + avlablebook + "WHERE bookcode='"+ bookcode1 +"'", con2);
    //            con2.Open();
    //            cmd2.ExecuteNonQuery();
    //            con2.Close();
    //            return true;
    //        }

    //    }
    //    myReader.Close();
    //    con.Close(); // Just close everything



    //    return false;
    //}
}
