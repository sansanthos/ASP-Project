<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminappliedstu.aspx.cs" Inherits="projectasp.adminappliedstu" %>
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
        
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="cmpname" HeaderText="cmpname" SortExpression="cmpname" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="requiredskill" HeaderText="requiredskill" SortExpression="requiredskill" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
                <asp:BoundField DataField="mailid" HeaderText="mailid" SortExpression="mailid" />
                <asp:BoundField DataField="filename" HeaderText="Resume" SortExpression="filename" />
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
      
          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectaspConnectionString5 %>" DeleteCommand="DELETE FROM [jobapplicationtb] WHERE [id] = @id" InsertCommand="INSERT INTO [jobapplicationtb] ([cmpname], [category], [requiredskill], [firstname], [lastname], [dob], [contactno], [mailid], [filename]) VALUES (@cmpname, @category, @requiredskill, @firstname, @lastname, @dob, @contactno, @mailid, @filename)" SelectCommand="SELECT [id], [cmpname], [category], [requiredskill], [firstname], [lastname], [dob], [contactno], [mailid], [filename] FROM [jobapplicationtb]" UpdateCommand="UPDATE [jobapplicationtb] SET [cmpname] = @cmpname, [category] = @category, [requiredskill] = @requiredskill, [firstname] = @firstname, [lastname] = @lastname, [dob] = @dob, [contactno] = @contactno, [mailid] = @mailid, [filename] = @filename WHERE [id] = @id">
              <DeleteParameters>
                  <asp:Parameter Name="id" Type="Int32" />
              </DeleteParameters>
              <InsertParameters>
                  <asp:Parameter Name="cmpname" Type="String" />
                  <asp:Parameter Name="category" Type="String" />
                  <asp:Parameter Name="requiredskill" Type="String" />
                  <asp:Parameter Name="firstname" Type="String" />
                  <asp:Parameter Name="lastname" Type="String" />
                  <asp:Parameter Name="dob" Type="String" />
                  <asp:Parameter Name="contactno" Type="String" />
                  <asp:Parameter Name="mailid" Type="String" />
                  <asp:Parameter Name="filename" Type="String" />
              </InsertParameters>
              <UpdateParameters>
                  <asp:Parameter Name="cmpname" Type="String" />
                  <asp:Parameter Name="category" Type="String" />
                  <asp:Parameter Name="requiredskill" Type="String" />
                  <asp:Parameter Name="firstname" Type="String" />
                  <asp:Parameter Name="lastname" Type="String" />
                  <asp:Parameter Name="dob" Type="String" />
                  <asp:Parameter Name="contactno" Type="String" />
                  <asp:Parameter Name="mailid" Type="String" />
                  <asp:Parameter Name="filename" Type="String" />
                  <asp:Parameter Name="id" Type="Int32" />
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
</asp:Content>
