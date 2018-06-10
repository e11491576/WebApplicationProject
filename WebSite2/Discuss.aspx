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
            <h1 style="text-align:center;">討論區</h1>
            <asp:Panel ID="MainPanel" runat="server" style="text-align:center;">
                <asp:ListBox ID="ListBox1" runat="server" Height="300px" Width="900px" Font-Size="X-Large" DataSourceID="SqlDataSource1" DataTextField="title" DataValueField="title" AutoPostBack="True">
                    
                </asp:ListBox>
                <br />
                <asp:Button ID="Button1" runat="server" Text="發佈討論文章" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT * FROM [DicussTest]" DeleteCommand="DELETE FROM [DicussTest] WHERE [Id] = @Id" InsertCommand="INSERT INTO [DicussTest] ([title], [content]) VALUES (@title, @content)" UpdateCommand="UPDATE [DicussTest] SET [title] = @title, [content] = @content WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="content" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="content" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </asp:Panel>
            <asp:Panel ID="CreatePanel" runat="server" Visible="False">
                討論題目：<asp:TextBox ID="TitleBox" runat="server" Height="30px" Width="900px"></asp:TextBox>
                <br />
                討論內容：<asp:TextBox ID="ContentBox" runat="server" Height="300px" Width="900px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:Button ID="Button2" runat="server" Text="送出" />
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
