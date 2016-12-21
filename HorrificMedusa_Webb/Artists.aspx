<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Artists.aspx.cs" Inherits="Artists" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnLogIn" runat="server" Text="Logga In" OnClick="btnLogIn_Click1" />
        <asp:Button ID="btnRegistry" runat="server" Text="Registrera" OnClick="btnRegistry_Click1" />
        <asp:Button ID="btnLogOut" runat="server" Text="Logga Ut" OnClick="btnLogOut_Click" />
        <br />
        <asp:Image ID="HeaderImg" runat="server" ImageURL="~/img/headerimg2.jpg" m/>
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
        <asp:Label ID="lbRubrikTatt" runat="server" Text="Våra Tattuerare"></asp:Label><br />
        <asp:Image ID="artistImg1" runat="server" ImageURL="~/img/user.jpg" Width="100"/><asp:TextBox ID="tbArtist1" runat="server" Enabled="false"></asp:TextBox>
        <br /><asp:Image ID="artistImg2" runat="server" ImageURL="~/img/user.jpg" Width="100" ImageAlign="Right"/><asp:TextBox ID="tbArtist2" runat="server" Enabled="false"></asp:TextBox>
        <br /><asp:Image ID="artistImg3" runat="server" ImageURL="~/img/user.jpg" Width="100"/><asp:TextBox ID="tbArtist3" runat="server" Enabled="false"></asp:TextBox>
    </div>
    </form>
</body>
</html>
