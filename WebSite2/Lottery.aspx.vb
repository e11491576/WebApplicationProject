Imports System.Data
Imports System.Data.SqlClient



Partial Class Lottery
    Inherits System.Web.UI.Page
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        Dim strDbCon As String = "Data Source=ntougraduated.database.windows.net;Initial Catalog=test;User ID=gg;Password=104Csntou"
        Dim objCon As SqlConnection = New SqlConnection(strDbCon)
        Dim strSQL As String
        Dim objCmd As SqlCommand
        Dim objDR As SqlDataReader
        objCon.Open()

        strSQL = "SELECT * FROM CourseList"
        objCmd = New SqlCommand(strSQL, objCon)
        objDR = objCmd.ExecuteReader()

        Do While objDR.Read()
            Label1.Text &= objDR("CourseId") & " - "
            Label1.Text &= objDR("CourseName") & "<br/>"
        Loop

        objDR.Close()
        objCon.Close()
    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim strDbCon As String = "Data Source=ntougraduated.database.windows.net;Initial Catalog=test;User ID=gg;Password=104Csntou"
        Dim objCon As SqlConnection = New SqlConnection(strDbCon)
        Dim strSQL As String

        objCon.Open()
        strSQL = "SELECT count(*) FROM Course_Student_List WHERE CourseID = '1'"
    End Sub
End Class
