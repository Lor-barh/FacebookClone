<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <title>FACEBOOK - Connect your world</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./font-awesome/css/font-awesome.min.css">

    <link rel="stylesheet" href="./bootstrap/css/bootstrap.min.css">
    <script src="./js/jquery-2.2.4.min.js"></script>
    <script src="./bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="./css/main.css">
</head>

<body>
<nav class="container-fluid" id="main-nav-login">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <a href="login.jsp" id="logo-large">FACEBOOK</a>
            </div>
            <div class="col-md-6">
                <form action="home.jsp" method="post" class="login-form-top">
                    <div class="login-form-input">
                        <label>Email or phone</label>
                        <input type="text" name="user-login-id"/>
                    </div>
                    <div class="login-form-input">
                        <label>Password</label>
                        <input type="password" name="user-login-password"/>
                        <button type="button" id="btn-login">Login</button>
                        <a href="/">Forgotten password?</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
</nav>

<section class="container-fluid" id="body-register-form">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h3>FACEBOOK helps you connect and share with the people in your life.</h3>
                <img src="./img/user-map.png">
            </div>
            <div class="col-md-6">
                <h3>Create an account</h3>
                <p>It's free and always will be.</p>
                <form action="./sign-up" method="post" class="register-form">

                    <div class="reg-input" id="full_name">
                        <input type="text" name="full_name" placeholder="full_name">
                    </div>
                    <div class="reg-input" id="email">
                        <input type="text" name="email" placeholder="Email address">
                    </div>
                    <div class="reg-input" id="password">
                        <input type="password" name="password" placeholder="New password">
                    </div>
                    <div class="reg-input" id="address">
                        <input type="text" name="address" placeholder="Address">
                    </div>
                    <div class="reg-input" id="city">
                        <input type="text" name="city" placeholder="City">
                    </div>
                    <div class="reg-input" id="phone_number">
                        <input type="text" name="phone_number" placeholder="Phone Number">
                    </div>
                    <label style="display:block;">Registration Date</label>
                    <div class="reg-input" id="register_date">
                        <input type="datetime-local" name="register_date" placeholder="Registration Date">
                    </div>
                    <label style="display:block;">Birthday</label>
                    <div class="reg-input" id="birthday">
                        <input type="date" name="birthday">
                    </div>
                    <%--                        <div class="reg-input">--%>
                    <%--                            <select id="days">--%>
                    <%--                                <option>Day</option>--%>
                    <%--                            </select>--%>
                    <%--                            <select id="months">--%>
                    <%--                                <option>Month</option>--%>
                    <%--                            </select>--%>
                    <%--                            <select id="years">--%>
                    <%--                                <option>Year</option>--%>
                    <%--                            </select>--%>
                    <%--                        </div>--%>
                    <div class="reg-input">
                        <input type="radio" checked name="sex" value="female"><label>Female</label>
                        <input type="radio" name="sex" value="male"><label>Male</label>
                    </div>
                    <p class="help-block">
                        By clicking Create an account, you agree to our Terms and that you have read our Data Policy,
                        including our Cookie Use.
                    </p>
                    <button type="submit" id="reg-button">Create an account</button>
                    <a href="login.jsp">Have account? login here</a>
                </form>
            </div>
        </div>
    </div>
</section>

<footer class="container">
    <ul id="lans">
        <li>English (UK)</li>
        <li>
            <a href="#">Tiếng việt</a>
        </li>
        <li>
            <a href="#">中文(台灣)</a>
        </li>
        <li>
            <a href="#">한국어</a>
        </li>
        <li>
            <a href="#">日本語</a>
        </li>
        <li>
            <a href="#">Français (France)</a>
        </li>
        <li>
            <a href="#">ภาษาไทย</a>
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
        <li><a href="/">Sign Up</a></li>
        <li>
            <a href="#">Log In</a>
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
    CBOOKSOCIAL &copy; 2016
</footer>

<script src="./js/app.js"></script>

<script>
    $(function () {
        for (var i = 1; i <= 31; i++) {
            $("#days").append("<option>" + i + "</option>");
        }

        for (var i = 1; i <= 12; i++) {
            $("#months").append("<option>" + i + "</option>");
        }

        for (var i = 2016; i >= 1905; i--) {
            $("#years").append("<option>" + i + "</option>");
        }
    });
</script>
</body>

</html>
