<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dlogin.aspx.cs" Inherits="lab_13.dlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width:300px; margin:auto; margin-top:100px; border:1px solid #ccc; padding:20px;">
            <h2>Login</h2>
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red"></asp:Label><br /><br />
            
            <asp:Label ID="lblUsername" runat="server" Text="Username: " />
            <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox><br /><br />

            <asp:Label ID="lblPassword" runat="server" Text="Password: " ></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />

            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        </div>
    </form>
</body>
</html>
