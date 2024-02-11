<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Userpage.aspx.cs" Inherits="Ladyla_Accesories.Userpage" %>




<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ladyla</title>
    

    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <!-- css -->
    <link rel="stylesheet" href="userpage.css">


    <!-- font awesome icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
    

   <%--  <%-- <form id="form1" runat="server">--%>
       <%-- <div>
            <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
            </asp:ContentPlaceHolder>
        </div>--%>
    <%--</form>--%>
    <!-- Nav bar -->
    <nav class="navbar">
        <div class="logo">
            <img src="images/Logo.jpg" width="90px" height="90px">
            <div class="name">
                <h1>Ladyla</h1>
                <p>Timeless Beauty Defined</p>
            </div>
        </div>

        <div class="subheading">
            <ul class="navbarlist">
                <li><a href="">Home</a></li>
                <li><a href="">Collections</a>
                    <ul class="submenu">
                        <li><a href=>Rings</a></li>
                        <li><a href=>Chains</a></li>
                        <li><a href=>Earrings</a></li>
                        <li><a href=>Bracelets</a></li>
                        <li><a href=>Bangles </a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="">cart<i class="fa-solid fa-cart-shopping"></i></a></li>
            </ul>
        </div>
    </nav>

    <!-- main body -->

    <div class="main-box">
        <div class="box1">
            <img src="images/Bracelets.jpeg">
            <span class="innerbigbox">
                <h1>Bracelets</h1>
                <p>Elegant,Stainless steel,Anti Tarnish</p>
                <button>Discover More</button>
            </span>
        </div>
        <div class="box2">
            <div class="box2-1">
                <div><img src="images/Bangles (1).jpeg">
                    <span class="innerbox">
                        <h1>Bangles</h1>
                        <p>Elegant,Stainless steel,Anti Tarnish</p>
                        <button>Discover More</button>
                    </span>
                </div>
                <div><img src="images/Chains.jpeg">
                    <span class="innerbox">
                        <h1>Chains</h1>
                        <p>Elegant,Stainless steel,Anti Tarnish</p>
                        <button>Discover More</button>
                    </span>
                </div>
            </div>
            <div class="box2-2">
                <div>
                    <img src="images/Rings.jpeg">
                    <span class="innerbox">
                        <h1>Rings</h1>
                        <p>Elegant,Stainless steel,Anti Tarnish</p>
                        <button>Discover More</button>
                    </span>
                </div>
                <div><img src="images/Earrings.jpeg">
                    <span class="innerbox">
                        <h1>Earrings</h1>
                        <p>Elegant,Stainless steel,Anti Tarnish</p>
                        <button>Discover More</button>
                    </span>
                </div>
            </div>
        </div>
    </div>

    <!-- Latest Collection -->
    <div class="latest">
        <div class="latest-collection">
            <div class="latest-title">
                <h1>Latest Chain</h1>
                <p>Elevate your style with our minimal yet elegant chains</p>
            </div>
            <div class="latest-images">
                <div class="latest-image">
                    <img src="images/chain1.jpeg" alt="" width="">
                    <p>Minimal stone chain</p>
                    <h2>$18</h2>
                </div>
                <div class="latest-image">
                    <img src="images/chain2.jpeg" alt="" width="">
                    <p>2 in 1 clover chain</p>
                    <h2>$25</h2>
                </div>
                <div class="latest-image">
                    <img src="images/chain3.jpeg" alt="" width="">
                    <p>Classic Emerald green collection</p>
                    <h2>$30</h2>
                </div>
                <div class="latest-image4">
                        <img src="images/chain4.jpeg" alt="" width="">
                        <a class="show-button" href="">Show More</a>
                        <p>Explore More Collection</p>
                    <span class="showmore">
                    <h1>Show More</h1>
                    </span>
                    
                </div>
            </div>
        </div>
        <div class="latest-collection">
            <div class="latest-title">
                <h1>Latest Rings</h1>
                <p>Elevate your style with our minimal yet elegant Rings</p>
            </div>
            <div class="latest-images">
                <div class="latest-image">
                    <img src="images/ring1.jpeg" alt="" width="">
                    <p>Minimal stone chain</p>
                    <h2>$18</h2>
                </div>
                <div class="latest-image">
                    <img src="images/ring2.jpeg" alt="" width="">
                    <p>2 in 1 clover chain</p>
                    <h2>$25</h2>
                </div>
                <div class="latest-image">
                    <img src="images/ring3.jpeg" alt="" width="">
                    <p>Classic Emerald green collection</p>
                    <h2>$30</h2>
                </div>
                <div class="latest-image4">
                        <img src="images/ring4.jpeg" alt="" width="">
                        <a class="show-button" href="">Show More</a>
                    <span class="showmore">
                    <h1>Show More</h1>
                    </span>
                    <p>Explore More Collection</p>
                </div>
            </div>
        </div>
        <div class="latest-collection">
            <div class="latest-title">
                <h1>Latest Bracelets</h1>
                <p>Elevate your style with our minimal yet elegant Bracelets</p>
            </div>
            <div class="latest-images">
                <div class="latest-image">
                    <img src="images/bracelet1.jpeg" alt="" width="">
                    <p>Minimal stone chain</p>
                    <h2>$18</h2>
                </div>
                <div class="latest-image">
                    <img src="images/bracelet2.jpeg" alt="" width="">
                    <p>2 in 1 clover chain</p>
                    <h2>$25</h2>
                </div>
                <div class="latest-image">
                    <img src="images/bracelet3.jpeg" alt="" width="">
                    <p>Classic Emerald green collection</p>
                    <h2>$30</h2>
                </div>
                <div class="latest-image4">
                        <img src="images/bracelet4.jpeg" alt="" width="">
                        <a class="show-button" href="">Show More</a>
                    <span class="showmore">
                    <h1>Show More</h1>
                    </span>
                    <p>Explore More Collection</p>
                </div>
            </div>
        </div>
        <div class="latest-collection">
            <div class="latest-title">
                <h1>Latest Earrings</h1>
                <p>Elevate your style with our minimal yet elegant Earrings</p>
            </div>
            <div class="latest-images">
                <div class="latest-image">
                    <img src="images/earring1.jpeg" alt="" width="">
                    <p>Minimal stone chain</p>
                    <h2>$18</h2>
                </div>
                <div class="latest-image">
                    <img src="images/earring2.jpeg" alt="" width="">
                    <p>2 in 1 clover chain</p>
                    <h2>$25</h2>
                </div>
                <div class="latest-image">
                    <img src="images/earring3.jpeg" alt="" width="">
                    <p>Classic Emerald green collection</p>
                    <h2>$30</h2>
                </div>
                <div class="latest-image4">
                        <img src="images/earring4.jpeg" alt="" width="">
                        <a class="show-button" href="">Show More</a>
                    <span class="showmore">
                    <h1>Show More</h1>
                    </span>
                    <p>Explore More Collection</p>
                </div>
            </div>
        </div>
         <div class="latest-collection">
            <div class="latest-title">
                <h1>Latest Bangles</h1>
                <p>Elevate your style with our minimal yet elegant Bangles</p>
            </div>
            <div class="latest-images">
                <div class="latest-image">
                    <img src="images/bangle1.jpeg" alt="" width="">
                    <p>Minimal stone chain</p>
                    <h2>$18</h2>
                </div>
                <div class="latest-image">
                    <img src="images/bangle2.jpeg" alt="" width="">
                    <p>2 in 1 clover chain</p>
                    <h2>$25</h2>
                </div>
                <div class="latest-image">
                    <img src="images/bangle3.jpeg" alt="" width="">
                    <p>Classic Emerald green collection</p>
                    <h2>$30</h2>
                </div>
                <div class="latest-image4">
                        <img src="images/bangle4.jpeg" alt="" width="">
                        <a class="show-button" href="">Show More</a>
                    <span class="showmore">
                    <h1>Show More</h1>
                    </span>
                    <p>Explore More Collection</p>
                </div>
            </div>
        </div>
    </div>
   
    <!-- -----------footer------------ -->

    <div class="footer">
        <div class="footer-contents">
            <div class="footer-logo">
                <img src="images/Logo.jpg" alt="" width="100px" height="100px">
                <h1>Ladyla</h1>
            </div>
            <div class="footer-email">
                <input type="text" class="mail-box" placeholder="Enter your email here.." id="">
                <span class="subscribe-btn"><a href="">SUBSCRIBE</a></span>
            </div>
            <div class="footer-menu">
                <a href="">Home</a>
                <a href="">Latest Collection</a>
                <a href="">Contact Us <i class="fa-brands fa-instagram"></i></i></a>
                <a href="">About Us</a>
            </div>
            <div class="footer-contacts"></div>

        </div>
    </div>
   
</body>
 
</html>

