﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateAccount.aspx.cs" Inherits="Virtual_Advisor.CreateAccount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Virtual Advisor - Create Account</title>
    <link rel="stylesheet" href="Style.css" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="homepageLogo"></div>
            <div class="gradient"></div>
            <ul class="homepageNav">
                <li>
                    <a href="Default.aspx">Homepage</a>
                </li>
                <li>
                    <a href="ClassesTaken.aspx">Enter Classes</a>
                </li>
            </ul>

            <div class="loginWrapper">
                <br /><br />
                <h3>Create an Account:</h3>
                <br /><br />
                <table>
                    <tr>
                        <td>
                            <asp:Label ID="lblFirstName" runat="server" Text="First Name: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr><td><br /></td><td><br /></td></tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblLastName" runat="server" Text="Last Name: "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr><td><br /></td><td><br /></td></tr>
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
                    <tr><td><br /></td><td><br /></td></tr>
                    <tr>
                        <td>
                            <asp:Label ID="lblGradYear" runat="server" Text="Grad Year: '"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtGradYear" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
                
                <div class="centeredButton">
                    <asp:Label ID="lblStatus" runat="server" EnableViewState="False" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <asp:Button ID="btnCreateAccount" runat="server" Text="Create Account" OnClick="btnCreateAccount_Click" />

                    <asp:Panel ID="pnlInformation" runat="server" Visible="False">
                        <p>Would you like to enter your class information for the personalized plan?</p>
                        <br />
                        <asp:Button ID="btnYes" runat="server" Text="Yes" OnClick="btnYes_Click" />
                        &nbsp&nbsp&nbsp&nbsp
                        <asp:Button ID="btnNo" runat="server" Text="No" OnClick="btnNo_Click" />
                    </asp:Panel>

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
