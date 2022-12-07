Imports System
Imports DevExpress.Web.ASPxHtmlEditor
Imports System.IO
Imports System.Collections.Generic
Imports DevExpress.Web

Namespace DevExpress.Example
    Partial Public Class [Default]
        Inherits System.Web.UI.Page

        Protected Sub Page_Init(ByVal sender As Object, ByVal e As EventArgs)
            If Not IsPostBack Then
                AddOpenFileButton()
            End If
        End Sub

        Private Sub AddOpenFileButton()
            htmlEditor.CreateDefaultToolbars(True)
            Dim btn = New ToolbarCustomDialogButton("cdialog", "Open HTML File", False, True)
            btn.Image.Url = "~/icons/folder-open.ico"
            htmlEditor.Toolbars(0).Items.Insert(0, btn)
        End Sub

        Protected Sub htmlEditor_CustomDataCallback(ByVal sender As Object, ByVal e As CustomDataCallbackEventArgs)
            If Not String.IsNullOrEmpty(e.Parameter) Then
                Dim filepath = String.Format("~/{0}", e.Parameter)
                Dim filename = MapPath(filepath)
                Using reader = New StreamReader(filename)
                    Dim text = reader.ReadToEnd()
                    e.Result = text
                End Using
            End If
        End Sub
    End Class
End Namespace