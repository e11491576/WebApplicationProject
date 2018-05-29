<%@ Page Language="VB" AutoEventWireup="false" CodeFile="MainIndex.aspx.vb" Inherits="_Class" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #Select1 {
            height: 27px;
            width: 170px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" Height="20px" Width="194px">
            </asp:DropDownList>
            <asp:Button ID="Button1" runat="server" Height="18px" style="margin-left: 44px" Text="Button" Width="90px" />
        </div>
        <div>
        </div>
        <div>
            <asp:ListBox ID="ListBox1" runat="server" Height="189px" style="margin-left: 11px; margin-top: 0px" Width="780px">
               <asp:ListItem>1</asp:ListItem>
               <asp:ListItem>2</asp:ListItem>
               <asp:ListItem>3</asp:ListItem>
               <asp:ListItem>4</asp:ListItem>
               <asp:ListItem>5</asp:ListItem>
            </asp:ListBox>
        </div>
    </form>
</body>
</html>
