<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ReservationPage.aspx.cs" Inherits="Partiels_ReservationPage" %>
<%@ Register Assembly="DayPilot" Namespace="DayPilot.Web.Ui" TagPrefix="DayPilot" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Button ID="Button1" runat="server" Text="Logga in" />
        <asp:Button ID="Button2" runat="server" Text="Registrera" />
        <br />
        <asp:Menu ID="Menu1" runat="server">
        </asp:Menu>
    

        <br />
    
        <daypilot:daypilotcalendar 
     id="DayPilotCalendar" 
    runat="server" 
    Days="5"
    DataStartField="startDate"
    DataEndField="endDate"
    DataTextField="Tattuerare"
    style="top:100px; left: -130px"
     
            />
    </div>
       
    </form>
</body>
</html>
