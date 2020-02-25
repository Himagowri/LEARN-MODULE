<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="studentmodule.Login" %>
<!DOCTYPE html>
<head runat="server">
    <title>loginpage</title>
    <link href="style.css" rel="stylesheet" />
    <style type="text/css">
        </style>
    
   </head>
    
<center>
    <body>
            <div  class="loginbox ">
                <img src="image/personicon.png" alt="Alternate Text" class="user" />
                
                <h2  >LEARN MODULE</h2>
                  
                <form id="form1" runat="server">
			
                 <br />
                     <asp:Label ID="Label1" CssClass="lblemail" style="float:left; padding-right:20px;" runat="server" Text="Email:"/>
			         <asp:TextBox ID="TxtUsername" placeholder="enter email" runat="server" CausesValidation="True" Height="16px" Width="142px" CssClass="auto-style3" /> 
                 <br />
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUsername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
				  <br />

				    <asp:Label ID="Label2" CssClass="lblpass" style="float:left"  runat="server" Text="Password:" /> 
                    <asp:TextBox ID="TxtPwd" runat="server"  CausesValidation="True" placeholder="enter password" TextMode="Password" Height="16px" Width="142px" CssClass="auto-style3" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPwd" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                  <br />
                  <br />
				     <asp:Button ID="Button1" CssClass="btnsubmit" runat="server" Text="Log in" OnClick="Button1_Click" Height="42px" Width="110px" />
                  <br />
                     <asp:Label ID="ErrorMessage" runat="server" ForeColor="#FF3300"></asp:Label>
                  <br />
                     <asp:HyperLink ID="HyperLink1"  CssClass="btnforget" runat="server" NavigateUrl="~/register.aspx">Dont have an account ,register now</asp:HyperLink>
                </form>
            </div>
    
</body>
</center>
            
              
            




