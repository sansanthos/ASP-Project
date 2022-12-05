<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="educationreg.aspx.cs" Inherits="projectasp.educationreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <style type="text/css">
        .auto-style1 {
            height: 61px;
        }
        .auto-style2 {
            height: 54px;
        }
        .auto-style3 {
            height: 58px;
        }
        .auto-style6 {
            height: 55px;
        }
        .auto-style7 {
            height: 60px;
        }
        .auto-style8 {
            height: 59px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
            <table>
                <h4>Please fill all the details here</h4>
              
            <tr>
                <td align="right" class="auto-style1">College Name:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="educlgname" runat="server"></asp:TextBox>
                </td>
            </tr>
                 <tr>
                <td align="right" class="auto-style2">Enroll No:</td>
                <td class="auto-style2">
                    <asp:TextBox ID="eduenrollno" runat="server"></asp:TextBox>
                </td>
            </tr>
                 <tr>
                     <td align="right" class="auto-style3">
                        Semester:
                     </td>
                     <td class="auto-style3">
                         <asp:DropDownList ID="edusemester" runat="server">
                             <asp:ListItem>select semester</asp:ListItem>
                             <asp:ListItem>1st Sem</asp:ListItem>
                             <asp:ListItem>2nd Sem</asp:ListItem>
                             <asp:ListItem>3rd Sem</asp:ListItem>
                             <asp:ListItem>4rd Sem</asp:ListItem>
                             <asp:ListItem>5th Sem</asp:ListItem>
                             <asp:ListItem>6th Sem</asp:ListItem>
                             <asp:ListItem>7th Sem</asp:ListItem>
                             <asp:ListItem>8th Sem</asp:ListItem>


                        </asp:DropDownList></td>
                     
                 </tr>
                <tr>
                     <td align="right" class="auto-style2">
                        Education:
                     </td>
                     <td class="auto-style2">
                         <asp:DropDownList ID="edueducation" runat="server">
                             <asp:ListItem>select stream</asp:ListItem>
                             <asp:ListItem>BE</asp:ListItem>
                             <asp:ListItem>B.Tech</asp:ListItem>
                             <asp:ListItem>BCA</asp:ListItem>
                             <asp:ListItem>B.Sc</asp:ListItem>
                        </asp:DropDownList></td>
                     
                 </tr>
                <tr>
                     <td align="right" class="auto-style3">
                        Branch:
                     </td>
                     <td class="auto-style3">
                         <asp:DropDownList ID="edubranch" runat="server">
                             <asp:ListItem>select Branch</asp:ListItem>
                             <asp:ListItem>COMPUTER SCIENCE</asp:ListItem>
                             <asp:ListItem>ARTS</asp:ListItem>
                             <asp:ListItem>MECHANCIAL</asp:ListItem>
                             <asp:ListItem>ELECTRICAL</asp:ListItem>
                        </asp:DropDownList></td>
                     
                 </tr>
                 <tr>
                     <td align="right" class="auto-style6">
                        Passing Year:
                     </td>
                     <td class="auto-style6">
                         <asp:DropDownList ID="edupassyear" runat="server">
                             <asp:ListItem>select Year</asp:ListItem>
                             <asp:ListItem>2017</asp:ListItem>
                             <asp:ListItem>2018</asp:ListItem>
                             <asp:ListItem>2019</asp:ListItem>
                             <asp:ListItem>2020</asp:ListItem>
                             <asp:ListItem>2021</asp:ListItem>
                             <asp:ListItem>2022</asp:ListItem>
                             <asp:ListItem>2023</asp:ListItem>



                       </asp:DropDownList></td>
                     
                 </tr>
                <tr>
                <td align="right" class="auto-style7">CPI:</td>
                <td class="auto-style7">
                    <asp:TextBox ID="educpi" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td align="right" class="auto-style8">CGPA:</td>
                <td class="auto-style8">
                    <asp:TextBox ID="educgpa" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                     <td align="right" class="auto-style8">
                        Skill:
                     </td>
                     <td class="auto-style8">
                         <asp:DropDownList ID="eduskill" runat="server">
                             <asp:ListItem>select skill</asp:ListItem>
                             <asp:ListItem>C</asp:ListItem>
                             <asp:ListItem>C++</asp:ListItem>
                             <asp:ListItem>.NET</asp:ListItem>
                             <asp:ListItem>JAVA</asp:ListItem>
                             <asp:ListItem>PYTHON</asp:ListItem>
                            



                       </asp:DropDownList></td>
                     
                 </tr>
                 <tr>
                <td align="right" class="auto-style1">Extra Skill:</td>
                <td class="auto-style1">
                    <asp:TextBox ID="eduextraskill" runat="server"></asp:TextBox>
                </td>
            </tr>
                <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                <tr>
                    <td align="right" class="auto-style8">Resume:</td>
                                   <td>   <asp:FileUpload ID="FileUpload1" runat="server" /></td> 
                    <td>        <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>


                   <!--- <td class="auto-style8"><asp:TextBox ID="eduresume" runat="server" input type="file" OnTextChanged="eduresume_TextChanged"></asp:TextBox></td>--->
                </tr>
            </table>
            <tr>
                <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click"  />&nbsp;&nbsp;



               </td>
             
            </tr>
            
        </center>
    <center>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
      
    </center>
</asp:Content>
