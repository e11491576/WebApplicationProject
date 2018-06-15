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
            ID :
            <asp:TextBox ID="TextBox_ID" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_ID" Display="Dynamic" ErrorMessage="ID只可為數字或英文!" ForeColor="Red" ValidationExpression="\w+"></asp:RegularExpressionValidator>
            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_ID" Display="Dynamic" ErrorMessage="必填!" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;<br />
            <br />
            密碼 : <asp:TextBox ID="TextBox_Password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Password" Display="Dynamic" ErrorMessage="必填!" ForeColor="Red"></asp:RequiredFieldValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_Password" ErrorMessage="長度必須大於5位數! " ForeColor="Red" ValidationExpression="\d{6,20}"></asp:RegularExpressionValidator>
            <br />
            <br />
            確認密碼 :
            <asp:TextBox ID="TextBox_password_check" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox_password_check" Display="Dynamic" ErrorMessage="必填!" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox_Password" ControlToValidate="TextBox_password_check" Display="Dynamic" ErrorMessage="錯誤!" ForeColor="Red"></asp:CompareValidator>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="名字:"></asp:Label>
            <asp:TextBox ID="TextBox_Name" runat="server"></asp:TextBox>
            <br />
            <br />
            身分:<br />
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="identity" Text="老師" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="identity" Text="學生" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="註冊" />
            <br />
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" DeleteCommand="DELETE FROM [Teacher] WHERE [TeacherId] = @TeacherId" InsertCommand="INSERT INTO [Teacher] ([TeacherId], [Password], [TeacherName]) VALUES (@TeacherId, @Password, @TeacherName)" SelectCommand="SELECT * FROM [Teacher]" UpdateCommand="UPDATE [Teacher] SET [Password] = @Password, [TeacherName] = @TeacherName WHERE [TeacherId] = @TeacherId">
                <DeleteParameters>
                    <asp:Parameter Name="TeacherId" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TeacherId" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="TeacherName" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="TeacherName" Type="String" />
                    <asp:Parameter Name="TeacherId" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <asp:Label ID="LabelMessage" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
        </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#336666" BorderStyle="Double" BorderWidth="3px" CellPadding="4" DataKeyNames="StudentId" DataSourceID="SqlDataSource1" GridLines="Horizontal">
            <Columns>
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" ReadOnly="True" SortExpression="StudentId" />
                <asp:BoundField DataField="StudentName" HeaderText="StudentName" SortExpression="StudentName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#333333" />
            <HeaderStyle BackColor="#336666" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#336666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#333333" />
            <SelectedRowStyle BackColor="#339966" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#487575" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#275353" />
        </asp:GridView>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="TeacherId" DataSourceID="SqlDataSource2" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="TeacherId" HeaderText="TeacherId" ReadOnly="True" SortExpression="TeacherId" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="TeacherName" HeaderText="TeacherName" SortExpression="TeacherName" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </form>
</body>
</html>
