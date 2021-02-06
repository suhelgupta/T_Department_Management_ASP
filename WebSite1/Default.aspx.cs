using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // taking datas
        string fname = TextBox1.Text;
        string lnames = lname.Value;
        string yoa = "";
        string gender = "";
        if (Radio1.Checked){ yoa = "fy";}
        if (Radio2.Checked){ yoa = "sy";}
        if (Radio3.Checked){ yoa = "ty";}
        if (Radio4.Checked){ gender = "Male";}
        if (Radio5.Checked){ gender = "female";}
        if (Radio6.Checked){ gender = "other"; }

        string emails = email.Value;
        string stphones = stphone.Value;
        string addresses = address.Value;
        string citys = city.Value;
        string state = inputState.Value;
        string zipcodes = zipcode.Value;
        string fathernames = fathername.Value;
        string fatheroccs = fatherocc.Value;
        string mothernames = mothername.Value;
        string motheroccs = motherocc.Value;
        string gaurnames = gaurname.Value;
        string gauroccs = gaurocc.Value;
        string annualincomes = annualincome.Value;
        string dobs = dob.Value;
        string ptphones = pno.Value;
        string gdphones = gno.Value;
        string schoolnames = schoolname.Value;
        string scmarks = marks.Value;

        //file uploading
        if (FileUpload1.HasFile)
        {
            string fileExt = System.IO.Path.GetExtension(FileUpload1.FileName);
            FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Images/data/") + stphones+"_10th"+ fileExt);
            string filename = stphones + "_10th" + fileExt;
        }

        string clgnames = clgname.Value;
        string clmarks = mark.Value;

        if (FileUpload2.HasFile)
        {
            string fileExt = System.IO.Path.GetExtension(FileUpload2.FileName);
            FileUpload2.PostedFile.SaveAs(Server.MapPath("~/Images/data/") + stphones + "_12th" + fileExt);
            string filename = stphones + "_12th" + fileExt;
        }



        Label1.Text = "" + fname + lnames + yoa + gender + state;


    }
}