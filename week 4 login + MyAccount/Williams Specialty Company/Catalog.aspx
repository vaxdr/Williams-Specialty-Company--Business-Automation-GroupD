<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Catalog.aspx.cs" Inherits="Catalog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: left; background-color: #FFFFFF">
    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Logo.png" PostBackUrl="~/Main.aspx" />
    
        <br />
        <asp:Label ID="Label1" runat="server" Text="This is the Catalog page"></asp:Label>
    
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="94px" ImageUrl="~/images/Clothing.jpg" Width="93px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server">Check out our Clothing options!</asp:LinkButton>
        <br />
        <br />
        <br />
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/Plaque.png" Height="120px" Width="123px" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton2" runat="server">Check out our Plaque engraving options!</asp:LinkButton>
        <br />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton4" runat="server" Height="124px" ImageUrl="~/images/Trophy.jpg" Width="91px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton3" runat="server">Check out our Trophy options!</asp:LinkButton>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
