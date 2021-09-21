<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>FACEBOOK - Connect your world</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./font-awesome/css/font-awesome.min.css">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj"
            crossorigin="anonymous"></script>
    <script src="./js/jquery-2.2.4.min.js"></script>
    <script src="./bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="./css/main.css">
</head>

<body>
<nav class="container-fluid" id="main-nav-login">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <a href="home.jsp" id="logo-large">FACEBOOK</a>
            </div>
        </div>
    </div>
</nav>

<section class="container-fluid" style="background-color: #e9ebee; margin-top:-30px;">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <form action="login" method="post" id="body-login-form">
                    <label>Login to FACEBOOK</label>
                    <input type="email" name="email" placeholder="Email"/>
                    <input type="password" name="password" placeholder="Password"/>
                    <button type="submit" id="btn-login">Login</button>
                    <a href="/">Forgotten password?</a> <br>
                    <a href="register.jsp">Signup for FACEBOOK?</a>
                </form>
            </div>
        </div>
    </div>
</section>

<footer class="container">
    <ul id="lans">
        <li>English (UK)</li>

        <li>
            <a href="#">Français (France)</a>
        </li>

        <li>
            <a href="#">Español</a>
        </li>
        <li>
            <a href="#">Português (Brasil)</a>
        </li>
        <li>
            <a href="#">Deutsch</a>
        </li>
        <li>
            <a href="#">Italiano</a>
        </li>
        <li>+</li>
    </ul>
    <ul id="footer-tools">
        <li><a href="register.jsp">Sign Up</a></li>
        <li>
            <a href="login.jsp">Log In</a>
        </li>
        <li>
            <a href="#">Messenger</a>
        </li>
        <li>
            <a href="#">Facebook Lite</a>
        </li>
        <li>
            <a href="#">Mobile</a>
        </li>
        <li>
            <a href="#">Find Friends</a>
        </li>
        <li>
            <a href="#">Badges</a>
        </li>
        <li>
            <a href="#">People</a>
        </li>
        <li>
            <a href="#">Pages</a>
        </li>
        <li>
            <a href="#">Places</a>
        </li>
        <li>
            <a href="#">Games</a>
        </li>
        <li><a href="/">Locations</a></li>
        <li>
            <a href="#">Celebrities</a>
        </li>
        <li>
            <a href="#">Groups</a>
        </li>
        <li>
            <a href="#">Facebook Lite</a>
        </li>
        <li>
            <a href="#">Mobile</a>
        </li>
        <li>
            <a href="#">Find Friends</a>
        </li>
        <li>
            <a href="#">Badges</a>
        </li>
        <li>
            <a href="#">People</a>
        </li>
        <li>
            <a href="#">Pages</a>
        </li>
        <li>
            <a href="#">Places</a>
        </li>
        <li>
            <a href="#">Games</a>
        </li>
    </ul>
    FACEBOOK &copy; 2016
</footer>
</body>

</html>
