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

        /* Set a style for all buttons */
        button {
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

            /* Add a hover effect for buttons */
            button:hover {
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

        /*######################## checkbox####################*/
        .container2 {
            display: inline-block;
            position: relative;
            padding-left: 35px;
            margin: 12px;
            cursor: pointer;
            font-size: 22px;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }

            /* Hide the browser's default radio button */
            .container2 input {
                position: absolute;
                opacity: 0;
                cursor: pointer;
            }

        /* Create a custom radio button */
        .checkmark {
            position: absolute;
            top: 0;
            left: 0;
            height: 25px;
            width: 25px;
            background-color: #eee;
            border-radius: 50%;
        }

        /* On mouse-over, add a grey background color */
        .container2:hover input ~ .checkmark {
            background-color: #ccc;
        }

        /* When the radio button is checked, add a blue background */
        .container2 input:checked ~ .checkmark {
            background-color: #2196F3;
        }

        /* Create the indicator (the dot/circle - hidden when not checked) */
        .checkmark:after {
            content: "";
            position: absolute;
            display: none;
        }

        /* Show the indicator (dot/circle) when checked */
        .container2 input:checked ~ .checkmark:after {
            display: block;
        }

        /* Style the indicator (dot/circle) */
        .container2 .checkmark:after {
            top: 9px;
            left: 9px;
            width: 8px;
            height: 8px;
            border-radius: 50%;
            background: white;
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
                <label for="fname"><b>First Name</b></label>
                <input type="text" placeholder="Enter First Name" name="fname"  required="required" />

                <label for="lname"><b>Last Name</b></label>
                <input type="text" placeholder="Enter Last Name" name="lname" required="required"  />

                
                <label class="container2">Out Sider
                     <input type="radio" checked="checked" name="radio" />
                    <span class="checkmark"></span>
                </label>
                <label class="container2">InHouse
                    <input type="radio" name="radio" />
                    <span class="checkmark"></span >
                </label>
                <label class="container2">Staf
                    <input type="radio" name="radio" />
                    <span class="checkmark"></span>
                </label>
                <button type="submit">Login</button>
                <label>
                    <input type="checkbox" checked="checked" name="remember" />
                    Remember me
                </label>

            </div
        </form>
    </div>

</asp:Content>

