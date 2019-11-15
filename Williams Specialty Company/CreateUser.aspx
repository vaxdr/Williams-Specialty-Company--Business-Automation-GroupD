<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CreateUser.aspx.cs" Inherits="CreateUser" %>

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
        <asp:Label ID="Label1" runat="server" Text="This is the Create User form"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUserName" runat="server" OnTextChanged="txtUserName_TextChanged"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtPassword" runat="server" OnTextChanged="txtPassword_TextChanged"></asp:TextBox>
        <br />
        <br />
&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Security Level"></asp:Label>
&nbsp;&nbsp;
        <asp:DropDownList ID="drpSecurityLevel" runat="server" Width="28px">
            <asp:ListItem>C</asp:ListItem>
            <asp:ListItem>S</asp:ListItem>
            <asp:ListItem>O</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Create User" />
&nbsp;
        <asp:Label ID="lblDisplay" runat="server"></asp:Label>
        <br />
        <br />
        <asp:GridView ID="grdUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="UserID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="UserID" HeaderText="UserID" InsertVisible="False" ReadOnly="True" SortExpression="UserID" />
                <asp:BoundField DataField="UserLogon" HeaderText="UserLogon" SortExpression="UserLogon" />
                <asp:BoundField DataField="UserPassword" HeaderText="UserPassword" SortExpression="UserPassword" />
                <asp:BoundField DataField="UserSecLevel" HeaderText="UserSecLevel" SortExpression="UserSecLevel" />
                <asp:CommandField ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" DeleteCommand="DELETE FROM [Users] WHERE [UserID] = ? AND [UserLogon] = ? AND [UserPassword] = ? AND (([UserSecLevel] = ?) OR ([UserSecLevel] IS NULL AND ? IS NULL))" InsertCommand="INSERT INTO [Users] ([UserID], [UserLogon], [UserPassword], [UserSecLevel]) VALUES (?, ?, ?, ?)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [UserLogon] = ?, [UserPassword] = ?, [UserSecLevel] = ? WHERE [UserID] = ? AND [UserLogon] = ? AND [UserPassword] = ? AND (([UserSecLevel] = ?) OR ([UserSecLevel] IS NULL AND ? IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_UserID" Type="Int32" />
                <asp:Parameter Name="original_UserLogon" Type="String" />
                <asp:Parameter Name="original_UserPassword" Type="String" />
                <asp:Parameter Name="original_UserSecLevel" Type="Int32" />
                <asp:Parameter Name="original_UserSecLevel" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UserID" Type="Int32" />
                <asp:Parameter Name="UserLogon" Type="String" />
                <asp:Parameter Name="UserPassword" Type="String" />
                <asp:Parameter Name="UserSecLevel" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UserLogon" Type="String" />
                <asp:Parameter Name="UserPassword" Type="String" />
                <asp:Parameter Name="UserSecLevel" Type="Int32" />
                <asp:Parameter Name="original_UserID" Type="Int32" />
                <asp:Parameter Name="original_UserLogon" Type="String" />
                <asp:Parameter Name="original_UserPassword" Type="String" />
                <asp:Parameter Name="original_UserSecLevel" Type="Int32" />
                <asp:Parameter Name="original_UserSecLevel" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
