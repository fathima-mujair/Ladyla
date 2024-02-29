<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Loginpage.aspx.cs" Inherits="Ladyla_Accesories.Loginpage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="w-100">
        <tr>
            <td style="width: 280px">
                <h1 class="heading">LOGIN HERE</h1>
            </td>
           
        </tr>
        <tr>            <td style="height: 56px; width: 280px;">
                <asp:Label ID="Label12" runat="server" Text="Username" Height="10px"></asp:Label>
            </td>
            <td style="width: 262px; height: 56px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
&nbsp; </td>
            <td style="width: 132px; height: 56px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px">&nbsp;</td>
            <td style="width: 262px">&nbsp;</td>
            <td style="width: 132px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 280px">
                <asp:Label ID="Label13" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 262px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 132px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 280px">&nbsp;</td>
            <td style="width: 262px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="width: 132px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 280px">&nbsp;</td>
            <td style="width: 262px">
                <asp:Button ID="Button1"  CssClass="reg-button" runat="server" Text="Login"  OnClick="Button1_Click"  />
            </td>
            <td style="width: 132px">
                <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 280px">&nbsp;</td>
            <td style="width: 262px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 132px">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
