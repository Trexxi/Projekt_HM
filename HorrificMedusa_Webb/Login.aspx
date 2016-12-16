<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnLogIn" runat="server" Text="Logga In" OnClick="btnLogIn_Click" />
        <asp:Button ID="btnRegistry" runat="server" Text="Registrera" OnClick="btnRegistry_Click" />
        <br />
        <asp:Image ID="HeaderImg" runat="server" ImageURL="~/img/headerimg2.jpg"/>
        <br />
        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem NavigateUrl="Default.aspx" Text="Start" Value="Start"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="Gallery.aspx" Text="Galleri" Value="Galleri"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="Artists.aspx" Text="Tattuerare" Value="Tattuerare"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="ReservationPage.aspx" Text="Boka" Value="Boka"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="Contact.aspx" Text="Kontakta Oss" Value="Kontakta Oss"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="MyPage.aspx" Text="Min Sida" Value="Min Sida"></asp:MenuItem>
            </Items>
        </asp:Menu>
        <asp:Login ID="Login1" runat="server" OnAuthenticate="Login1_Authenticate">
        </asp:Login>
    </div>
    </form>
</body>
</html>
