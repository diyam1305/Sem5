<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Grid_View.aspx.cs" Inherits="Stu_Grid_CRUD.Grid_View" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Student CRUD with GridView</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="lblEnrollmentNo" runat="server" Text="Enter your EnrollmentNo:" />
                        <asp:TextBox ID="txtEnrollmentNo" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblStudentName" runat="server" Text="Enter your Student Name:" />
                        <asp:TextBox ID="txtStudentName" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblSemester" runat="server" Text="Enter your Semester:" />
                        <asp:TextBox ID="txtSemester" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblSPI" runat="server" Text="Enter your SPI:" />
                        <asp:TextBox ID="txtSPI" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Label ID="lblCPI" runat="server" Text="Enter your CPI:" />
                        <asp:TextBox ID="txtCPI" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:GridView ID="grdData" runat="server"
                            AutoGenerateColumns="false"
                            AllowPaging="true" PageSize="3"
                            DataKeyNames="ID"
                            OnRowEditing="grdData_RowEditing"
                            OnRowCancelingEdit="grdData_RowCancelingEdit"
                            OnRowUpdating="grdData_RowUpdating"
                            OnRowDeleting="grdData_RowDeleting"
                            OnPageIndexChanging="grdData_PageIndexChanging"
                            EmptyDataText="No records found. Please add data.">

                            <Columns>
                                <asp:TemplateField HeaderText="ID">
                                    <ItemTemplate>
                                        <asp:Label ID="lblID" runat="server" Text='<%#Eval("ID") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="EnrollmentNo">
                                    <ItemTemplate>
                                        <asp:Label ID="l_lblEnrollmentNo" runat="server" Text='<%#Eval("EnrollmentNo") %>' />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="t_lblEnrollmentNo" runat="server" Text='<%#Eval("EnrollmentNo") %>' />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="StudentName">
                                    <ItemTemplate>
                                        <asp:Label ID="l_lblStudentName" runat="server" Text='<%#Eval("StudentName") %>' />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="t_lblStudentName" runat="server" Text='<%#Eval("StudentName") %>' />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="Semester">
                                    <ItemTemplate>
                                        <asp:Label ID="l_lblSemester" runat="server" Text='<%#Eval("Semester") %>' />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="t_lblSemester" runat="server" Text='<%#Eval("Semester") %>' />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="SPI">
                                    <ItemTemplate>
                                        <asp:Label ID="l_lblSPI" runat="server" Text='<%#Eval("SPI") %>' />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="t_lblSPI" runat="server" Text='<%#Eval("SPI") %>' />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:TemplateField HeaderText="CPI">
                                    <ItemTemplate>
                                        <asp:Label ID="l_lblCPI" runat="server" Text='<%#Eval("CPI") %>' />
                                    </ItemTemplate>
                                    <EditItemTemplate>
                                        <asp:TextBox ID="t_lblCPI" runat="server" Text='<%#Eval("CPI") %>' />
                                    </EditItemTemplate>
                                </asp:TemplateField>

                                <asp:CommandField ShowEditButton="true" ShowDeleteButton="true" />
                            </Columns>
                        </asp:GridView>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
