Imports System.Data
Imports System.Data.SqlClient
Partial Class Discuss
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        MainPanel.Visible = False
        CreatePanel.Visible = True
    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        Dim title = TitleBox.Text
        Dim content = ContentBox.Text

        Dim strSQL = "INSERT INTO [DicussTest] ([title], [content]) VALUES (N'" & title & "',N'" & content & "');"

        SqlDataSource1.InsertCommand = strSQL
        SqlDataSource1.Insert()
        MainPanel.Visible = True
        CreatePanel.Visible = False
    End Sub
End Class
