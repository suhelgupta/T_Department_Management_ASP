using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;

public partial class Library_AddBooks : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    // connction String
    string cs = System.Configuration.ConfigurationManager.ConnectionStrings["myconn"].ConnectionString;

    protected void Button1_Click(object sender, EventArgs e)
    {
        int count;
        bool success = true;
        string bookname = TextBox1.Text;
        string authorname = TextBox2.Text;
        string publication = TextBox3.Text;
        string bookid = TextBox4.Text;
        string quantity = TextBox5.Text;
        count = Convert.ToInt16(quantity);
        int checkexist = checktotalbook(bookid);
        TextBox6.InnerText = checkexist.ToString();


        if (checkexist == 0)
        {
            try
            {
                // Making Connection to database
                // connection 2 ---------- connection string is present at the top of the page
                SqlConnection con1 = new SqlConnection(cs);
                SqlCommand cmd = new SqlCommand("INSERT INTO libaddbook (bookname,Authorname,publicationname,bookcode,totalquantity,avquantity) VALUES('" + bookname + "','" + authorname + "','" + publication + "','" + bookid + "'," + count + "," + count + ")", con1);
                con1.Open();
                cmd.ExecuteNonQuery();
                con1.Close();

                success = true;
                // setting success message
                message.InnerText = "Book Added Successfully";
                TextBox6.InnerText += "sucess";

            }
            catch (Exception f)
            {
                string er = f.Message;
                message.InnerText = er;
                success = false;
            }
        }
        else
        {
            int count1 = count + checkexist;
            try
            {
                // Making Connection to database
                // connection 3 ---------- connection string is present at the top of the page
                SqlConnection con2 = new SqlConnection(cs);
                //SqlConnection con3 = new SqlConnection(cs);
                
                SqlCommand cmd2 = new SqlCommand("UPDATE libaddbook SET totalquantity ="+ count1 + ",avquantity=avquantity+" + count + " WHERE bookcode='" + bookid + "'", con2);
                con2.Open();
                cmd2.ExecuteNonQuery();
                con2.Close();

                success = true;

                // setting success message
                message.InnerText = "Book Added Successfully";

            }
            catch (Exception f1)
            {
                string er1 = f1.Message;
                message.InnerText = er1;
                success = false;
            }
        }

        TextBox6.InnerText += " sucess2";

        // removing a class
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger" }).ToArray()));
        successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success" }).ToArray()));

        TextBox6.InnerText += "  suhel";
        if (success)
        {

            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-success", }).Concat(new string[] { "alert-success" }).ToArray()));
            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "show", }).Concat(new string[] { "show" }).ToArray()));
            strong1.InnerText = "Success!";
        }
        else
        {
            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "alert-danger", }).Concat(new string[] { "alert-danger" }).ToArray()));
            successAlert.Attributes.Add("class", String.Join(" ", successAlert.Attributes["class"].Split(' ').Except(new string[] { "show" }).Concat(new string[] { "show" }).ToArray()));
            strong1.InnerText = "Error!";
        }

        
    }

    //bool checkbook(string bookid)
    //{
    //    // connection 1
    //    SqlConnection con = new SqlConnection(cs);
    //    con.Open();
    //    SqlCommand myCommand = con.CreateCommand();
    //    myCommand.CommandText = ("SELECT bookcode from libaddbook"); // Where Login is your table . UserName and Password Columns
    //    SqlDataReader myReader = myCommand.ExecuteReader();

    //    // Check Email and phone no.
    //    while (myReader.Read())
    //    {
    //        if (bookid.CompareTo(myReader["bookcode"].ToString()) == 0) // passwordBox.Text.CompareTo(myReader["Password"].ToString()) == 0) // A little messy but does the job to compare your infos assuming your using a textbox for username and password
    //        {
    //            return true;
    //        }
            
    //    }
    //    myReader.Close();
    //    con.Close(); // Just close everything
    //    return false;
    //}

    int checktotalbook(string bookid)
    {
        // connection 1
        SqlConnection con = new SqlConnection(cs);
        con.Open();
        SqlCommand myCommand = con.CreateCommand();
        myCommand.CommandText = ("SELECT bookcode,totalquantity from libaddbook "); // Where Login is your table . UserName and Password Columns
        SqlDataReader myReader = myCommand.ExecuteReader();

        // Check Email and phone no.
        while (myReader.Read())
        {
            if (bookid.CompareTo(myReader["bookcode"].ToString()) == 0) // passwordBox.Text.CompareTo(myReader["Password"].ToString()) == 0) // A little messy but does the job to compare your infos assuming your using a textbox for username and password
            {
                string totalbook = myReader["totalquantity"].ToString();
                return Convert.ToInt16(totalbook);
            }

        }
        myReader.Close();
        con.Close(); // Just close everything
        return 0;
    }
}