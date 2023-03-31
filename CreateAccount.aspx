﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="Virtual_Advisor.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    
    <title>Virtual Advisor - Create Account</title>
    <link rel="stylesheet" href="Style.css" />
    
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script type="text/javascript">
    $(function() {
        // Trigger the SelectedIndexChanged event when the user selects an item from the drop-down list
        $("#<%=ddlMajorMinor.ClientID%>").change(function() {
            __doPostBack("<%=ddlMajorMinor.UniqueID%>", "");
        });
    });
    </script>
</head>

<body>
    <form id="form1" runat="server">
        <div class="homepageLogo"></div>
            <div class="gradient"></div>
            <ul class="homepageNav">
                <li>
                    <a href="Default.aspx">Homepage</a>
                </li>
            </ul>

            <div class="loginWrapper">
                <br /><br />
                <h3>Create an Account:</h3>
                <br /><br />
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblUserName" runat="server" Text="User Name: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUserName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr><td><br /></td><td><br /></td></tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblPassword" runat="server" Text="Password: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                
                <asp:DropDownList ID="ddlMajorMinor" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlMajorMinor_SelectedIndexChanged" AppendDataBoundItems="True"></asp:DropDownList>
                <asp:CheckBoxList ID="cblClassesTaken" runat="server"></asp:CheckBoxList>
                
                <div class="centeredButton">
                    <asp:Label ID="lblStatus" runat="server" EnableViewState="False" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" />
                </div>
                <br /><br />
                <p class="centeredTextNoHover">
                    <a href="Login.aspx">Back to Login Page</a>
                </p>
                <br />
            </div>
    </form>
</body>
</html>
