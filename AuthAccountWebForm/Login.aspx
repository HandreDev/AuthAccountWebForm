<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AuthAccountWebForm.App_Pages.Login" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <label for="uname"><b>Username</b></label>
        <asp:TextBox ID="txtLoginEmail" runat="server"></asp:TextBox><br />
        <label for="psw"><b>Password</b></label>
        <asp:TextBox ID="txtLoginPassword" type="password" runat="server"></asp:TextBox><br />
        <asp:Button ID="btnLogin" type="submit" class="auto-style2 loginButton" runat="server" Text="Login" OnClick="btnLogin_Click" />
    </div>
</asp:Content>