<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Partiels_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <asp:TextBox ID="txtusername" placeholder="username" runat="server"></asp:TextBox>
        </br>
        </br>
        <asp:TextBox ID="txtpassword" placeholder="password" runat="server" TextMode="Password" OnTextChanged="txtpassword_TextChanged"></asp:TextBox>
        </br>
        </br>
        <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
        </br>
    
    </div>
    </form>
</body>
</html>
