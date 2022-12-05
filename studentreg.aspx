
<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentreg.aspx.cs" Inherits="projectasp.studentreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 55px;
        }
        .auto-style2 {
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <center>
            <h1>STUDENT REGISTRATION</h1>
                <table>
                    

                    <tr>
                    <td align="right" class="auto-style1">Name :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stuname" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                    
                     <tr>
                    <td align="right" class="auto-style1">SurName :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stusurname" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                     <tr>
                    <td align="right" class="auto-style1">Address :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stuaddress" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                     <tr>
                    <td align="right" class="auto-style1">City:</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stucity" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                     <tr>
                    <td align="right" class="auto-style1">State :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stustate" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                     <tr>
                    <td align="right" class="auto-style1">Pincode :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stupincode" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                     <tr>
                    <td align="right" class="auto-style1">Date of Birth:</td>
                         <td>
                         <asp:TextBox ID="stubirthdate" runat="server" input type = "date" > </asp:TextBox>
                       </td>
                        </tr>
                     <tr>
                    <td align="right" class="auto-style1">Gender :</td>
                         <td>
                    <asp:DropDownList ID="stugender" runat="server">
                             <asp:ListItem>select Gender</asp:ListItem>
                             <asp:ListItem>Male</asp:ListItem>
                             <asp:ListItem>Female</asp:ListItem>
                             <asp:ListItem>Others</asp:ListItem>
                         </asp:DropDownList>
                                        </td>
                        <td class="auto-style1">
                           
                        </td>
                        </tr>
                     <tr>
                    <td align="right" class="auto-style1">Mobile No :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stumobileeno" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                     <tr>
                    <td align="right" class="auto-style2">Email Id :</td>
                        <td class="auto-style2">
                            <asp:TextBox ID="stuemailid" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                     <tr>
                    <td align="right" class="auto-style1"> Enroll No :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stuenrollno" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                    <tr>
                        <td>
                           <br />
                        </td>
                        </tr> 
                      <tr>
                    <td align="right" class="auto-style1"> UserName :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stuusername" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                      <tr>
                    <td align="right" class="auto-style1"> Password :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stupassword" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                      <tr>
                    <td align="right" class="auto-style1"> Confirm Password :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="stuconfirmpassword" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                    <tr>
                        <td>
                           <br />
                        </td>
                        </tr> 
                    </table>

            <asp:Button ID="conbtn" runat="server" Text="Continue" OnClick="conbtn_Click" />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="resetbtn" runat="server" Text="Reset" OnClick="resetbtn_Click" />
           
        </center>
        <center>
            <asp:Label ID="successmsg" runat="server" Text=""></asp:Label>
        </center>
       
    </body>
    
</asp:Content>
