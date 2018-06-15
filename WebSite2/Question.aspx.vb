
Partial Class Question
    Inherits System.Web.UI.Page

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim question As String = TextBox1.Text
        Session("question") = question
        Label1.Text &= DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss") & "<br>" & question & "<br>" & "<hr>"
        TextBox1.Text = ""

    End Sub
    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Label1.Text = ""
    End Sub
End Class
