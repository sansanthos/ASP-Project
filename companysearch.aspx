<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="companysearch.aspx.cs" Inherits="projectasp.companysearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <center>  
    <h2> <asp:Label ID="cmpname" runat="server" Text=""></asp:Label></h2>



       <asp:Button ID="btngetapplications" runat="server"  Text="Get Applications Details Here" OnClick="btngetapplications_Click" />



       <br />   
    <br />

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  DataSourceID="SqlDataSource1" DataKeyNames="id">
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="cmpname" HeaderText="cmpname" SortExpression="cmpname" />
                <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
                <asp:BoundField DataField="requiredskill" HeaderText="requiredskill" SortExpression="requiredskill" />
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="contactno" HeaderText="contactno" SortExpression="contactno" />
                <asp:BoundField DataField="mailid" HeaderText="mailid" SortExpression="mailid" />
                <asp:BoundField DataField="filename" HeaderText="filename" SortExpression="filename" />
      

                <asp:BoundField DataField="filetype" HeaderText="filetype" SortExpression="filetype" />
                <asp:TemplateField HeaderText=" download resume">  
                    <ItemTemplate>  
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="lnkDownload_Click"></asp:LinkButton>  
                    </ItemTemplate>  
                </asp:TemplateField>  
      

            </Columns>
             

        </asp:GridView>




        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projectaspConnectionString4 %>" SelectCommand="SELECT [id], [cmpname], [category], [requiredskill], [firstname], [lastname], [dob], [contactno], [mailid], [filename], [filetype] FROM [jobapplicationtb]"></asp:SqlDataSource>



       </center>
</asp:Content>
