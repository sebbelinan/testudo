<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="index3.aspx.cs" Inherits="WebApplication.index3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="Scripts/jquery-3.0.0.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="main" runat="server">
    <script>
        $(document).ready(function ()
        {
            $("#mybutton").click(function ()
            {
                $.get("/Service/WebForm1.aspx?action=addContact")
                    .done(function (data)
                    {
                        var myJson = JSON.parse(data);
                        for (var i = 0; i < myJson.length; i++)
                        {
                            $("#tablebody").append("<tr><td>" + myJson[i].Id + "</td><td>" + myJson[i].name + "</td><td>" + myJson[i].lastName + "</td></tr>");
                        }
                    });
            });
        });
    </script>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Lastname</th>
            </tr>
        </thead>
        <tbody id="tablebody"></tbody>
    </table>
    <input type="button" id="mybutton" value="Click me" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
