Imports System.Data
Imports System.Data.SqlClient

Partial Class SingUp
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        LabelMessage.Text = ""
        '學生註冊
        If Page.IsValid And RadioButton2.Checked Then

            Dim view As DataView
            view = SqlDataSource1.Select(New DataSourceSelectArguments)
            Dim objRow As DataRow
            Dim checkNum As Boolean = False
            For Each objRow In view.Table.Rows
                If TextBox_ID.Text = objRow("StudentId") Then
                    checkNum = True
                    Exit For
                End If
            Next

            If checkNum = True Then
                LabelMessage.Text = "您輸入的ID已被註冊!請重新輸入"
            Else
                Dim insertSQL As String = "INSERT INTO [Student] ([StudentId], [StudentName], [Password]) VALUES (N'" & TextBox_ID.Text & "',N'" & TextBox_Name.Text & "',N'" & TextBox_Password.Text & "')"
                SqlDataSource1.InsertCommand = insertSQL
                SqlDataSource1.Insert()
                LabelMessage.Text = ""
                Response.Redirect("SingIn.aspx")
            End If


        End If

        '老師註冊
        If Page.IsValid And RadioButton1.Checked Then
            Dim view As DataView
            view = SqlDataSource2.Select(New DataSourceSelectArguments)
            Dim objRow As DataRow
            Dim checkNum As Boolean = False
            For Each objRow In view.Table.Rows
                If TextBox_ID.Text = objRow("TeacherId") Then
                    checkNum = True
                    Exit For
                End If
            Next


            If checkNum = True Then
                LabelMessage.Text = "您輸入的ID已被註冊!請重新輸入"
            Else
                Dim insertSQL As String = "INSERT INTO [Teacher] ([TeacherId], [Password], [TeacherName])  VALUES (N'" & TextBox_ID.Text & "',N'" & TextBox_Password.Text & "',N'" & TextBox_Name.Text & "')"
                SqlDataSource2.InsertCommand = insertSQL
                SqlDataSource2.Insert()
                LabelMessage.Text = ""
                Response.Redirect("SingIn.aspx")
            End If
        End If
    End Sub

End Class
