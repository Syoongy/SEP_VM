<%@page import="java.net.URLEncoder"%>
<%@page import="EntityManager.MemberEntity"%>
<%String URLprefix = (String) session.getAttribute("URLprefix");
    if (URLprefix == null) {
        URLprefix = "";
    }%>
<header id="header">
    <div class="container">
        <h1 class="logo">
            <a href="index.jsp">
                <img alt="Island Furniture" width="180" height="80" data-sticky-width="82" data-sticky-height="40" src="../img/logo.png">
            </a>
        </h1>
        <%
            MemberEntity member = (MemberEntity) (session.getAttribute("member"));
            if (member == null) {
        %>
        <nav>
            <ul class="nav nav-pills nav-top">
                <li>
                    <a href="memberLogin.jsp"><i class="icon icon-unlock-alt"></i>Login/Register</a>
                </li>
                <li>
                    <a href="contactUs.jsp"><i class="icon icon-shopping-cart"></i>Contact Us</a>
                </li>
            </ul>
            <button class="btn btn-responsive-nav btn-inverse" data-toggle="collapse" data-target=".nav-main-collapse">
                <i class="icon icon-bars"></i>
            </button>
        </nav>
        <%
        } else {
        %>
        <nav>
            <ul class="nav nav-pills nav-top">
                <% if (member.getName() != null && member.getName() != "") {%>
                <li>
                    <a>Welcome <%=member.getName()%>!</a>
                </li>
                <%}%>
                <li>
                    <!--###-->
                    <a href="shoppingCart.jsp"><i class="icon icon-shopping-cart"></i>Shopping Cart</a>
                </li>
                <li>
                    <a href="../B/<%=URLprefix%>memberProfile.jsp"><i class="icon icon-user"></i>Profile</a>
                </li>
                <li>
                    <a href="contactUs.jsp"><i class="icon icon-shopping-cart"></i>Contact Us</a>
                </li>
                <li>
                    <a href="../ECommerce_LogoutServlet"><i class="icon icon-unlock-alt"></i>Logout</a>
                </li>
            </ul>
            <button class="btn btn-responsive-nav btn-inverse" data-toggle="collapse" data-target=".nav-main-collapse">
                <i class="icon icon-bars"></i>
            </button>
        </nav>
        <%}%>
    </div>
    <div class="navbar-collapse nav-main-collapse collapse">
        <div class="container">
            <nav class="nav-main mega-menu">
                <ul class="nav nav-pills nav-main" id="mainMenu">
                    <li class="dropdown">
                        <a href="../ECommerce_AllFurnituresServlet">Furnitures</a>
                    </li>
                    <li>
                        <a href="../ECommerce_AllRetailProductsServlet">Retail Products</a>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" href="#">
                            All Departments
                            <i class="icon icon-angle-down"></i>
                        </a>
                        <ul class="dropdown-menu">
                            <li><a href="../ECommerce_FurnitureCategoryServlet?cat=<%=URLEncoder.encode("Tables & Desks")%>"><i class="icon icon-map-marker"></i> Tables & Desk</a></li>
                            <li><a href="../ECommerce_FurnitureCategoryServlet?cat=<%=URLEncoder.encode("Bathroom")%>"><i class="icon icon-map-marker"></i> Bathroom</a></li>
                            <li><a href="../ECommerce_FurnitureCategoryServlet?cat=<%=URLEncoder.encode("Beds & Mattresses")%>"><i class="icon icon-map-marker"></i> Beds & Mattresses</a></li>
                            <li><a href="../ECommerce_FurnitureCategoryServlet?cat=<%=URLEncoder.encode("Sofas & Chair")%>"><i class="icon icon-map-marker"></i> Sofas & Chair</a></li>
                            <li><a href="../ECommerce_FurnitureCategoryServlet?cat=<%=URLEncoder.encode("Cabinets & Storage")%>"><i class="icon icon-map-marker"></i> Cabinets & Storage</a></li>
                            <li><a href="../ECommerce_FurnitureCategoryServlet?cat=<%=URLEncoder.encode("Lightings")%>"><i class="icon icon-map-marker"></i> Lightings</a></li>
                            <li><a href="../ECommerce_FurnitureCategoryServlet?cat=<%=URLEncoder.encode("Study")%>"><i class="icon icon-map-marker"></i> Study</a></li>
                            <li><a href="../ECommerce_FurnitureCategoryServlet?cat=<%=URLEncoder.encode("Children")%>"><i class="icon icon-map-marker"></i> Children</a></li>
                            <li><a href="../ECommerce_AllRetailProductsServlet"><i class="icon icon-coffee"></i> Retail Products</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="selectCountry.jsp">Change Country</a>
                    </li>
                </ul>
            </nav>
        </div>
    </div>
</header>