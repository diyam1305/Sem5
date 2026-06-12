<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p4.aspx.cs" Inherits="lab_4.p4" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2><b>Country Entry Form</b></h2>

            <asp:Label AssociatedID="txtCountryName" Text="Country Name:" runat="server" /> <br />
            <asp:TextBox ID="txtCountryName" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Label AssociatedID="txtCountryCode" Text="Country Code:" runat="server" /> <br />
            <asp:TextBox ID="txtCountryCode" runat="server"></asp:TextBox>
            <br /><br />

            <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click"/>
            <br /><br />

            <asp:CheckBoxList ID="chkCountries" runat="server"></asp:CheckBoxList>
            <br />

            <asp:Button ID="btnDisplay" runat="server" Text="Display" OnClick="btnDisplay_Click" />
            <br /><br />

            <asp:Label ID="lblResult" runat="server" Font-Bold="true" ForeColor="DarkGreen"></asp:Label>

        </div>
    </form>
</body>
</html>
