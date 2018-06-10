<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Discuss.aspx.vb" Inherits="Discuss" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>討論區</h1>
            <asp:Panel ID="Panel1" runat="server" style="text-align:center;">
                <asp:ListBox ID="ListBox1" runat="server" Height="300px" Width="900px" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title">
                    
                </asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [title] FROM [DicussTest]"></asp:SqlDataSource>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
