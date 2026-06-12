<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dhome.aspx.cs" Inherits="lab_13.dhome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="margin:50px;">
            <h2>Welcome, <asp:Label ID="lblUser" runat="server" />!</h2>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </div>
    </form>
</body>
</html>
