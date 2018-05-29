<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SingIn.aspx.vb" Inherits="SingIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="text-align:center;">
            <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl="~/image/logo.png" Width="100px" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Sign in to ProClass"></asp:Label>
            <div>
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="id" Text="教師" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="id" Text="學生" />
                <br />
                <asp:Label ID="Label2" runat="server" Text="帳號:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="密碼:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="登入" />
                <asp:Button ID="Button2" runat="server" Text="註冊" />
            </div>
        </div>
    </form>
</body>
</html>
