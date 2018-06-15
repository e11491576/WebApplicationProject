Imports System.Data
Imports System.Data.SqlClient



Partial Class Lottery
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim ID As String = "1"
        GridView1.DataSourceID = "SqlDataSource1"
        SqlDataSource1.SelectCommand = "SELECT TOP (1) StudentId FROM Course_Student_List WHERE (CourseID = '1') ORDER BY NEWID()"
    End Sub

End Class
