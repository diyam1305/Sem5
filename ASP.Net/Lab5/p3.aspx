<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p3.aspx.cs" Inherits="lab_5.p3" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Book Sales</title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 400px; margin: auto; padding-top: 20px;">
            <h2>Book Sales</h2>

            <asp:Label ID="lblTitle" runat="server" Text="Book Title:" /><br />
            <asp:TextBox ID="txtTitle" runat="server" /><br /><br />

            <asp:Label ID="lblPrice" runat="server" Text="Price per Book:" /><br />
            <asp:TextBox ID="txtPrice" runat="server" /><br /><br />

            <asp:Label ID="lblQuantity" runat="server" Text="Number of Books:" /><br />
            <asp:TextBox ID="txtQuantity" runat="server" /><br /><br />

            <asp:Label ID="lblDiscount" runat="server" Text="Select Discount (%):" /><br />
            <asp:DropDownList ID="ddlDiscount" runat="server">
                <asp:ListItem Text="10%" Value="10" />
                <asp:ListItem Text="12%" Value="12" />
                <asp:ListItem Text="15%" Value="15" />
            </asp:DropDownList><br /><br />

            <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" /><br /><br />

            <asp:Label ID="lblExtendedPrice" runat="server" Font-Bold="true" /><br />
            <asp:Label ID="lblDiscountAmount" runat="server" Font-Bold="true" /><br />
            <asp:Label ID="lblFinalPrice" runat="server" Font-Bold="true" /><br /><br />

            <asp:ListBox ID="lstSummary" runat="server" Width="350px" Height="120px" />
        </div>
    </form>
</body>
</html>
