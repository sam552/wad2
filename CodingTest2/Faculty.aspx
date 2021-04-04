<%@ Page Title="" Language="C#" MasterPageFile="~/MyMaster.Master" AutoEventWireup="true" CodeBehind="Faculty.aspx.cs" Inherits="CodingTest2.Faculty" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolderHead" runat="server">
    <script src="JavaScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="Faculty ID:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" oninput ="myFunction(this)" onfocus ="txtOnFocus(this)" onblur="txtOnFocus(this)"></asp:TextBox>
    <asp:Label ID="Label4" runat="server" ForeColor="Red" ClientIDMode="Static" onfocus ="txtOnFocus(this)" onblur="txtOnFocus(this)"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" />
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Number of courses taught:"></asp:Label>
    <asp:Label ID="Label3" runat="server"></asp:Label>
    <br />
    <br />
</asp:Content>
