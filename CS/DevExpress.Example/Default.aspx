<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DevExpress.Example.Default" %>
<%@ Register assembly="DevExpress.Web.ASPxHtmlEditor.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxHtmlEditor" tagprefix="dx" %>
<%@ Register assembly="DevExpress.Web.ASPxSpellChecker.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxSpellChecker" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ASPxHtmlEditor - custom file opening</title>
</head>
<body>
    <script type="text/javascript">
        function DialogClosed(s, e) {
            if (e.name == "cdialog" && e.status == "ok") {
                var file = fileManager.GetSelectedFile();
                if (file) {
                    var filename = file.GetFullName();
                    htmlEditor.PerformDataCallback(filename, function (s, e) { s.SetHtml(e); });
                }
            }
        }
    </script>
    <form id="form1" runat="server">
    <div>
        <dx:ASPxHtmlEditor ID="htmlEditor" runat="server" ClientInstanceName="htmlEditor" OnCustomDataCallback="htmlEditor_CustomDataCallback">
            <CustomDialogs>
                <dx:HtmlEditorCustomDialog  Name="cdialog" FormPath="~/UCOpenFile.ascx">
                </dx:HtmlEditorCustomDialog>
            </CustomDialogs>
            <ClientSideEvents CustomDialogClosed="DialogClosed" />
        </dx:ASPxHtmlEditor>
    </div>
    </form>
</body>
</html>
