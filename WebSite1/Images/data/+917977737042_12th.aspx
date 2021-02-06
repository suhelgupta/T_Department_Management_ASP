<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Rules.aspx.cs" Inherits="Rules" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   <style>
       ul{
           text-align:center;
           color:white;
       }
       body{
           margin:10%;
           
       }
   </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <ul style="list-style-type:square;>
        <li>Identity Card must be presented and deposited before using the Digital Library facility.</li><br />
         </ul>
        <li style="list-style-type:square;>Students should have their registered accounts and activated at the Digital Library and must use their own account.</li><br />
        <li style="list-style-type:square;>The use of the Digital Library Facility is on a first-come-first-serve basis.</li><br />
        <li style="list-style-type:square;>Students are allowed to issue only 3 books at a time.</li><br />
        <li style="list-style-type:square;>Students should return books in given time slots.</li><br />
        <li style="list-style-type:square;>Penalty of Rs.5/day will be charged after the return date.</li>
    
</asp:Content>

