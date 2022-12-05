<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="searchjob.aspx.cs" Inherits="projectasp.searchjob" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center>
        <table>



     <tr>
          <td>
                        Job Category:



         </td>
          <td>
               <asp:DropDownList ID="DropDownList1"  runat="server">
             <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Arts</asp:ListItem>
                        <asp:ListItem>Computer Science</asp:ListItem>
                        <asp:ListItem>Engineering</asp:ListItem>
        </asp:DropDownList>
          </td>
      </tr>
       
<tr>
    <td>
        Min.Qualification :
    </td>
    <td>
         <asp:DropDownList ID="drop1"  runat="server">
                         <asp:ListItem Text="Select Qualification" Value="0"></asp:ListItem>
             <asp:ListItem>BCA</asp:ListItem>
             <asp:ListItem>BSc</asp:ListItem>
             <asp:ListItem>BE</asp:ListItem>



            </asp:DropDownList>
    </td>
</tr>
           
      <tr>
    <td>
        Required Skill :
    </td>
    <td>
         <asp:DropDownList ID="drop2" runat="server">
                         <asp:ListItem Text="Select skill" Value="0"></asp:ListItem>
             <asp:ListItem>C</asp:ListItem>
                          <asp:ListItem>.NET</asp:ListItem>



                         <asp:ListItem>JAVA</asp:ListItem>




             </asp:DropDownList>
    </td>
</tr>    
            <tr>
                <td>
                                <asp:Button ID="Button1" runat="server" Text="Search Job" OnClick="Button1_Click" />



               </td>
                <td>
                                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>



               </td>
            </tr>
            </table>
  
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" >
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:BoundField DataField="cmpname" HeaderText="companyname" />
                <asp:BoundField DataField="category" HeaderText="category" />
                <asp:BoundField DataField="role" HeaderText="role" />
                <asp:BoundField DataField="minqualification" HeaderText="qualification" />
                <asp:BoundField DataField="requiredskill" HeaderText="requiredskill" />
                <asp:BoundField DataField="extraskill" HeaderText="extraskill" />
                <asp:BoundField DataField="maxage" HeaderText="maxage" />
                <asp:BoundField DataField="joblocation" HeaderText="joblocation" />
                <asp:BoundField DataField="salary" HeaderText="salary" />
                <asp:BoundField DataField="workinghour" HeaderText="workinghour" />
                <asp:BoundField DataField="description" HeaderText="description" />
                <asp:BoundField DataField="lastapplydate" HeaderText="lastapplydate" />
                <%--<asp:HyperLinkField HeaderText="Apply here" NavigateUrl="stujobapplypage.aspx" Text="To apply" />--%>
                    <asp:HyperLinkField HeaderText="Apply Job" DataNavigateUrlFields="cmpname,category,requiredskill"
                        DataNavigateUrlFormatString="stuapplyjob.aspx?cmpname={0}&category={1}&requiredskill={2}" Text="To Apply" />
                

            </Columns>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="red" Font-Bold="True" ForeColor="white" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />



       </asp:GridView>

    </center>
</asp:Content>
