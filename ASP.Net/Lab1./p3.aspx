<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p3.aspx.cs" Inherits="lab_4.p3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Dynamic Panel</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="padding: 20px;">
            <h3>Select number of fields to generate textbox:</h3>

            <asp:DropDownList ID="ddlCount" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCount_SelectedIndexChanged">
                <asp:ListItem Text="Select" Value="0" />
                <asp:ListItem Text="1" Value="1" />
                <asp:ListItem Text="2" Value="2" />
                <asp:ListItem Text="3" Value="3" />
                <asp:ListItem Text="4" Value="4" />
                <asp:ListItem Text="5" Value="5" />
            </asp:DropDownList>

            <br /><br />

            <asp:Panel ID="pnlDynamic" runat="server" BorderStyle="Solid" BorderWidth="1" Width="300px" Padding="10" />
        </div>
    </form>
</body>
</html>
