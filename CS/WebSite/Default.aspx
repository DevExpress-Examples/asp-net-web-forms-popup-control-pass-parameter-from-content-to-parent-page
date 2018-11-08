<%-- BeginRegion Page setup --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="PassParamToContentUrlPage" %>


<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxPopupControl"
    TagPrefix="dxpc" %>

<%@ Register Assembly="System.Web, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a"
    Namespace="System.Web.UI" TagPrefix="cc1" %>


<%-- EndRegion --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>PopupControl - How to pass parameter to Parent Window (from ContentUrl page) and close PopupControl</title>
    
<script type="text/javascript">
function SelectAndClosePopup(value){
    ASPxButtonEdit1.SetValue(value);
    ASPxPopupControl1.Hide();
}
</script>

</head>
<body>
    <form id="form1" runat="server">
    

        <dxpc:aspxpopupcontrol id="ASPxPopupControl1" runat="server" clientinstancename="ASPxPopupControl1"
            closeaction="CloseButton" contenturl="~/ContentUrlPage.aspx" height="183px"
            width="394px" Modal="True" PopupAction="None" PopupElementID="ASPxButtonEdit1" PopupHorizontalAlign="LeftSides" PopupVerticalAlign="Below"><ContentCollection>
<dxpc:PopupControlContentControl ID="PopupControlContentControl1" runat="server"></dxpc:PopupControlContentControl>
</ContentCollection>
</dxpc:aspxpopupcontrol>

        <dxe:ASPxButtonEdit ID="ASPxButtonEdit1" runat="server" ClientInstanceName="ASPxButtonEdit1"><Buttons>
            <dxe:EditButton>
            </dxe:EditButton>
</Buttons>
            <ClientSideEvents ButtonClick="function(s, e) {
	ASPxPopupControl1.Show();
}" />
</dxe:ASPxButtonEdit>
    </form>
</body>
</html>
