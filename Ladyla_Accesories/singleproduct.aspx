﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="singleproduct.aspx.cs" Inherits="Ladyla_Accesories.singleproduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <!-- Google font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
        rel="stylesheet">

    <!-- css -->
    <link rel="stylesheet" href="userpage.css"/>

    <%-- bootstrap links --%>

     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <!-- font awesome icon -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
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
                <li><a class="collection" href="">Collections</a>
                    <ul class="submenu">
                        <li><a href=>Rings</a></li>
                        <li><a href=>Chains</a></li>
                        <li><a href=>Earrings</a></li>
                        <li><a href=>Bracelets</a></li>
                        <li><a href=>Bangles </a></li>
                    </ul>
                </li>
                <li><a href="Login.aspx">Login</a></li>
                <li><a href="cart.aspx">cart<i class="fa-solid fa-cart-shopping"></i></a></li>
            </ul>
        </div>
    </nav>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>