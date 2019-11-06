<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="Catalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left; background-color: #FFFFFF">
    
        <asp:ImageButton ID="btnLogo" runat="server" ImageUrl="~/images/Logo.png" PostBackUrl="~/Main.aspx" />
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
    
        <asp:TextBox ID="txtUserName" runat="server" TabIndex="1"></asp:TextBox><br />
        
    
    </div>
        <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" TabIndex="2"></asp:TextBox>
        <p>
            <asp:ImageButton ID="btnLogin" runat="server" BorderStyle="Outset" Height="50px" ImageUrl="~/images/LogIn.png" OnClick="btnLogin_Click" TabIndex="3" Width="148px" />
        </p>
    </form>
</body>
</html>
