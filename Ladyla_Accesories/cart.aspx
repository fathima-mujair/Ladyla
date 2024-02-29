<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="Ladyla_Accesories.cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
    <title>Ladyla</title>
   
    <!-- css -->
    <link href="cart.css" rel="stylesheet" />

    </head>
<body>

    <form id="form1" runat="server">
        <div>
            <div class="cart">
                <div class="cart_head">
                   <h1>Your cart is ready</h1>
                 </div>
            <asp:DataList ID="DataList1" runat="server">
                 
                <ItemTemplate>
                   <div class="data">
                        <div class="image">
                             <asp:Image ID="Image1" runat="server" Height="206px" ImageUrl='<%# Eval("image") %>' Width="185px" />
                        </div>
                        <div class="contents">
                                <div class="name">
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("product_name") %>'></asp:Label>
                                </div> 
                         
                                <div class="quantity">
                                    <asp:Label ID="Label2" runat="server" Text="Quantity :"></asp:Label>
                            
                                    <asp:Button ID="Button4" runat="server" CommandArgument='<%# Eval("product_id") %>' OnCommand="Button4_Command1" Text="-" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                            
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("quantity") %>'></asp:Label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button3" runat="server" CommandArgument='<%# Eval("product_id") %>' OnCommand="Button3_Command" Text="+" />
                                </div>
                          
                                <div class="price">
                                    <asp:Label ID="Label3" runat="server" Text="price :"></asp:Label>
                            
                                <asp:Label ID="Label5" runat="server" Text='<%# Eval("total") %>'></asp:Label>
                                    <asp:Label ID="Label8" runat="server" Text="$"></asp:Label>
                                </div>
                                 <asp:Button ID="Button2" runat="server" CommandArgument='<%# Eval("product_id") %>' OnCommand="Button2_Command" Text="Remove" CssClass="remove_btn" />
                         </div>     
                   </div>
                </ItemTemplate>
                     
            </asp:DataList>
                </div>
        </div>
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Total"></asp:Label>
                </td>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Proceed to checkout" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
