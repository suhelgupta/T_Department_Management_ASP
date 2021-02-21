<%@ Page Title="" Language="C#" MasterPageFile="~/Library/Library.master" AutoEventWireup="true" CodeFile="AddBooks.aspx.cs" Inherits="Library_AddBooks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .col-md-6 {
            display: inline-block;
        }

        .container {
            width: 35%;
            margin: 2px auto;
            padding: 15px;
        }

        .backccolor {
            background-color: gray;
        }

        h3 {
            text-align: center;
        }

        input[type="text" i] {
            padding: 8px 30px;
        }

        input[type="text1" i] {
            padding: 20px 150px;
        }

        .form-control {
            padding: 8px 30px;
        }
        /*.btn-outline-success {
             width: 149px;
             height: 22px;
             margin-left: 150px;
             margin-top: 8px;
             margin-bottom: 5px;
             background-color:wheat;
        }*/
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

     <div class="alert alert-dismissible fade " id="successAlert" runat="server" role="alert">
            <strong id="strong1" runat="server">Success!</strong> <span id="message" runat="server"></span>
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
        </div>


    <form id="frm" runat="server">
        <div class="container backccolor background">
            <div class="row">
                <h3>ADD BOOKS</h3>
                <div class="col-md-6">
                    <label for="inputname">Name of Book</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:textbox id="TextBox1" cssclass="form-control" runat="server" placeholder="Book Name"></asp:textbox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Author</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:textbox id="TextBox2" cssclass="form-control" runat="server" placeholder="Author"></asp:textbox>
                </div>
            <div class="form-group">
                <label for="inputState">Publication</label><br />
                <asp:textbox id="TextBox3" cssclass="form-control" runat="server" placeholder="Publication"></asp:textbox>
            </div>
                <div class="col-md-6">
                    <label for="inputname">Book Code</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="fname" placeholder="First name" />--%>
                    <asp:textbox id="TextBox4" cssclass="form-control" runat="server" placeholder="Book Code"></asp:textbox>
                </div>
                <div class="col-md-6">
                    <label for="inputname">Quantity</label><br />
                    <%--<input type="text" class="form-control" runat="server" id="lname" placeholder="Last name" />--%>
                    <asp:textbox id="TextBox5" cssclass="form-control" runat="server" placeholder="Quantity" TextMode="Number"></asp:textbox>
                </div>
            </div>
            <div class="p-3">
                <center>
                    <span id="TextBox6" runat="server"></span><br />
                    <asp:button id="Button1" runat="server" cssclass=" btn btn-success" text="ADD" OnClick="Button1_Click" />
                </center>
            </div>
            <div>
            </div>

        </div>
    </form>
</asp:Content>

