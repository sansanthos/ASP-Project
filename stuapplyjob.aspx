<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="stuapplyjob.aspx.cs" Inherits="projectasp.stuapplyjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div></div>
    <center>
          <center><h3>Job Details</h3></center>
    <table class="auto-style7">
        <tr>
    
            <td class="auto-style8">Company Name </td>
           <td class="auto-style6"><asp:Label ID="lblcmpnyname" runat="server" Text="Label"></asp:Label></td>
          <%--  <td> <asp:TextBox ID="txtcmpnyname" runat="server"></asp:TextBox></td>--%>
        </tr>
        <tr>
            <td class="auto-style8">Job Category</td>
            <td class="auto-style6"><asp:Label ID="lblJobCategory" runat="server" Text="Label"></asp:Label></td>
                <%--<td> <asp:TextBox ID="txtcategory" runat="server"></asp:TextBox></td>--%>



       </tr>
       <tr>
            <td class="auto-style8">Required Skill</td>
           <td class="auto-style6"><asp:Label ID="lblRequiredskill" runat="server" Text="Label"></asp:Label></td>
            
        </tr>
        </table>
    <%--///////////////////////--%>
        <div>



       </div>
        <center><h3> Details</h3></center>



       <table class="tab1">
           <tr>
            
            <td class="auto-style15">First Name</td>
            <td class="auto-style16"><asp:TextBox ID="TextBox1" class="tb" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style15">Last Name</td>
            <td class="auto-style16"><asp:TextBox ID="TextBox2" class="tb" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td class="auto-style15">Dob</td>
            <td class="auto-style16"> <asp:TextBox ID="TextBox3" type="date" class="tb" runat="server" Width="163px"></asp:TextBox></td>
        </tr>
            <tr>
            <td class="auto-style15">Contact Number</td>
            <td class="auto-style16"> <asp:TextBox ID="TextBox4" class="tb" runat="server"></asp:TextBox></td>
        </tr>
             <tr>
            <td class="auto-style15">Email Id</td>
            <td class="auto-style16"> <asp:TextBox ID="txtemailid" class="tb" runat="server"></asp:TextBox></td>
        </tr>
             <tr>
            <td class="auto-style9">Resume</td>
            <td> <asp:FileUpload ID="FileUpload1" runat="server" /> </td>
                  <td> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
        </tr>
            
        </table>




        <div>
            <asp:Button ID="Button2" runat="server" CssClass="btn" Text="submit" OnClick="Button2_Click" />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>



       </div>
</asp:Content>
