<%@ Page Title="" Language="C#" MasterPageFile="~/Registrations.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Ladyla_Accesories.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .button1:hover{
                        border:solid 1px black;
                        background:none;
                    }
    </style>
    <table class="w-80">
        <tr>
            <td style="width:6px">
                <h1 class="heading" style="width: 266px; height: 45px;margin-left:20px;margin-top:50px;">LOGIN HERE</h1>
            </td>
           
        </tr>
        <tr>            <td style="height: 30px; width: 6px;">
                <asp:Label ID="Label12" runat="server" Text="Username" Height="10px"></asp:Label>
            </td>
            <td style="width: 150px; height: 56px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox10" style="padding:5px 10px;" runat="server"></asp:TextBox>
&nbsp; </td>
            <td style="width: 132px; height: 56px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox10" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 6px">
                <asp:Label ID="Label13" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="width: 262px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox11" style="padding:5px 10px;" runat="server" TextMode="Password"></asp:TextBox>
            </td>
            <td style="width: 132px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox11" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 6px">&nbsp;</td>
            <td style="width: 262px">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </td>
            <td style="width: 132px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 6px">&nbsp;</td>
            <td style="width: 262px">
                <asp:Button ID="Button1"  style="border:none;background-color:black;color:white;padding:10px 30px;" runat="server" Text="Login"  OnClick="Button1_Click" CssClass="button1"  />
              
            </td>
            <td style="width: 132px">
                <asp:Label ID="Label14" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 6px">&nbsp;</td>
            <td style="width: 262px">&nbsp;</td>
            <td style="width: 132px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;</td>
            <td style="width: 132px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/userreg.aspx">New User?  Register here</asp:HyperLink>
                &nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td style="width: 132px">
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
