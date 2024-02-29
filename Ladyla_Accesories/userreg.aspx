<%@ Page Title="" Language="C#" MasterPageFile="~/Registrations.Master" AutoEventWireup="true" CodeBehind="userreg.aspx.cs" Inherits="Ladyla_Accesories.userreg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <table class="w-100" style="width: 90%">
    <tr>
        <td style="width: 264px">
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </td>
        <td style="width: 681px">
            <h1 class="heading">USER REGISTRATION</h1></td>
    </tr>
    <tr>
        <td style="width: 264px">
            <asp:Label ID="Label1" runat="server" Text="Name" ForeColor="Black"></asp:Label>
        </td>
        <td style="width: 681px">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 264px">
            <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
        </td>
        <td style="width: 681px">
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="*Age must be above 16" ForeColor="Red" MaximumValue="100" MinimumValue="16" Type="Integer"></asp:RangeValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 42px; width: 264px;">
            <asp:Label ID="Label3" runat="server" Text="Address" BackColor="White"></asp:Label>
        </td>
        <td style="height: 42px; width: 681px;">
            <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 264px">
            <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
        </td>
        <td style="width: 681px">
            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 264px">
            <asp:Label ID="Label5" runat="server" Text="Pincode"></asp:Label>
        </td>
        <td style="width: 681px">
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="*Invalid pincode" ForeColor="Red" ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 264px">
            <asp:Label ID="Label7" runat="server" Text="State"></asp:Label>
            <br />
            <asp:Label ID="Label6" runat="server" Text="District"></asp:Label>
        </td>
        <td style="width: 681px">
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <table class="w-100">
                        <tr>
                            <td>
                                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:DropDownList ID="DropDownList3" runat="server">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                    </table>
                </ContentTemplate>
            </asp:UpdatePanel>
        </td>
    </tr>
    <tr>
        <td style="width: 264px">
            <asp:Label ID="Label8" runat="server" Text="Phone"></asp:Label>
        </td>
        <td style="width: 681px">
            <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="*Invalid number" ForeColor="Red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 26px; width: 264px;">
            <asp:Label ID="Label9" runat="server" Text="Email"></asp:Label>
        </td>
        <td style="height: 26px; width: 681px;">
            <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox7" ErrorMessage="*Invalid email" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 264px">
            <asp:Label ID="Label10" runat="server" Text="Password"></asp:Label>
        </td>
        <td style="width: 681px">
            <asp:TextBox ID="TextBox8" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="height: 26px; width: 264px;">
            <asp:Label ID="Label11" runat="server" Text="Confirm password"></asp:Label>
        </td>
        <td style="height: 26px; width: 681px;">
            <asp:TextBox ID="TextBox9" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="TextBox1" ErrorMessage="*Required" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox8" ErrorMessage="*does not match" ForeColor="Red"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td style="width: 264px">&nbsp;</td>
        <td style="width: 681px">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="width: 264px">&nbsp;</td>
        <td style="width: 681px">
           <asp:Button ID="Button1" CssClass="reg-button" style="border:none;background-color:black;color:white;padding:10px 30px;"  runat="server" Text="Register" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td style="width: 264px">&nbsp;</td>
        <td style="width: 681px">&nbsp;</td>
    </tr>
</table>
</asp:Content>
