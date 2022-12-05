<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentdetails.aspx.cs" Inherits="projectasp.studentdetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h5>
        <text align="left"><a href="searchjob.aspx"><b>SEARCH JOB</b></a></text>
    </h5>
    <center>
        <table style="color:red">
                       <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="stuname" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    SureName:
                </td>
                <td>
                 <asp:TextBox ID="stusurname" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    Address:
                </td>
                <td>
                <asp:TextBox ID="stuaddress" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    City:
                </td>
                <td>
                 <asp:TextBox ID="stucity" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    State:
                </td>
                <td>
                  <asp:TextBox ID="stustate" runat="server"></asp:TextBox>


               </td>
            </tr>
             <tr>
                <td>
                    PinCode:
                </td>
                <td>
                <asp:TextBox ID="stupincode" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    BirthDate:
                </td>
                <td>
                <asp:TextBox ID="stubirthdate" runat="server" input type="date" ></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    Gender:
                </td>
                <td>
                 <asp:TextBox ID="stugender" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    Mobileno:
                </td>
                <td>
                <asp:TextBox ID="stumobileeno" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    EmailID:
                </td>
                <td>
                 <asp:TextBox ID="stuemailid" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    Enroll No:
                </td>
                <td>
                  <asp:TextBox ID="stuenrollno" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    UserName:
                </td>
                <td>
                   <asp:TextBox ID="stuusername" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                   <asp:TextBox ID="stupassword" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    Confirm Password:
                </td>
                <td>
                   <asp:TextBox ID="stuconfirmpassword" runat="server"></asp:TextBox>



               </td>
            </tr>
            
        </table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Edit" />&nbsp&nbsp&nbsp;&nbsp; &nbsp&nbsp
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="successmsg" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        
        
   </center>
</asp:Content>
