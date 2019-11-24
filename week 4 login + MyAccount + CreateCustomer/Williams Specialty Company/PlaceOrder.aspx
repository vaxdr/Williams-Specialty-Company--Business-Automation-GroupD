﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PlaceOrder.aspx.cs" Inherits="PlaceOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Logo.png" PostBackUrl="~/Main.aspx" />
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="This is the PlaceOrder page"></asp:Label>
    
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Product ID:"></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Quantity:"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox2" runat="server" Width="34px"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Message to be printed or engraved:"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="64px" ImageUrl="~/images/PlaceOrder.png" Width="175px" />
        <br />
&nbsp;
    
    </div>
    </form>
</body>
</html>
