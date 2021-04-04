<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="ComputingStudents.aspx.cs" Inherits="CodingTest2.ComputingStudents" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SQLDataSourceComputingStudents" runat="server" ConnectionString="<%$ ConnectionStrings:c432018fa01g1ConnectionString %>" SelectCommand="SELECT * from STUDENT WHERE major='CSC' OR
major='CIS';"></asp:SqlDataSource>
    <br />
    <asp:GridView ID="GridView1" runat="server" DataSourceID="SQLDataSourceComputingStudents">
    </asp:GridView>
</asp:Content>
