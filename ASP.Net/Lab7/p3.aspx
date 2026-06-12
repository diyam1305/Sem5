<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p3.aspx.cs" Inherits="lab_7.p3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="App_Themes/lab7_3/StyleSheet3.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Select your sports:" ID="lblSports"></asp:Label><br />
                        <asp:CheckBoxList ID="chklst" runat="server" AutoPostBack="true">
                            <asp:ListItem>Cricket</asp:ListItem>
                            <asp:ListItem>Football</asp:ListItem>
                            <asp:ListItem>Tennis</asp:ListItem>
                            <asp:ListItem>Basketball</asp:ListItem>
                            <asp:ListItem>Badminton</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button runat="server" Text="Submit" OnClick="btn_click" ID="btnsub" ></asp:Button><br />
                        <asp:Label runat="server" ID="lblsub"></asp:Label><br />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
