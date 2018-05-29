<asp:label runat="server" text="(現在選擇課程:)"></asp:label>

<%@ Page Language="VB" AutoEventWireup="false" CodeFile="ClassIndex.aspx.vb" Inherits="Index" %>

<br />
<br />
<asp:Label ID="Label2" runat="server" Text="(課程資訊:)"></asp:Label>
<br />
<br />
<asp:Label ID="Label3" runat="server" Text="(課程成員:)"></asp:Label>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="功能表:"></asp:Label>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="Blue" NavigateUrl="~/Group.aspx">分組</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="Blue" NavigateUrl="~/Discuss.aspx">討論</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="Blue" NavigateUrl="~/RollCall.aspx">點名</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="Blue" NavigateUrl="~/Question.aspx">提問</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="Blue" NavigateUrl="~/Lottery.aspx">抽籤點人</asp:HyperLink>
            <br />
            <br />
            <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="Blue" NavigateUrl="~/quiz.aspx">隨堂測驗</asp:HyperLink>
        </div>
    </form>
</body>
</html>
