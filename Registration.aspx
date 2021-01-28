<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Registration</title>
        <style>
            * {
                box-sizing: border-box;
            }

            h2 {
                text-align: center;
                color: Silver;
            }

            body {
                background-color: Black;
            }

            input[type=text], select, textarea {
                width: 95%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }

            /*.input1{
                width: 95%;
                padding: 12px;
                border: 1px solid #ccc;
                border-radius: 4px;
                resize: vertical;
            }*/

            label {
                padding: 12px 12px 12px 0;
                display: inline-block;
            }

            input[type=submit] {
                background-color: #4CAF50;
                color: white;
                padding: 10px 10px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
                width: 95%;
                text-align: center;
                margin:auto;
            }

                input[type=submit]:hover {
                    background-color: #45a049;
                }

            .container1 {
                border-radius: 15px;
                /*background-color: rgb(114, 64, 194);*/
                background: none;
                padding: 2em;
                margin: 5px, 10px, 5px, 10px;
                margin:auto;
                text-align: center;
                width: 50%;

            }

            .col-25 {
                /*float: left;*/
                width: 25%;
                margin-top: 6px;
            }

            body{
                background: url(/Images/register.jpg) center center/cover;
                font-weight:bold;
            }

            .col-75 {
                float: left;
                width: 75%;
                margin-top: 6px;
            }

            .heading1{
               font-family:Algerian;
               color: black;
               font-weight:bolder;
            }

            /* Clear floats after the columns */
            .row:after {
                content: "";
                display: table;
                clear: both;
            }

            /* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
            @media screen and (max-width: 600px) {
                .col-25, .col-75, input[type=submit] {
                    width: 100%;
                    margin-top: 0;
                }
            }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="mt-5">
        <h2 class=" heading1">REGISTRATION FORM</h2>
        <div class="container1">
            <form runat="server">
                <div class="row">
                    <div class="col-25">
                        <label for="fname">First Name</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="fname" name="firstname" placeholder="Your name.." />
                    </div>

                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="lname">Last Name</label>
                    </div>
                    <div class="col-75">
                        <%--<asp:TextBox ID="TextBox1" CssClass="input1" runat="server"></asp:TextBox>--%>
                        <input type="text" id="lname" name="lastname" placeholder="Your last name.." />
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="year">Select Year</label>
                    </div>
                    <div class="col-75">
                        <select id="year" name="year">
                            <option value="australia">FY.BSC.IT</option>
                            <option value="canada">SY.BSC.IT</option>
                            <option value="usa">TY.BSC.IT</option>
                        </select>
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                        <label for="mno">Mobile no</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="Text1" name="mobno" placeholder="Your contact no.." />
                    </div>
                </div>

                <div class="row">
                    <div class="col-25">
                        <label for="mail">Email ID</label>
                    </div>
                    <div class="col-75">
                        <input type="text" id="Text2" name="mail" placeholder="Your emailid.." />
                    </div>
                </div>
                <div class="row">
                    <div class="col-25">
                    </div>
                        <div class="col-75">
                            <input type="submit" value="Register" />
                        </div>
               </div>
            </form>
        </div>
    </div>
</asp:Content>

