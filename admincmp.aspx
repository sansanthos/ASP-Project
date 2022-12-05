<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="admincmp.aspx.cs" Inherits="projectasp.admincmp" %>
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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="cmpname" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="cmpid" HeaderText="cmpid" InsertVisible="False" ReadOnly="True" SortExpression="cmpid" />
                <asp:BoundField DataField="cmpname" HeaderText="cmpname" ReadOnly="True" SortExpression="cmpname" />
                <asp:BoundField DataField="cmpaddress" HeaderText="cmpaddress" SortExpression="cmpaddress" />
                <asp:BoundField DataField="cmpcity" HeaderText="cmpcity" SortExpression="cmpcity" />
                <asp:BoundField DataField="cmpstate" HeaderText="cmpstate" SortExpression="cmpstate" />
                <asp:BoundField DataField="cmppincode" HeaderText="cmppincode" SortExpression="cmppincode" />
                <asp:BoundField DataField="cmpcontactpersonname" HeaderText="cmpcontactpersonname" SortExpression="cmpcontactpersonname" />
                <asp:BoundField DataField="cmpmobileno" HeaderText="cmpmobileno" SortExpression="cmpmobileno" />
                <asp:BoundField DataField="cmpcontactno" HeaderText="cmpcontactno" SortExpression="cmpcontactno" />
                <asp:BoundField DataField="cmpemail" HeaderText="cmpemail" SortExpression="cmpemail" />
                <asp:BoundField DataField="cmpwebsite" HeaderText="cmpwebsite" SortExpression="cmpwebsite" />
                <asp:BoundField DataField="cmpusername" HeaderText="cmpusername" SortExpression="cmpusername" />
                <asp:BoundField DataField="cmppassword" HeaderText="cmppassword" SortExpression="cmppassword" />
                <asp:BoundField DataField="cmpconfirmpassword" HeaderText="cmpconfirmpassword" SortExpression="cmpconfirmpassword" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectaspConnectionString %>" DeleteCommand="DELETE FROM [companyregtb] WHERE [cmpname] = @cmpname" InsertCommand="INSERT INTO [companyregtb] ([cmpname], [cmpaddress], [cmpcity], [cmpstate], [cmppincode], [cmpcontactpersonname], [cmpmobileno], [cmpcontactno], [cmpemail], [cmpwebsite], [cmpusername], [cmppassword], [cmpconfirmpassword]) VALUES (@cmpname, @cmpaddress, @cmpcity, @cmpstate, @cmppincode, @cmpcontactpersonname, @cmpmobileno, @cmpcontactno, @cmpemail, @cmpwebsite, @cmpusername, @cmppassword, @cmpconfirmpassword)" SelectCommand="SELECT * FROM [companyregtb]" UpdateCommand="UPDATE [companyregtb] SET [cmpid] = @cmpid, [cmpaddress] = @cmpaddress, [cmpcity] = @cmpcity, [cmpstate] = @cmpstate, [cmppincode] = @cmppincode, [cmpcontactpersonname] = @cmpcontactpersonname, [cmpmobileno] = @cmpmobileno, [cmpcontactno] = @cmpcontactno, [cmpemail] = @cmpemail, [cmpwebsite] = @cmpwebsite, [cmpusername] = @cmpusername, [cmppassword] = @cmppassword, [cmpconfirmpassword] = @cmpconfirmpassword WHERE [cmpname] = @cmpname">
            <DeleteParameters>
                <asp:Parameter Name="cmpname" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="cmpname" Type="String" />
                <asp:Parameter Name="cmpaddress" Type="String" />
                <asp:Parameter Name="cmpcity" Type="String" />
                <asp:Parameter Name="cmpstate" Type="String" />
                <asp:Parameter Name="cmppincode" Type="String" />
                <asp:Parameter Name="cmpcontactpersonname" Type="String" />
                <asp:Parameter Name="cmpmobileno" Type="String" />
                <asp:Parameter Name="cmpcontactno" Type="String" />
                <asp:Parameter Name="cmpemail" Type="String" />
                <asp:Parameter Name="cmpwebsite" Type="String" />
                <asp:Parameter Name="cmpusername" Type="String" />
                <asp:Parameter Name="cmppassword" Type="String" />
                <asp:Parameter Name="cmpconfirmpassword" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="cmpid" Type="Int32" />
                <asp:Parameter Name="cmpaddress" Type="String" />
                <asp:Parameter Name="cmpcity" Type="String" />
                <asp:Parameter Name="cmpstate" Type="String" />
                <asp:Parameter Name="cmppincode" Type="String" />
                <asp:Parameter Name="cmpcontactpersonname" Type="String" />
                <asp:Parameter Name="cmpmobileno" Type="String" />
                <asp:Parameter Name="cmpcontactno" Type="String" />
                <asp:Parameter Name="cmpemail" Type="String" />
                <asp:Parameter Name="cmpwebsite" Type="String" />
                <asp:Parameter Name="cmpusername" Type="String" />
                <asp:Parameter Name="cmppassword" Type="String" />
                <asp:Parameter Name="cmpconfirmpassword" Type="String" />
                <asp:Parameter Name="cmpname" Type="String" />
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
