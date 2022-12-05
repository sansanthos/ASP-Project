<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminstu.aspx.cs" Inherits="projectasp.adminpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style>
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

    <center>
         <table>
            <tr>
                <td>
                    <br />
                     <br />
                     <br />
                     <br />

                </td>
            </tr>
        </table>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="stuenrollno" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="stuname" HeaderText="stuname" SortExpression="stuname" />
                <asp:BoundField DataField="stusurname" HeaderText="stusurname" SortExpression="stusurname" />
                <asp:BoundField DataField="stuaddress" HeaderText="stuaddress" SortExpression="stuaddress" />
                <asp:BoundField DataField="stucity" HeaderText="stucity" SortExpression="stucity" />
                <asp:BoundField DataField="stustate" HeaderText="stustate" SortExpression="stustate" />
                <asp:BoundField DataField="stupincode" HeaderText="stupincode" SortExpression="stupincode" />
                <asp:BoundField DataField="stubirthdate" HeaderText="stubirthdate" SortExpression="stubirthdate" />
                <asp:BoundField DataField="stugender" HeaderText="stugender" SortExpression="stugender" />
                <asp:BoundField DataField="stumobileeno" HeaderText="stumobileeno" SortExpression="stumobileeno" />
                <asp:BoundField DataField="stuemailid" HeaderText="stuemailid" SortExpression="stuemailid" />
                <asp:BoundField DataField="stuenrollno" HeaderText="stuenrollno" ReadOnly="True" SortExpression="stuenrollno" />
                <asp:BoundField DataField="stuusername" HeaderText="stuusername" SortExpression="stuusername" />
                <asp:BoundField DataField="stupassword" HeaderText="stupassword" SortExpression="stupassword" />
                <asp:BoundField DataField="stuconfirmpassword" HeaderText="stuconfirmpassword" SortExpression="stuconfirmpassword" />
            </Columns>

            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />

        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectaspConnectionString %>" DeleteCommand="DELETE FROM [studentregitb] WHERE [stuenrollno] = @stuenrollno" InsertCommand="INSERT INTO [studentregitb] ([stuname], [stusurname], [stuaddress], [stucity], [stustate], [stupincode], [stubirthdate], [stugender], [stumobileeno], [stuemailid], [stuenrollno], [stuusername], [stupassword], [stuconfirmpassword]) VALUES (@stuname, @stusurname, @stuaddress, @stucity, @stustate, @stupincode, @stubirthdate, @stugender, @stumobileeno, @stuemailid, @stuenrollno, @stuusername, @stupassword, @stuconfirmpassword)" SelectCommand="SELECT * FROM [studentregitb]" UpdateCommand="UPDATE [studentregitb] SET [stuname] = @stuname, [stusurname] = @stusurname, [stuaddress] = @stuaddress, [stucity] = @stucity, [stustate] = @stustate, [stupincode] = @stupincode, [stubirthdate] = @stubirthdate, [stugender] = @stugender, [stumobileeno] = @stumobileeno, [stuemailid] = @stuemailid, [stuusername] = @stuusername, [stupassword] = @stupassword, [stuconfirmpassword] = @stuconfirmpassword WHERE [stuenrollno] = @stuenrollno">
            <DeleteParameters>
                <asp:Parameter Name="stuenrollno" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="stuname" Type="String" />
                <asp:Parameter Name="stusurname" Type="String" />
                <asp:Parameter Name="stuaddress" Type="String" />
                <asp:Parameter Name="stucity" Type="String" />
                <asp:Parameter Name="stustate" Type="String" />
                <asp:Parameter Name="stupincode" Type="String" />
                <asp:Parameter DbType="Date" Name="stubirthdate" />
                <asp:Parameter Name="stugender" Type="String" />
                <asp:Parameter Name="stumobileeno" Type="String" />
                <asp:Parameter Name="stuemailid" Type="String" />
                <asp:Parameter Name="stuenrollno" Type="String" />
                <asp:Parameter Name="stuusername" Type="String" />
                <asp:Parameter Name="stupassword" Type="String" />
                <asp:Parameter Name="stuconfirmpassword" Type="String" />
            </InsertParameters>
            <UpdateParameters>
               
                <asp:Parameter Name="stuname" Type="String" />
                <asp:Parameter Name="stusurname" Type="String" />
                <asp:Parameter Name="stuaddress" Type="String" />
                <asp:Parameter Name="stucity" Type="String" />
                <asp:Parameter Name="stustate" Type="String" />
                <asp:Parameter Name="stupincode" Type="String" />
                <asp:Parameter DbType="Date" Name="stubirthdate" />
                <asp:Parameter Name="stugender" Type="String" />
                <asp:Parameter Name="stumobileeno" Type="String" />
                <asp:Parameter Name="stuemailid" Type="String" />
                <asp:Parameter Name="stuusername" Type="String" />
                <asp:Parameter Name="stupassword" Type="String" />
                <asp:Parameter Name="stuconfirmpassword" Type="String" />
                <asp:Parameter Name="stuenrollno" Type="String" />
                
            </UpdateParameters>
        </asp:SqlDataSource>
         <table>
            <tr>
                <td>
                    <br />
                     <br />
                     <br />
                     <br />
                    <br />
                     <br />
                     <br />
                     <br />
                    <br />
                     <br />

                </td>
            </tr>
        </table>
        <asp:Button ID="Button1" CssClass="button" runat="server" Text="Back" OnClick="Button1_Click" />
    </center>
    <center>
    </center>
</asp:Content>
