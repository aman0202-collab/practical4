
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EventRegistration.aspx.cs" Inherits="EventPortal.EventRegistration" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Online Event Registration</title>
    <style>
        body {
            font-family: Arial;
            background: #eef2f7;
        }
        .container {
            width: 450px;
            margin: 40px auto;
            padding: 25px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 0 10px #aaa;
        }
        h2 { text-align: center; color: #174ea6; }
        .field { margin: 12px 0; }
        .field input, .field select {
            padding: 8px;
            width: 95%;
        }
        .error { color: red; font-size: 13px; }
        .btn {
            background: #174ea6;
            color: white;
            padding: 10px 20px;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
<form id="form1" runat="server">
<div class="container">
    <h2>Event Registration</h2>

    <div class="field">
        Full Name<br />
        <asp:TextBox ID="txtName" runat="server" />
        <asp:RequiredFieldValidator ID="valName" runat="server"
            ControlToValidate="txtName"
            ErrorMessage="Name is required."
            CssClass="error" Display="Dynamic" />
    </div>

    <div class="field">
        Email Address<br />
        <asp:TextBox ID="txtEmail" runat="server" />
        <asp:RequiredFieldValidator ID="valEmail" runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required."
            CssClass="error" Display="Dynamic" />
        <asp:RegularExpressionValidator ID="valEmailFormat" runat="server"
            ControlToValidate="txtEmail"
            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
            ErrorMessage="Enter a valid email."
            CssClass="error" Display="Dynamic" />
    </div>

    <div class="field">
        Phone Number<br />
        <asp:TextBox ID="txtPhone" runat="server" MaxLength="10" />
        <asp:RequiredFieldValidator ID="valPhone" runat="server"
            ControlToValidate="txtPhone"
            ErrorMessage="Phone number is required."
            CssClass="error" Display="Dynamic" />
        <asp:RegularExpressionValidator ID="valPhoneFormat" runat="server"
            ControlToValidate="txtPhone"
            ValidationExpression="^[0-9]{10}$"
            ErrorMessage="Enter a 10-digit phone number."
            CssClass="error" Display="Dynamic" />
    </div>

    <div class="field">
        Select Event<br />
        <asp:DropDownList ID="ddlEvent" runat="server">
            <asp:ListItem Text="-- Select Event --" Value="" />
            <asp:ListItem Text="Technical Workshop" Value="Workshop" />
            <asp:ListItem Text="Coding Competition" Value="Coding" />
            <asp:ListItem Text="Annual Fest" Value="Fest" />
            <asp:ListItem Text="Seminar" Value="Seminar" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="valEvent" runat="server"
            ControlToValidate="ddlEvent"
            InitialValue=""
            ErrorMessage="Please select an event."
            CssClass="error" Display="Dynamic" />
    </div>

    <div class="field">
        Registration Date<br />
        <asp:TextBox ID="txtDate" runat="server" TextMode="Date" />
        <asp:RequiredFieldValidator ID="valDate" runat="server"
            ControlToValidate="txtDate"
            ErrorMessage="Select a registration date."
            CssClass="error" Display="Dynamic" />
    </div>

    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
        HeaderText="Please correct the following:"
        CssClass="error" />

    <asp:Button ID="btnRegister" runat="server"
        Text="Register Now" CssClass="btn"
        OnClick="btnRegister_Click" />

    <br /><br />
    <asp:Label ID="lblMessage" runat="server" />
</div>
</form>
</body>
</html>
