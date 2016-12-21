<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyPage.aspx.cs" Inherits="MyPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Button ID="btnLogIn" runat="server" Text="Logga In" OnClick="btnLogIn_Click" Visible="false"/>
        <asp:Button ID="btnRegistry" runat="server" Text="Registrera" OnClick="btnRegistry_Click" Visible="false" />
        <asp:Button ID="btnLogOut" runat="server" Text="Logga Ut" OnClick="btnLogOut_Click" />
        <br />
        <asp:Image ID="HeaderImg" runat="server" ImageURL="~/img/headerimg2.jpg" />
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
        <asp:Label ID="lbRubrik" runat="server" Text="Min Sida"></asp:Label><br />
        <asp:Image ID="UserImg1" runat="server" ImageURL="~/img/user.jpg" Width="100"/><br />
        <asp:TextBox ID="tbInfo1" runat="server" Visible="false"></asp:TextBox><br />
        <asp:TextBox ID="tbInfo2" runat="server" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo3" runat="server" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo4" runat="server" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo5" runat="server" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo6" runat="server" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo7" runat="server" Enabled="False" ></asp:TextBox><br />
    </div>   
    </form>
</body>
</html>
