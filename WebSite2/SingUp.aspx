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
            <asp:TextBox ID="TextBox_ID" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_ID" Display="Dynamic" ErrorMessage="學號只可為數字或英文!" ForeColor="Red" ValidationExpression="\w+"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_ID" Display="Dynamic" ErrorMessage="必填!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            密碼 : <asp:TextBox ID="TextBox_Password" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox_Password" Display="Dynamic" ErrorMessage="必填!" ForeColor="Red"></asp:RequiredFieldValidator>
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
            <asp:Label ID="LabelMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
