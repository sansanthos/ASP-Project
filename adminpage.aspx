<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminpage.aspx.cs" Inherits="projectasp.adminpage1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
       /*   .loginpage
        {
             background-color: dodgerblue;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 16px;
        }*/
    
               .button
        {
            border: none;
            background-color:powderblue;
  color: darkblue;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 16px;
        }
      .button:hover {
  background-color: white;
  color:dodgerblue;
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    

     <div class="loginpage">
         <asp:Button ID="Button1" class="button" runat="server" Text="STUDENT DETAILS" OnClick="Button1_Click" />
    </div>
     <div class="loginpage">
         <asp:Button ID="Button2" runat="server" Class="button" Text="EDUCATION DETAILS" OnClick="Button2_Click" />
    </div>
     <div class="loginpage">
         <asp:Button ID="Button3" runat="server" Class="button" Text="COMPANY DETAILS" OnClick="Button3_Click" />
    </div>
     <div class="loginpage">
         <asp:Button ID="Button4" runat="server" class="button" Text="APPLIED STUDENTS DETAILS" OnClick="Button4_Click" />
    </div>
     <div class="loginpage">
         <asp:Button ID="Button5" runat="server" class="button" Text="ADDED JOBS DETAILS" OnClick="Button5_Click" />
    </div>





</asp:Content>
