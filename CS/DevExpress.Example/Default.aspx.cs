using System;
using DevExpress.Web.ASPxHtmlEditor;
using System.IO;
using System.Collections.Generic;
using DevExpress.Web;

namespace DevExpress.Example {
    public partial class Default : System.Web.UI.Page {
        protected void Page_Init(object sender, EventArgs e) {
            if(!IsPostBack) {
                AddOpenFileButton();
            }
        }

        void AddOpenFileButton() {
            htmlEditor.CreateDefaultToolbars(true);
            var btn = new ToolbarCustomDialogButton("cdialog", "Open HTML File", false, true);
            btn.Image.Url = "~/icons/folder-open.ico";
            htmlEditor.Toolbars[0].Items.Insert(0, btn);
        }

        protected void htmlEditor_CustomDataCallback(object sender, CustomDataCallbackEventArgs e) {            
            if(!String.IsNullOrEmpty(e.Parameter)) {
                var filepath = String.Format("~/{0}", e.Parameter);
                var filename = MapPath(filepath);
                using(var reader = new StreamReader(filename)) {
                    var text = reader.ReadToEnd();
                    e.Result = text;
                }
            }
        }
    }
}