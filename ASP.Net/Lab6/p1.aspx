<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p1.aspx.cs" Inherits="lab_6.p1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Registration Form</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label runat="server" Text="Enter your name:" ID="lblName"></asp:Label><br />
                        <asp:TextBox runat="server" ID="txtName"></asp:TextBox><br />
                        <asp:RequiredFieldValidator ID="requiredvatxtname" runat="server" ControlToValidate="txtName"
                            ErrorMessage="Please Enter your name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblAge" runat="server" Text="Enter your age:"></asp:Label><br />
                        <asp:TextBox runat="server" ID="txtAge"></asp:TextBox><br />
                        <asp:RangeValidator ID="rangeValidatorAge" Display="Dynamic" runat="server"
                            ControlToValidate="txtAge" ErrorMessage="Please Enter Age Between 18 to 40"
                            ForeColor="Red" MaximumValue="40" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" Text="Enter your email-id:" ID="lblEmail"></asp:Label><br />
                        <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox><br />
                        <asp:RegularExpressionValidator ID="rglrepvalemail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter valid email-id" ForeColor="Red" ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" Display="Dynamic"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" Text="Enter your password:" ID="lblpswd"></asp:Label><br />
                        <asp:TextBox runat="server" ID="txtpswd" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label runat="server" Text="Confirm password:" ID="lblcnfrmpswd"></asp:Label><br />
                        <asp:TextBox runat="server" ID="txtcnfrmpswd" TextMode="Password"></asp:TextBox><br />
                        <asp:CompareValidator ID="cmprValidatorEmail" Display="Dynamic" runat="server"
                            ControlToValidate="txtcnfrmpswd" ControlToCompare="txtpswd"
                            ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnClick" runat="server" Text="Submit" OnClick="btnClick_Click" ></asp:Button>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblResult" runat="server" ForeColor="Green" Font-Bold="true"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
