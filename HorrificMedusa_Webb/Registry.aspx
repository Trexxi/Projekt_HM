<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registry.aspx.cs" Inherits="Registry" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
     
                        <table>
                            <tr>
                                <td align="left" colspan="2">Registrera ett nytt konto</td>
                            </tr>
                            <tr>
                                <td align="left" colspan="1">Skapa ditt konto här:</td>
                                <td align="center" colspan="1">
                                    <asp:Image ID="Image1" runat="server" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblUserNameLabel" runat="server">Välj ett användarnamn:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbUserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="tbUserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblEmailLabel" runat="server">Ange e-post:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbEmail" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="tbEmail" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblFirstNameLabel" runat="server">Ange förnamn:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbFirstName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="FirstNameRequired" runat="server" ControlToValidate="tbFirstName" ErrorMessage="First Name is required" ToolTip="First Name is required" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblLastNameLabel" runat="server">Ange efternamn:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbLastName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="LastNameRequired" runat="server" ControlToValidate="tbLastName" ErrorMessage="Last Name is required" ToolTip="Last Name is required" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblSSNLabel" runat="server">Ange personnummer:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbSSN" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="SSNRequired" runat="server" ControlToValidate="tbSSN" ErrorMessage="SSN is required" ToolTip="SSN is required" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblPhoneNumberLabel" runat="server">Ange telefonnummer:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbPhoneNumber" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PhoneNumberRequired" runat="server" ControlToValidate="tbPhoneNumber" ErrorMessage="Phone Number is required" ToolTip="Phone Number is required" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                 </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblAddressLabel" runat="server">Ange adress:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbAddress" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AddressRequired" runat="server" ControlToValidate="tbAddress" ErrorMessage="Address is requried" ToolTip="Address is required" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblZIPLabel" runat="server">Ange postadress:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbZIP" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ZIPRequired" runat="server" ControlToValidate="tbZIP" ErrorMessage="ZIP is required" ToolTip="ZIP is required" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblCountyLabel" runat="server">Ange ort:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbCounty" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="CountyRequired" runat="server" ControlToValidate="tbCounty" ErrorMessage="County is required" ToolTip="County is required" ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblPasswordLabel" runat="server">Välj ett lösenord:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="tbPassword" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblConfirmPasswordLabel" runat="server">Ange lösenordet igen:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="tbConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="tbConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">Har du redan ett konto?</td>
                            </tr>                     
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    <asp:Button ID="btnRegistryButton" runat="server" CommandName="Registry" OnClick="btnRegistryButton_Click" Text="Registrera" ValidationGroup="Registry" />
                                </td>
                                </tr>
                        </table>
    </div>
    </form>
</body>
</html>
