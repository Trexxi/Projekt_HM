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
        
        <asp:Label ID="lbTextReg" runat="server" Text="Registrera ett nytt konto"></asp:Label>

        <asp:CreateUserWizard ID="Registry1" runat="server" OnCreatedUser="Registry1_CreatedUser">
            <WizardSteps>
                <asp:CreateUserWizardStep runat="server">
                    <ContentTemplate>
                        <table>
                            <tr>
                                <td align="center" colspan="2">Skapa ditt konto här:</td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblUserNameLabel" runat="server">Välj ett användarnamn:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                             <tr>
                                <td align="right">
                                    <asp:Label ID="lblEmailLabel" runat="server">Ange e-post:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Email" RequireEmail="true" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
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
                                    <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="lblConfirmPasswordLabel" runat="server">Ange lösenordet igen:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="QuestionLabel" runat="server" AssociatedControlID="Question">Security Question:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Question" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="Security question is required." ToolTip="Security question is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="right">
                                    <asp:Label ID="AnswerLabel" runat="server" AssociatedControlID="Answer">Security Answer:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="Answer" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="Security answer is required." ToolTip="Security answer is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="De angivna lösenorden måste matcha" ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2" style="color:Red;">
                                    <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                </td>
                            </tr>
                        </table>
                    </ContentTemplate>
                </asp:CreateUserWizardStep>
                <asp:CompleteWizardStep runat="server" />
            </WizardSteps>
        </asp:CreateUserWizard>
    </div>
    </form>
</body>
</html>
