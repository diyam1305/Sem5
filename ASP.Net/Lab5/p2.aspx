<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p2.aspx.cs" Inherits="lab_5.p2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label Text="Select State:" runat="server"></asp:Label>

            <asp:RadioButtonList ID="rbstate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="rad_OnSelectedIndexChanged">
                <asp:ListItem Value="Gujarat"></asp:ListItem>
                <asp:ListItem Value="Rajasthan"></asp:ListItem>
                <asp:ListItem Value="Maharashtra"></asp:ListItem>
            </asp:RadioButtonList>

            <asp:Label Text="Select city:" runat="server"></asp:Label>
            <asp:DropDownList runat="server" ID="ddlOptions"></asp:DropDownList>

            <asp:Button ID="btnsub" runat="server" OnClick="Unnamed_Click" Text="Submit"></asp:Button>

            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
