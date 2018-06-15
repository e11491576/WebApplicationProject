<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Question.aspx.vb" Inherits="Question" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <asp:TextBox ID="TextBox1" runat="server" Height="16px"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="提問" />

        </div>
        <div style="height: 286px">

            提問紀錄:<br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button2" runat="server" Text="清空提問紀錄" />

            </div>
    </form>
</body>

</html>
