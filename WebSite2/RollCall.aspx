<%@ Page Language="VB" AutoEventWireup="false" CodeFile="RollCall.aspx.vb" Inherits="Name" Debug="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="簽到" />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [RollCall]" DeleteCommand="DELETE FROM [RollCall] WHERE [StudentId] = @StudentId" InsertCommand="INSERT INTO [RollCall] ([StudentId]) VALUES (@StudentId)">
            <DeleteParameters>
                <asp:Parameter Name="StudentId" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentId" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
