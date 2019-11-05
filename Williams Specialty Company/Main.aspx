<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Main.aspx.cs" Inherits="Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: justify;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Logo.png" PostBackUrl="~/Main.aspx" />
    
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Catalog.png" PostBackUrl="~/Catalog.aspx" Width="195px" Height="55px" />
    
    &nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Catalog.aspx">Click to view our Catalog!</asp:LinkButton>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/PlaceOrder.png" Width="197px" PostBackUrl="~/PlaceOrder.aspx" />
    
    &nbsp;
    
        <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/PlaceOrder.aspx">Click to place an Order!</asp:LinkButton>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton4" runat="server" Height="56px" ImageUrl="~/images/MyAccount.png" PostBackUrl="~/MyAccount.aspx" Width="197px" />
    
        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" PostBackUrl="~/MyAccount.aspx">Click to view your Account!</asp:LinkButton>
        <br />
        <br />
        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/OrderInformation.png" PostBackUrl="~/OrderInformation.aspx" Width="183px" />
    
    &nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton4" runat="server" PostBackUrl="~/OrderInformation.aspx">Click to view Order Information!</asp:LinkButton>
    
    </div>
    </form>
</body>
</html>
