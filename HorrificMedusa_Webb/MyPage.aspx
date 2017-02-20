<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyPage.aspx.cs" Inherits="MyPage" %>

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

        <h1>Min Sida</h1>
        
        <asp:Label ID="lbLogInText" runat="server" Text="Logga in för att se din information och bokningar"></asp:Label><br />
            <asp:Button ID="btnLogIn2" runat="server" Text="Logga In" OnClick="btnLogIn2_Click" /><br />
        <asp:Image ID="UserImg1" runat="server" ImageURL="~/img/user.jpg" Width="100" Visible="false"/><br />
        <asp:TextBox ID="tbInfo1" runat="server" Visible="false"></asp:TextBox><br />
        <asp:TextBox ID="tbInfo2" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo3" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo4" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo5" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo6" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbInfo7" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        
        
        <asp:Repeater ID="repBokningar" runat="server">

            <ItemTemplate>
                <p><%# Eval("Day") %></p>
            </ItemTemplate>

        </asp:Repeater>


        <asp:Label ID="lbBokningsText" runat="server" Text="Mina Bokningar" Visible="false"></asp:Label><br />
        <asp:TextBox ID="tbBokn1" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbBokn2" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbBokn3" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbBokn4" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbBokn5" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbBokn6" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
        <asp:TextBox ID="tbBokn7" runat="server" Visible="false" Enabled="False" ></asp:TextBox><br />
    </div>   
    </form>
</body>
</html>
