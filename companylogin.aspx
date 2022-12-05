<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="companylogin.aspx.cs" Inherits="projectasp.companylogin" %>
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
    
      <div>
          <br /><br /><br /><br />
             <center>



       <br />



   <table class="stulogin">
        <tr>
            <td style="color:white">
                UserName:<asp:TextBox ID="txtusername" runat="server"></asp:TextBox><br />
            </td>
        </tr>
        <tr>
            <td style="color:white">
                 Password:<asp:TextBox ID="textpassword" runat="server" ></asp:TextBox><br />
            </td>
        </tr>
        <tr>
                                <td >
                                   <a href="companyreg.aspx" style="color:white">New Company?</a><br />
                                </td>
                                
                            </tr>
        <tr>
            <td  >
                                    <asp:Button ID="txtlog" Class="button" runat="server" Text="login" OnClick="txtlog_Click" /><br />
                 <asp:Label ID="Label1" style="color:white" runat="server" Text=""></asp:Label>
            
                                </td>
           
        </tr>



   </table>
     <br /><br /><br /><br /><br /><br />
                 <asp:Button ID="Button1" CssClass="button" runat="server" Text="Back" OnClick="Button1_Click" />
             </center><br />
        </div>
</asp:Content>
