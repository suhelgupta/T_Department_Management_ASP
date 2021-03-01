<%@ Page Title="" Language="C#" MasterPageFile="~/teachers/teachers.master" AutoEventWireup="true" CodeFile="Studentlist.aspx.cs" Inherits="teachers_Studentlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Student List</title>
    <style>
        .myitems {
            padding: 100px 13px;
            margin: 30px auto;
            width: 20%;
            background-color: aqua;
            border: 2px solid black;
            border-radius: 10px;
            transition: all 0.5s ease-in-out;
        }

            .myitems:hover {
                transform: scale(1.2);
                cursor: pointer;
            }

        .CodeAreaa {
            border: 2px solid red;
            border-radius: 20px;
            margin: 20px auto 20px auto;
            padding: 20px;
            width: 50%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="alert alert-dismissible fade " id="successAlert" runat="server" role="alert">
        <strong id="strong1" runat="server">Success!</strong> <span id="message" runat="server"></span>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>


    <form id="form" runat="server">

        <div class="container">
            <center>
                <div class="CodeAreaa">

                    <asp:button runat="server" cssclass="btn btn-danger" text="Update Student List" onclick="Unnamed1_Click"></asp:button>
                    <asp:button runat="server" cssclass="btn btn-danger" text="Year Increment"></asp:button>
                </div>
                <div class="container row ">
                    <div class="col-md-4 myitems" id="firstyear" onclick="Toogle(a='secondyear')">
                        First Year
                    </div>

                    <div class="col-md-4 myitems" id="secondyear" onclick="Toogle(a='firstyear')">
                        Second Year
                    </div>

                    <div class="col-md-4 myitems" id="thirdyear" onclick="Toogle(a='secondyear')">
                        Third Year
                    </div>

                </div>

                <div id="fylist">

                </div>
                <div id="sylist">

                </div>
                <div id="tylist">

                </div>

            </center>


        </div>


    </form>
    <script>
        function Toogle(id2) {
            //let btn = document.getElementById(id1);
            let para = document.getElementById(id2);
            if (para.style.display != "none") { /* para.style.display Using this we can change the   */
                para.style.display = "none";
            }
            else {
                para.style.display = "";
            }
        }

        function hide(a) {
            let para = document.getElementById(a);
            para.style.display = "none";

        }


    </script>
</asp:Content>

