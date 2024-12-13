<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel = "stylesheet" href="styles/loginpage.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
    function redirectWithAnimation(event) {
        event.preventDefault(); // Prevent default behavior of anchor tag
        var loginForm = document.querySelector('.login form');
        loginForm.style.animation = 'fadeOut 0.5s ease forwards'; // Apply animation
        setTimeout(function () {
            window.location.href = 'signUp.jsp'; // Redirect after animation completes
        }, 500);
    }
</script>

</head>
<body>


    <div class="login">
    <form action="loginservlet" method="post">
        <h1>Login</h1>
        <!-- Input fields for username and password -->
        <div class="input-box">
            <input type="text" name="uid" placeholder="Username">
            <i class='bx bx-user'></i>
        </div>
        <div class="input-box">
            <input type="password" name="pass" placeholder="Password">
            <i class='bx bxs-lock' ></i>
        </div>
        <!-- Error message section -->
        <div class="error-message">
            <% String errorMessage = (String)request.getAttribute("errorMessage"); %>
            <% if(errorMessage != null && !errorMessage.isEmpty()) { %>
                <p><%= errorMessage %></p>
            <% } %>
        </div>
        <!-- Remember me checkbox -->
        <div class="remember-forgot">
                    <label><input type="checkbox">remember me</label>
                    <a href="#">forget password</a>

                </div>
        <!-- Login button -->
        <button type="submit" class="btn">Login</button>
        <!-- Register link -->
        <div class="register-link">
            <p>Don't have an account? <a href="signUp.jsp" onclick="redirectWithAnimation(event)">Register</a></p>

        </div>
    </form>
</div>

</body>
</html>