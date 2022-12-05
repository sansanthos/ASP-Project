<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="companydetails.aspx.cs" Inherits="projectasp.companydetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h4>      
            <tetx align="right"><a href="addjob.aspx"><b>ADD NEW JOB</b> </a></tetx><br />
            <text align="right"><a href="companysearch.aspx"><b>VIEW APPLIED PROFILES</b></a></text>





        </h4><br />
        
                    

 
    </div>
    <center>
    <table style="color:red">
                       <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="cmpname" runat="server"></asp:TextBox>
                </td>
            </tr>
       
            <tr>
                <td>
                    Address:
                </td>
                <td>
                <asp:TextBox ID="cmpaddress" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    City:
                </td>
                <td>
                 <asp:TextBox ID="cmpcity" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    State:
                </td>
                <td>
                  <asp:TextBox ID="cmpstate" runat="server"></asp:TextBox>


               </td>
            </tr>
             <tr>
                <td>
                    PinCode:
                </td>
                <td>
                <asp:TextBox ID="cmppincode" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                   ContactpersonName
                </td>
                <td>
                <asp:TextBox ID="cmpcontactpersonname" runat="server"></asp:TextBox>


                    <tr>
                <td>
                    EmailID:
                </td>
                <td>
                 <asp:TextBox ID="cmpemail" runat="server"></asp:TextBox>





              </td>
            </tr>
            <tr>
                <td>
                    Website:
                </td>
                <td>
                  <asp:TextBox ID="cmpwebsite" runat="server"></asp:TextBox>





              </td>
            </tr>

               </td>
            </tr>
           
            <tr>
                <td>
                    Mobileno:
                </td>
                <td>
                <asp:TextBox ID="cmpmobileno" runat="server"></asp:TextBox>



               </td>
            </tr>
         <tr>
                <td>
                    Contactno:
                </td>
                <td>
                <asp:TextBox ID="cmpcontactno" runat="server"></asp:TextBox>



               </td>
            </tr>
           x
            <tr>
                <td>
                    UserName:
                </td>
                <td>
                   <asp:TextBox ID="cmpusername" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    Password:
                </td>
                <td>
                   <asp:TextBox ID="cmppassword" runat="server"></asp:TextBox>



               </td>
            </tr>
            <tr>
                <td>
                    Confirm Password:
                </td>
                <td>
                   <asp:TextBox ID="cmpconfirmpassword" runat="server"></asp:TextBox>



               </td>
            </tr>
            
        </table>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Edit" />&nbsp&nbsp&nbsp&nbsp&nbsp
            </td>
        </tr>
        <tr>
            <td>
                 <asp:Button ID="Button2" runat="server" Text="Update" OnClick="Button2_Click" /><br />
            </td>
        </tr>

        <asp:Label ID="successmsg" runat="server" Text=""></asp:Label>
        
               
        
        
   </center>
</asp:Content>
