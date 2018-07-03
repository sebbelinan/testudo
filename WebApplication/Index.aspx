<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Literal ID="Literal1" runat="server"></asp:Literal>
        <asp:ListBox ID="FirstListBox" runat="server" Height="500px" Width="300px" AutoPostBack="True" OnSelectedIndexChanged="FirstListBox_SelectedIndexChanged"></asp:ListBox>
        <table>
            <tr>
                <td>Firstname</td>
                <td>Lastname</td>
                <td>SSN</td>
            </tr>
            <tr>
                <td><asp:TextBox ID="NameTextBox" runat="server" OnTextChanged="NameTextBox_TextChanged"></asp:TextBox> </td>
                <td><asp:TextBox ID="LastNameTextBox" runat="server" OnTextChanged="LastNameTextBox_TextChanged"></asp:TextBox> </td>
                <td><asp:TextBox ID="SSNTextBox" runat="server" OnTextChanged="SSNTextBox_TextChanged"></asp:TextBox> </td>
            </tr>

        </table>
        <asp:Button ID="ButtonAddPerson" runat="server" Text="Add" OnClick="ButtonAddPerson_Click" />
        <asp:Button ID="Removebutton" runat="server" OnClick="Button1_Click" Text="Remove" />
    </form>
</body>
</html>
