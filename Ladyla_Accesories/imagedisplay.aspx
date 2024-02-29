<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="imagedisplay.aspx.cs" Inherits="Ladyla_Accesories.imagedisplay" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <%--<style type="text/css">
        .auto-style1 {
            width: 100%;
        }

    </style>--%>
    <link href="userpage.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
       
        <div >
            <div class="main-box">
                <div class="box1">
                    
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/Bangles (1).jpeg" Height="100%" Width="100%"/>
                        <span class="innerbigbox">
                <h1>Bracelets</h1>
                <p>Elegant,Stainless steel,Anti Tarnish</p>
                <asp:button ID="Button1" runat="server" Text="Discover More" CssClass=" innerbigboxbutton" OnClick="Button1_Click"/>
            </span>
                        
                </div>
                <div class="box2">
                    <div class="box2-1">
                         <div>
                              <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/Rings.jpeg" Height="100%" Width="100%" />
                             <span class="innerbox">
                        <h1>Bangles</h1>
                        <p>Elegant,Stainless steel,Anti Tarnish</p>
                        <asp:button ID="Button2" runat="server" Text="Discover More" CssClass=" innbutton"/>
                    </span>
                        </div>
                         <div>
                             <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/Earrings.jpeg" Height="100%" Width="100%" />
                             <span class="innerbox">
                        <h1>Bangles</h1>
                        <p>Elegant,Stainless steel,Anti Tarnish</p>
                         <asp:button ID="Button3" runat="server" Text="Discover More" CssClass=" innbutton"/>
                    </span>
                        </div>
                       
                        
                    </div>
                    <div class="box2-2">
                        <div>
                            <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/images/Chains.jpeg" Height="100%" Width="100%" />
                             <span class="innerbox">
                        <h1>Bangles</h1>
                        <p>Elegant,Stainless steel,Anti Tarnish</p>
                         <asp:button ID="Button4" runat="server" Text="Discover More" CssClass=" innbutton"/>
                    </span>
                        </div>
                         <div>
                             <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/images/Bracelets.jpeg" Height="100%" Width="100%"/>
                             <span class="innerbox">
                        <h1>Bangles</h1>
                        <p>Elegant,Stainless steel,Anti Tarnish</p>
                         <asp:button ID="Button5" runat="server" Text="Discover More" CssClass=" innbutton"/>
                    </span>
                        </div>
                         
                         
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
