Imports System.Data
Imports System.Data.SqlClient


Partial Class Name
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        '  取得使用者學號後存進資料庫
        ' 目前先寫死
        SqlDataSource1.InsertParameters("StudentId").DefaultValue = "00457112"
        SqlDataSource1.Insert()
        Button1.Enabled = "False"
    End Sub
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        '從session取得老師設定的時間,如果不在簽到時間內則不能按"簽到"按紐
        '   If DateTime.Now =  Then
        '    Button1.Enabled = "False"
        '   End If
    End Sub
End Class
