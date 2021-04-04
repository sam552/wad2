<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="CourseHistory.aspx.cs" Inherits="CodingTest2.CourseHistory" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DropDownList ID="DropDownStuID" runat="server" AutoPostBack="True" DataSourceID="SqlDataSourceStuIDs" DataTextField="stuid" DataValueField="stuid" OnSelectedIndexChanged="DropDownStuID_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <asp:SqlDataSource ID="SqlDataSourceStuIDs" runat="server" ConnectionString="<%$ ConnectionStrings:c432018fa01g1ConnectionString %>" SelectCommand="SELECT stuid from STUDENT WHERE major='CSC' OR
major='CIS';"></asp:SqlDataSource>
    <br />
    <asp:ListBox ID="ListBoxCourses" runat="server"></asp:ListBox>
    <br />
    <br />
    <asp:Label ID="lblErrorMessage" runat="server" ForeColor="Red"></asp:Label>
    <br />
</asp:Content>
