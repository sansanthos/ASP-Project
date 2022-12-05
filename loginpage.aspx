<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="loginpage.aspx.cs" Inherits="projectasp.loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .loginpage
        {
           background-color: #ddd;
            border: none;
            color: black;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 16px;
        }

    </style>
    
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <br /><br /><br /><br /><br /><br /><br /><br /> 
  <center>  <div class="loginpage">
    <a href="studentlogin.aspx"><i class='fas fa-user-graduate'></i>&nbsp<b>STUDENT LOGIN</b></a>
          
        </div>
    
        <div class="loginpage">
        <a href="adminlogin.aspx"><i class="fa fa-fw fa-user"></i>&nbsp&nbsp<b>ADMIN LOGIN</b></a>
    </div>
    <div class="loginpage">
   
           <a href="companylogin.aspx"><i class='fas fa-globe'></i>&nbsp<b> COMPANY LOGIN</b></a>
        </div>
   
         </center>
</asp:Content>
