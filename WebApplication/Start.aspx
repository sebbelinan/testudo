<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="WebApplication.Start" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <asp:ListBox ID="ListBox1" runat="server" Height="450px" Width="250px"></asp:ListBox>
        <table>
            <tr>
                <td>Firstname</td>
                <td>Lastname</td>
                <td>SSN</td>
            </tr>

            <tr>
                <td><asp:TextBox ID="Name" runat="server"></asp:TextBox> </td>
                <td><asp:TextBox ID="Lastname" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="SSN" runat="server"></asp:TextBox> </td>
            </tr>
        </table>
    <div></div>
    <asp:Button ID="ADD" runat="server" Text="O K" style =" margin-right: 20px"/> <asp:Button ID="Remove" runat="server" Text="Remove" style =" margin-right: 20px"/> <asp:Button ID="Update" runat="server" Text="Update" style =" margin-right: 20px"/>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    
</asp:Content>
