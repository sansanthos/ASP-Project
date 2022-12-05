<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminedu.aspx.cs" Inherits="projectasp.adminedu" %>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="eduid" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="eduid" HeaderText="eduid" InsertVisible="False" ReadOnly="True" SortExpression="eduid" />
                <asp:BoundField DataField="educlgname" HeaderText="educlgname" SortExpression="educlgname" />
                <asp:BoundField DataField="eduenrollno" HeaderText="eduenrollno" SortExpression="eduenrollno" />
                <asp:BoundField DataField="edusemester" HeaderText="edusemester" SortExpression="edusemester" />
                <asp:BoundField DataField="edueductaion" HeaderText="edueductaion" SortExpression="edueductaion" />
                <asp:BoundField DataField="edubranch" HeaderText="edubranch" SortExpression="edubranch" />
                <asp:BoundField DataField="edupassyear" HeaderText="edupassyear" SortExpression="edupassyear" />
                <asp:BoundField DataField="educpi" HeaderText="educpi" SortExpression="educpi" />
                <asp:BoundField DataField="educgpa" HeaderText="educgpa" SortExpression="educgpa" />
                <asp:BoundField DataField="eduskill" HeaderText="eduskill" SortExpression="eduskill" />
                <asp:BoundField DataField="eduextraskill" HeaderText="eduextraskill" SortExpression="eduextraskill" />
                <asp:BoundField DataField="eduresume" HeaderText="eduresume" SortExpression="eduresume" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectaspConnectionString %>" DeleteCommand="DELETE FROM [educationregtb] WHERE [eduid] = @eduid" InsertCommand="INSERT INTO [educationregtb] ([educlgname], [eduenrollno], [edusemester], [edueductaion], [edubranch], [edupassyear], [educpi], [educgpa], [eduskill], [eduextraskill], [eduresume]) VALUES (@educlgname, @eduenrollno, @edusemester, @edueductaion, @edubranch, @edupassyear, @educpi, @educgpa, @eduskill, @eduextraskill, @eduresume)" SelectCommand="SELECT * FROM [educationregtb]" UpdateCommand="UPDATE [educationregtb] SET [educlgname] = @educlgname, [eduenrollno] = @eduenrollno, [edusemester] = @edusemester, [edueductaion] = @edueductaion, [edubranch] = @edubranch, [edupassyear] = @edupassyear, [educpi] = @educpi, [educgpa] = @educgpa, [eduskill] = @eduskill, [eduextraskill] = @eduextraskill, [eduresume] = @eduresume WHERE [eduid] = @eduid">
            <DeleteParameters>
                <asp:Parameter Name="eduid" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="educlgname" Type="String" />
                <asp:Parameter Name="eduenrollno" Type="String" />
                <asp:Parameter Name="edusemester" Type="String" />
                <asp:Parameter Name="edueductaion" Type="String" />
                <asp:Parameter Name="edubranch" Type="String" />
                <asp:Parameter Name="edupassyear" Type="String" />
                <asp:Parameter Name="educpi" Type="Double" />
                <asp:Parameter Name="educgpa" Type="Double" />
                <asp:Parameter Name="eduskill" Type="String" />
                <asp:Parameter Name="eduextraskill" Type="String" />
                <asp:Parameter Name="eduresume" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="educlgname" Type="String" />
                <asp:Parameter Name="eduenrollno" Type="String" />
                <asp:Parameter Name="edusemester" Type="String" />
                <asp:Parameter Name="edueductaion" Type="String" />
                <asp:Parameter Name="edubranch" Type="String" />
                <asp:Parameter Name="edupassyear" Type="String" />
                <asp:Parameter Name="educpi" Type="Double" />
                <asp:Parameter Name="educgpa" Type="Double" />
                <asp:Parameter Name="eduskill" Type="String" />
                <asp:Parameter Name="eduextraskill" Type="String" />
                <asp:Parameter Name="eduresume" Type="String" />
                <asp:Parameter Name="eduid" Type="Int32" />
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
