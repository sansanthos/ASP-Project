<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="companyreg.aspx.cs" Inherits="projectasp.companyreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 55px;
        }
        .auto-style2 {
            height: 54px;
        }
        .auto-style3 {
            height: 56px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <body>
        <center>
            <h1>COMPANY REGISTRATION</h1>
                <table>
                    

                    <tr>
                    <td align="right" class="auto-style1">Company Name :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpname" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                           <tr>
                    <td align="right" class="auto-style1"> Address :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpaddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        </tr>
                      <tr>
                    <td align="right" class="auto-style1">City :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpcity" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                      <tr>
                    <td align="right" class="auto-style1">State :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpstate" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                      <tr>
                    <td align="right" class="auto-style1">Pincode :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmppincode" runat="server"></asp:TextBox>
                        </td>
                        </tr>                   
                      <tr>
                    <td align="right" class="auto-style1">Contact Person Name :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpcontactpersonname" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                    <tr>
                    <td align="right" class="auto-style1">Mobile No :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpmobileno" runat="server"></asp:TextBox>
                        </td>
                        </tr> 
                    <tr>
                    <td align="right" class="auto-style1">Contact No :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpcontactno" runat="server"></asp:TextBox>
                        </td>
                        </tr> 
                    <tr>
                    <td align="right" class="auto-style1">Email Id :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpemail" runat="server"></asp:TextBox>
                        </td>
                        </tr> 
                    <tr>
                    <td align="right" class="auto-style1">Company's Website :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpwebsite" runat="server"></asp:TextBox>
                        </td>
                        
                        </tr> 
                     <tr>
                    
                        <td class="auto-style2">
                           <br />
                        </td>
                        </tr> 
                   
                    <tr>
                    <td align="right" class="auto-style1">UserName :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmpusername" runat="server"></asp:TextBox>
                        </td>
                        </tr> 
                    <tr>
                    <td align="right" class="auto-style1">Password :</td>
                        <td class="auto-style1">
                            <asp:TextBox ID="cmppassword" runat="server"></asp:TextBox>
                        </td>
                        </tr> 
                     <tr>
                    <td align="right" class="auto-style3">Confirm Password :</td>
                        <td class="auto-style3">
                            <asp:TextBox ID="cmpconfirmpassword" runat="server"></asp:TextBox>
                        </td>
                        </tr>
                     <tr>
                    
                        <td>
                           <br />
                        </td>
                        </tr> 
                    
                   
                            
                       
                </table>
            <asp:Button ID="submitbtn" runat="server" Text="Submit" OnClick="submitbtn_Click"/>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp;                          
                            <asp:Button ID="resetbtn" runat="server" Text="Reset" OnClick="resetbtn_Click"/>
        </center>
         <center>
            <asp:Label ID="successmsg" runat="server" Text=""></asp:Label>
        </center>
       
    </body>

</asp:Content>
