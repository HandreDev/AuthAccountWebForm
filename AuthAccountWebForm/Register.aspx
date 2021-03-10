<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AuthAccountWebForm.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <script type="text/javascript">
        $(function () {
            $("#txtDatepicker").datepicker({
                dateFormat: 'yy/mm/dd',
                changeMonth: true,
                changeYear: true,
                yearRange: '1920:2100'
            });
        });

        $(document).ready(function () {
            $("#aspnetForm").validate({
                rules: {
                    "<%=txtName.UniqueID %>": {
                        required: true
                    },
                    "<%=txtSurname.UniqueID %>": {
                        required: true
                    },
                    "<%=txtDatepicker.UniqueID %>": {
                        required: true
                    },
                    "<%=txtEmail.UniqueID %>": {
                        required: true,
                        email: true
                    },
                    "<%=txtPassword.UniqueID %>": {
                        required: true,
                        minlength: 5
                    },
                    "<%=txtConfirmPassword.UniqueID %>": {
                        equalTo: "#<%=txtPassword.ClientID %>"
                    }
                }, messages: {
                    "<%=txtName.UniqueID %>": "Please enter your first name",
                    "<%=txtSurname.UniqueID %>": "Please enter your last name",
                    "<%=txtDatepicker.UniqueID %>": "Please enter your date of birth",
                    "<%=txtEmail.UniqueID %>": "Please enter a valid email address",
                    "<%=txtPassword.UniqueID %>": {
                        required: "Please provide a password",
                        minlength: "Your password must be at least 5 characters long"
                    },
                    "<%=txtConfirmPassword.UniqueID %>": "Please enter the same password"
                },
                submitHandler: function (form) {
                    form.submit();
                }
            });
        });
    </script>
    <div class="jumbotron">
        <label>First Name</label>
        <asp:TextBox ID="txtName" placeholder="Name" ClientIDMode="static" runat="server"></asp:TextBox><br />

        <label>Surname</label>
        <asp:TextBox ID="txtSurname" placeholder="Surname" ClientIDMode="static" runat="server"></asp:TextBox><br />

        <label>Date of Birth</label>
        <asp:TextBox ID="txtDatepicker" placeholder="01/01/1999" ClientIDMode="static" runat="server"></asp:TextBox><br />

        <label>Email</label>
        <asp:TextBox ID="txtEmail" placeholder="john@doe.com" ClientIDMode="static" runat="server"></asp:TextBox><br />

        <label>Password</label>
        <asp:TextBox ID="txtPassword" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;" ClientIDMode="static" type="password" runat="server"></asp:TextBox><br />

        <label>Confirm Password</label>
        <asp:TextBox ID="txtConfirmPassword" placeholder="&#9679;&#9679;&#9679;&#9679;&#9679;" ClientIDMode="static" type="password" runat="server"></asp:TextBox><br />

        <asp:Button type="submit" class="auto-style2 loginButton" runat="server" Text="Register" OnClick="btnRegister" />
    </div>
</asp:Content>