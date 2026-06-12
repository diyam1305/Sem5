<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p2.aspx.cs" Inherits="lab_6.p2" %>

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
                        <asp:Label runat="server" Text="Enter n1:"></asp:Label>
                        <asp:TextBox ID="txtNo1" runat="server" ></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="reqNo1" runat="server" ControlToValidate="txtNo1"
                            ErrorMessage="Please enter Number 1" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="regexNo1" runat="server" ControlToValidate="txtNo1"
                            ErrorMessage="Enter valid numeric value" ValidationExpression="^\d+(\.\d+)?$"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" Text="Enter n2:"></asp:Label>
                        <asp:TextBox ID="txtNo2" runat="server" ></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="reqNo2" runat="server" ControlToValidate="txtNo2"
                            ErrorMessage="Please enter Number 2" ForeColor="Red"></asp:RequiredFieldValidator><br />
                        <asp:RegularExpressionValidator ID="regexNo2" runat="server" ControlToValidate="txtNo2"
                            ErrorMessage="Enter valid numeric value" ValidationExpression="^\d+(\.\d+)?$"
                            ForeColor="Red"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" Text="Answer is:"></asp:Label>
                        <asp:TextBox ID="answerbox" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnAdd" runat="server" Text="+" OnClick="btn_click" ></asp:Button>
                        <asp:Button ID="btnSub" runat="server" Text="-" OnClick="btn_click" ></asp:Button>
                        <asp:Button ID="btnMul" runat="server" Text="x" OnClick="btn_click" ></asp:Button>
                        <asp:Button ID="btnDiv" runat="server" Text="/" OnClick="btn_click" ></asp:Button>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
