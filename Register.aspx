<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="studentmodule.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="/style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style1 {
            margin-left: 14px;
        }
        .auto-style2 {
            margin-left: 0px;
        }
        .auto-style3 {
            margin-left: 0px;
            height: 18px;
        }
        .auto-style4 {
            height: 18px;
        }
    </style>
</head>
<body>
    <center>
    <form id="form1" runat="server">

        <div>
            <br />
            <br />
            <br />
            <h2 style="color:black">REGISTRATION PAGE</h2>
            <br />
            <table class="auto-style1" style="border-radius">
                <tr class="table table-hover" >
                    <td class="auto-style2">
                        <asp:Label ID="Label5" runat="server" Text="Name "></asp:Label></td>
                    <td>
                        <asp:TextBox ID="nametext" runat="server" Height="25px" Width="213px" CssClass="auto-style2"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nametext" ErrorMessage="*" ForeColor="#FF3300" ></asp:RequiredFieldValidator>
                    </td>

                  
                </tr>
                
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label6" runat="server"  Text="E-mail"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="emailtxt" runat="server" Height="25px" Width="213px"></asp:TextBox></td>

                </tr>
               
                <tr class="table-success">
                    <td class="auto-style2">
                        <asp:Label ID="Label7" runat="server" Text="Password"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="passwordtxt" runat="server" Height="25px" Width="213px" CausesValidation="True" TextMode="Password"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="teach_id"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="textid" runat="server" Height="25px" Width="213px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label2" runat="server" Text="Role"></asp:Label></td>
                    <td class="auto-style4">
                        <asp:DropDownList ID="ddlRole" runat="server" Height="27px">
                            <asp:ListItem Selected="True" Value="1">Teacher</asp:ListItem>
                            <asp:ListItem Value="2">Student</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                      
                    </td>
                </tr>

            </table>
           
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" CssClass="btnsubmit"  OnClick="Button1_Click"  Text="Register" Height="42px" Width="110px"/>
        </div>

    </form>
         </center>
</body>
</html>
