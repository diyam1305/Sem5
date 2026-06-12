<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="lab_8.Profile" %>
<asp:Content ContentPlaceHolderID="headeradmin" runat="server">
    <style>
        .profile
        {
            position:relative;
            left:250px;
            color: deeppink;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="profile">
        <h2>Student Profile</h2>
    </div>
    
</asp:Content>--%>



<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Admin.master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="lab_8.Profile" %>

<asp:Content ContentPlaceHolderID="headeradmin" runat="server">
    <style>
        .profile {
            position:relative;
            left:250px;
            color: deeppink;
        }
    </style>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="profile">
        <h2>Student Profile</h2>
        <p>Name: John Doe</p>
        <p>Roll No: 101</p>
        <p>Class: 10</p>
    </div>
</asp:Content>