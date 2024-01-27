<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="Ladyla_Accesories.Loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td>&nbsp;</td>
            <td style="width: 329px">&nbsp;</td>
            <td style="width: 329px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 329px">&nbsp;</td>
            <td style="width: 329px">&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 56px">
                <asp:Label ID="Label12" runat="server" Text="Username" Height="10px"></asp:Label>
            </td>
            <td style="width: 329px; height: 56px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp; </td>
            <td style="width: 329px; height: 56px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 329px">&nbsp;</td>
            <td style="width: 329px">&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label13" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 329px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 329px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 329px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Login" BackColor="White" BorderColor="Black" BorderStyle="Groove" CssClass="main-border-button" Height="38px" OnClick="Button1_Click" Width="124px" />
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
            <td style="width: 329px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 329px">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/userreg.aspx" ForeColor="White" Height="15px">New user? Create new Account</asp:HyperLink>
            </td>
            <td style="width: 329px">&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td style="width: 329px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 329px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
