<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ContentUrlPage.aspx.cs" Inherits="ContentUrlPage" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxPanel"
    TagPrefix="dxp" %>

<%@ Register Assembly="DevExpress.Web.v13.1" Namespace="DevExpress.Web.ASPxEditors"
    TagPrefix="dxe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
    <script type="text/javascript">
        function ReturnToParentPage() {
            var parentWindow = window.parent;
            parentWindow.SelectAndClosePopup(ASPxTextBox1.GetValue());
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxp:ASPxPanel ID="ASPxPanel1" runat="server" DefaultButton="ASPxButton1" Width="200px">
            <PanelCollection>
                <dxp:PanelContent runat="server">
                    <dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px" Text="test value" ClientInstanceName="ASPxTextBox1" />
                    <br />
                    <dxe:ASPxButton ID="ASPxButton1" runat="server" AutoPostBack="False" Text="Return To Parent Page">
                        <ClientSideEvents Click="ReturnToParentPage" />
                    </dxe:ASPxButton>
                </dxp:PanelContent>
            </PanelCollection>
        </dxp:ASPxPanel>
    </div>
    </form>
</body>
</html>
