<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="shadowweb.aspx.cs" Inherits="studentmodule.shadowweb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            outline-width: medium;
            outline-style: none;
            outline-color: invert;
            color: #fff;
            font-size: 16px;
            border-style: none;
            border-color: inherit;
            border-width: medium;
            margin-bottom: 20px;
            background-color: transparent;
        }
    </style>
</head>
<body>
    
    
        <div class="loginbox">
            <img src="image/personicon.png" alt="Alternate Text" class="user" />
            <h2>LEARN MODULE</h2>
            <form runat="server">
               <table> <tr><td><asp:Label Text="Email" CssClass="lblemail" runat="server" /></td>
                        <td><asp:TextBox runat="server" CssClass="auto-style1" placeholder="enter email" Height="36px" Width="207px" /></td></tr>
                
                   <tr><td><asp:Label Text="Password" CssClass="lblpass" runat="server" /></td>
                        <td><asp:TextBox runat="server" CssClass="txtpass" placeholder="*********" /></td></tr>
                <tr><td><asp:Button Text="Sign In" CssClass="btnsubmit" runat="server" /></td></tr>
                <asp:LinkButton Text="Not registered? Register Now" CssClass="btnforget" runat="server" />
                </table>
            </form>
        </div>
    
</body>
</html>
