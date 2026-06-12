<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="p1.aspx.cs" Inherits="lab_4.p1" %>

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
                    <td>Enter Number-1:
                        <asp:TextBox ID="txtNo1" runat="server" placeholder="enter number-1"></asp:TextBox>
                    </td>
                 </tr>

                 <tr>
                     <td>Enter Number-2:
                        <asp:TextBox ID="txtNo2" runat="server" placeholder="enter number-2"></asp:TextBox>
                     </td>
                </tr>

                 <tr>
                     <td>Answer is:
                        <asp:TextBox ID="answerbox" runat="server" Readonly="true"></asp:TextBox>
                     </td>
                 </tr>

                 <tr>
                     <td>
                         <asp:Button ID="btnAdd" runat="server" Text="addition" OnClick="btn_click"></asp:Button>
                         <asp:Button ID="btnSub" runat="server" Text="subtraction" OnClick="btn_click"></asp:Button>
                         <asp:Button ID="btnMul" runat="server" Text="multiplication" OnClick="btn_click"></asp:Button>
                         <asp:Button ID="btnDiv" runat="server" Text="division" OnClick="btn_click"></asp:Button>
                     </td>
                 </tr>
             </table>
        </div>
    </form>
</body>
</html>
