
Partial Class SingIn
    Inherits System.Web.UI.Page

    Protected Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click
        Server.Transfer("SingUp.aspx")
    End Sub
End Class
