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
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [Student] WHERE [StudentId] = @StudentId" InsertCommand="INSERT INTO [Student] ([StudentId], [StudentName], [Password]) VALUES (@StudentId, @StudentName, @Password)" SelectCommand="SELECT * FROM [Student]" UpdateCommand="UPDATE [Student] SET [StudentName] = @StudentName, [Password] = @Password WHERE [StudentId] = @StudentId">
            <DeleteParameters>
                <asp:Parameter Name="StudentId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentId" Type="String" />
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="StudentId" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
