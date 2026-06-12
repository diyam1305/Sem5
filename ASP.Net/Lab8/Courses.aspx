<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="lab_8.Courses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headeradmin" runat="server">
    <style>
    .courses
    {
        position:relative;
        left:250px;
        color: deeppink;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="courses">
        <h2>Courses</h2>
    </div>
</asp:Content>--%>


<%@ Page Title="Courses" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Courses.aspx.cs" Inherits="lab_8.Courses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headeradmin" runat="server">
    <style>
        .courses {
            position:relative;
            left:250px;
            color: deeppink;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="courses">
        <h2>Courses</h2>
        <ul>
            <li>Mathematics</li>
            <li>Science</li>
            <li>English</li>
        </ul>
    </div>
</asp:Content>
