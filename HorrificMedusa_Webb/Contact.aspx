<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

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
        <asp:Button ID="btnLogOut" runat="server" Text="Logga Ut" OnClick="btnLogOut_Click" Visible="false" />
        
        <br />
        <asp:Image ID="HeaderImg" runat="server" ImageURL="~/img/headerimg2.jpg" />
        <br />

        <asp:Menu ID="Menu1" runat="server" Orientation="Horizontal" OnMenuItemClick="Menu1_MenuItemClick">
            <Items>
                <asp:MenuItem NavigateUrl="Default.aspx" Text="Hem" Value="Hem"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="Gallery.aspx" Text="Galleri" Value="Galleri"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="Artists.aspx" Text="Tattuerare" Value="Tattuerare"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="ReservationPage.aspx" Text="Boka" Value="Boka"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="Contact.aspx" Text="Kontakta Oss" Value="Kontakta Oss"></asp:MenuItem>
                <asp:MenuItem NavigateUrl="MyPage.aspx" Text="Min Sida" Value="Min Sida"></asp:MenuItem>
            </Items>
        </asp:Menu>

        <h1>Kontakta Oss</h1>
        <asp:Image ID="MapImg1" runat="server" ImageURL="~/img/map.jpg" Width="600"/>
        <asp:TextBox ID="tbContact1" runat="server" Enabled="false"></asp:TextBox>
        <asp:TextBox ID="tbContact2" runat="server" Enabled="false"></asp:TextBox>
        <asp:TextBox ID="tbContact3" runat="server" Enabled="false"></asp:TextBox>
        <asp:TextBox ID="tbContact4" runat="server" Enabled="false"></asp:TextBox>
        <asp:TextBox ID="tbContact5" runat="server" Enabled="false"></asp:TextBox>
    
    </div>
    </form>
</body>
</html>
