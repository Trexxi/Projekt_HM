<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservationPage.aspx.cs" Inherits="ReservationPage" %>

<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

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
        <asp:Button ID="btnLogOut" runat="server" Text="Logga Ut" OnClick="btnLogOut_Click" Visible="false"/>
        
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

        <h1>Boka din tid här</h1>
        <p>Här syns tattuerarnas scheman och vilka tider som går boka. </p>
        <p> Det går boka mötestid sjäv, men tattueringstid bokas av tattueraren. </p>

        <br />
        <asp:DropDownList ID="ddlArtist" runat="server" AppendDataBoundItems="true"
            OnSelectedIndexChanged="ddlArtist_SelectedIndexChanged" AutoPostBack="True">
            <asp:ListItem Text="Välj Tattuerare" Value="0"></asp:ListItem>
            <asp:ListItem Text="Andreas" Value="1"></asp:ListItem>
            <asp:ListItem Text="Jörgen" Value="2"></asp:ListItem>
            <asp:ListItem Text="Malin" Value="3"></asp:ListItem>
        </asp:DropDownList>

        <DayPilot:DayPilotCalendar ID="DayPilotCalendar1" runat="server" Days="5" 
            BuisnessEndsHour="16"
            ScrollPositionHour="8"
            HeightSpec="BusinessHoursNoScroll"
            EventClickHandling="PostBack"
            OnEventClick="DayPilotCalendar1_EventClick"
            DataStartField="SchemeStartDate"
            DataEndField="SchemeEndDate"
            DataTextField ="InformationBox"
            DataValueField="SchemeID"
            style='top: 130px; left: -136px' 
            />
        
        <asp:TextBox ID="tb" runat="server" Visible="false" Enabled="false"></asp:TextBox>
        <asp:TextBox ID="tb1" runat="server" Visible="false" Enabled="false"></asp:TextBox>
        <asp:TextBox ID="tb2" runat="server" Visible="false" Enabled="false" ></asp:TextBox>
        <asp:TextBox ID="tb3" runat="server" Visible="false" Enabled="false"></asp:TextBox>
        <asp:TextBox ID="tb4" runat="server" Visible="false"></asp:TextBox>
        <asp:Button ID="btnSubmit" Text="Boka" OnClick="btnSubmit_Click" runat="server" Visible="false" />

    </div>
    </form>
</body>
</html>
