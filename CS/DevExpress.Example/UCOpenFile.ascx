<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCOpenFile.ascx.cs" Inherits="DevExpress.Example.UCOpenFile" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxFileManager" TagPrefix="dx" %>

<dx:ASPxFileManager ID="fileManager" runat="server" ClientInstanceName="fileManager" Width="600px">
    <SettingsToolbar ShowCreateButton="False" ShowDeleteButton="False" ShowRenameButton="False" />
    <SettingsUpload Enabled="false" />
    <Settings RootFolder="~\contents\" ThumbnailFolder="~\Thumb\" AllowedFileExtensions=".htm,.html" />
</dx:ASPxFileManager>