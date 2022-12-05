<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminjob.aspx.cs" Inherits="projectasp.adminjob" %>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="jobid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="jobid" HeaderText="jobid" InsertVisible="False" ReadOnly="True" SortExpression="jobid" />
                <asp:BoundField DataField="cmpname" HeaderText="cmpname" SortExpression="cmpname" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
                <asp:BoundField DataField="minqualification" HeaderText="minqualification" SortExpression="minqualification" />
                <asp:BoundField DataField="requiredskill" HeaderText="requiredskill" SortExpression="requiredskill" />
                <asp:BoundField DataField="extraskill" HeaderText="extraskill" SortExpression="extraskill" />
                <asp:BoundField DataField="maxage" HeaderText="maxage" SortExpression="maxage" />
                <asp:BoundField DataField="joblocation" HeaderText="joblocation" SortExpression="joblocation" />
                <asp:BoundField DataField="salary" HeaderText="salary" SortExpression="salary" />
                <asp:BoundField DataField="workinghour" HeaderText="workinghour" SortExpression="workinghour" />
                <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                <asp:BoundField DataField="lastapplydate" HeaderText="lastapplydate" SortExpression="lastapplydate" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectaspConnectionString %>" DeleteCommand="DELETE FROM [addjobtb] WHERE [jobid] = @jobid" InsertCommand="INSERT INTO [addjobtb] ([cmpname], [category], [role], [minqualification], [requiredskill], [extraskill], [maxage], [joblocation], [salary], [workinghour], [description], [lastapplydate]) VALUES (@cmpname, @category, @role, @minqualification, @requiredskill, @extraskill, @maxage, @joblocation, @salary, @workinghour, @description, @lastapplydate)" SelectCommand="SELECT * FROM [addjobtb]" UpdateCommand="UPDATE [addjobtb] SET [cmpname] = @cmpname, [category] = @category, [role] = @role, [minqualification] = @minqualification, [requiredskill] = @requiredskill, [extraskill] = @extraskill, [maxage] = @maxage, [joblocation] = @joblocation, [salary] = @salary, [workinghour] = @workinghour, [description] = @description, [lastapplydate] = @lastapplydate WHERE [jobid] = @jobid">
            <DeleteParameters>
                <asp:Parameter Name="jobid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cmpname" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="minqualification" Type="String" />
                <asp:Parameter Name="requiredskill" Type="String" />
                <asp:Parameter Name="extraskill" Type="String" />
                <asp:Parameter Name="maxage" Type="Int32" />
                <asp:Parameter Name="joblocation" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
                <asp:Parameter Name="workinghour" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="lastapplydate" Type="DateTime" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cmpname" Type="String" />
                <asp:Parameter Name="category" Type="String" />
                <asp:Parameter Name="role" Type="String" />
                <asp:Parameter Name="minqualification" Type="String" />
                <asp:Parameter Name="requiredskill" Type="String" />
                <asp:Parameter Name="extraskill" Type="String" />
                <asp:Parameter Name="maxage" Type="Int32" />
                <asp:Parameter Name="joblocation" Type="String" />
                <asp:Parameter Name="salary" Type="Int32" />
                <asp:Parameter Name="workinghour" Type="String" />
                <asp:Parameter Name="description" Type="String" />
                <asp:Parameter Name="lastapplydate" Type="DateTime" />
                <asp:Parameter Name="jobid" Type="Int32" />
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
        <asp:Button ID="Button1" class="button" runat="server" Text="Back" OnClick="Button1_Click" />
    </center>

</asp:Content>
