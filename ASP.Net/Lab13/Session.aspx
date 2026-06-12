<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Session.aspx.cs" Inherits="lab_13.Session" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblName" runat="server" Text="Enter your name:"></asp:Label>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblAge" runat="server" Text="Enter your age:"></asp:Label>
                        <asp:TextBox ID="txtAge" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnStore" runat="server" OnClick="btnStore_Click" Text="Store Session"/>
                        <asp:Button ID="btnRetrieve" runat="server" OnClick="btnRetrieve_Click" Text="Retrieve Session"/>
                        <asp:Button ID="btnabandon" runat="server" OnClick="btnabandon_Click" Text="Abandon Session"/>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblMessage" runat="server"></asp:Label>
                    </td>
                </tr>

            </table>
        </div>
    </form>
</body>
</html>
