<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="projectasp.adminlogin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  <style>
        .stulogin
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
        }
        .button
        {
            border: none;
            background-color:dodgerblue;
  color: white;
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
   <br /><br /><br /><br /> <center>
        <table class="stulogin">
        <tr>
            <td style="color:white" >
                UserName:<asp:TextBox ID="txtuser" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="color:white">
                 Password:<asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button class="button" ID="txtlog" runat="server" Text="login" OnClick="txtlog_Click" /><br />
                &nbsp;
                &nbsp;
                 <asp:Label  ID="Label1" runat="server" Text=""></asp:Label>
            
                                </td>
           
        </tr>



   </table>
       <br /><br /><br /><br /><br /><br />
       <asp:Button ID="Button1" runat="server" CssClass="button" Text="Back" OnClick="Button1_Click"/>
    </center>
</asp:Content>
