<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Login Form</title>
    <style>
        body {
            background-color: white;
            background: url("/Images/login1.jpg") center center/cover;
        }

        /*form {
            border: 3px solid #f1f1f1;
        }*/

        /* Full-width inputs */
        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            box-sizing: border-box;
        }
        .inputtpes{
             width: 100%;
            padding: 12px 20px;
            margin: 8px 0;
            display: inline-block;
            box-sizing: border-box;
        }

        /* Set a style for all buttons */
        .button12 {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

        /* Add a hover effect for buttons */
        .button12:hover {
            opacity: 0.8;
        }

        /* Extra style for the cancel button (red) */
        .cancelbtn {
            width: auto;
            padding: 10px 18px;
            background-color: #f44336;
        }

        /* Center the avatar image inside this container */
        .imgcontainer {
            text-align: left;
            margin: 15px 0 1% 20%;
        }

        /* Avatar image */
        img.avatar {
            width: 13%;
            border-radius: 100%;
        }

        .loginimage {
        }

        /* Add padding to containers */
        .container1 {
            border-radius: 15px;
            background-color: aqua;
            padding: 2em;
            text-align: center;
            width: 30%;
            margin: 0% 10%;
        }

        /* The "Forgot password" text */
        span.psw {
            float: right;
            padding-top: 16px;
        }

        /* Change styles for span and cancel button on extra small screens */
        @media screen and (max-width: 300px) {
            span.psw {
                display: block;
                float: none;
            }

            .cancelbtn {
                width: 100%;
            }
        }

        
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="loginimage">
        <form id="form1" runat="server">
            <div class="imgcontainer">
                <img src="Images/Avtar1.png" alt="Avatar" class="avatar">
            </div>

            <div class="container1">
                <label for="fname"><b>Email</b></label>
                <asp:TextBox ID="TextBox1" CssClass="inputtpes" runat="server"></asp:TextBox>

                <label for="lname"><b>Passwprd</b></label>
                <asp:TextBox ID="TextBox2" CssClass="inputtpes" runat="server" TextMode="Password"></asp:TextBox> <br /><br />

                <asp:Button ID="Button1" CssClass="btn btn-outline-success mx-1" runat="server" Text="Out Sider" OnClick="Button1_Click" />

                <asp:Button ID="Button2" CssClass="btn btn-outline-success mx-1" runat="server" Text="Inhouse" OnClick="Button2_Click" />

                <asp:Button ID="Button3" CssClass="btn btn-outline-success mx-1" runat="server" Text="teachers" OnClick="Button3_Click" />

                <asp:Button ID="Button4" CssClass="btn btn-outline-success mx-1" runat="server" Text="librarian" OnClick="Button4_Click" />

                <asp:Button ID="Button5" CssClass="btn btn-outline-success mx-1" runat="server" Text="hod" OnClick="Button5_Click" />

                <br /><br />
                    <div style="display:none;" id="unique" runat="server">
                        <label for="fname"><b>First Name</b></label>
                        <asp:TextBox ID="TextBox3" CssClass="inputtpes" runat="server"></asp:TextBox>
                        <br /><br />
                    </div>

                <asp:Button ID="Button6" CssClass="button12" runat="server" Text="Button" OnClick="Button6_Click" />
                <label>
                    <input type="checkbox" checked="checked" name="remember" />
                    Remember me
                </label>

            </div>
        </form>
    </div>

</asp:Content>

