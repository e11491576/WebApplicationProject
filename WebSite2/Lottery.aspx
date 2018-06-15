<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Lottery.aspx.vb" Inherits="Lottery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
        </div>
        <asp:Button ID="Button1" runat="server" Text="抽籤" />
        <p>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                </Columns>
            </asp:GridView>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>">
        </asp:SqlDataSource>
    </form>
</body>
</html>