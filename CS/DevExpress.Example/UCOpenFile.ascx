<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCOpenFile.ascx.cs" Inherits="DevExpress.Example.UCOpenFile" %>
<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<dx:ASPxFileManager ID="fileManager" runat="server" ClientInstanceName="fileManager" Width="600px">
    <SettingsToolbar ShowCreateButton="False" ShowDeleteButton="False" ShowRenameButton="False" />
    <SettingsUpload Enabled="false" />
    <Settings RootFolder="~\contents\" ThumbnailFolder="~\Thumb\" AllowedFileExtensions=".htm,.html" />
</dx:ASPxFileManager>