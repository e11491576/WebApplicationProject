<%@ Page Language="VB" AutoEventWireup="false" CodeFile="SingUp.aspx.vb" Inherits="SingUp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            學號 :
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="學號只可為數字或英文!" ForeColor="Red" ValidationExpression="\w+"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="必填!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            密碼 : <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="必填!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            確認密碼 :
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="必填!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="錯誤!" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            身分:<br />
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="identity" Text="老師" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="identity" Text="學生" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="註冊" />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
