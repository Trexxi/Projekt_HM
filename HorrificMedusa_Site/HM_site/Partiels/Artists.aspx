<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Artists.aspx.cs" Inherits="Partiels_Artists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Logga in" OnClick="Button1_Click" />
        <asp:Button ID="Button2" runat="server" Text="Registrera" />
        <br />
        <asp:Menu ID="Menu1" runat="server">
        </asp:Menu>
        <br />
        <asp:Image ID="Image1" runat="server" />
    
    </div>
    </form>
</body>
</html>
