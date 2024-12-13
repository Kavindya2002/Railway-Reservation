<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="styles/signup.css">

<script>
    function redirectWithAnimation(event) {
        event.preventDefault(); // Prevent default behavior of anchor tag
        var loginButton = document.getElementById('loginButton');
        loginButton.style.animation = 'fadeOut 0.5s ease forwards'; // Apply animation
        setTimeout(function () {
            window.location.href = 'login.jsp'; // Redirect after animation completes
        }, 500);
    }
</script>



<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>

<div class="register">
  <form action="register" method="post">
    <h1>Register</h1>
    <div class="row">
      <div class="input-box">
        <input type="text" name="firstName" placeholder="First Name">
      </div>
      <div class="input-box">
        <input type="text" name="lastName" placeholder="Last Name">
      </div>
    </div>
    <div class="row">
      <div class="input-box">
        <input type="text" name="username" placeholder="Username">
      </div>
      <div class="input-box">
        <input type="email" name="email" placeholder="Email">
      </div>
    </div>
    <div class="row">
      <div class="input-box">
        <input type="text" name="address" placeholder="Address">
      </div>
      <div class="input-box">
        <input type="tel" name="mobileNumber" placeholder="Mobile Number">
      </div>
    </div>
    <div class="row">
      <div class="input-box">
        <input type="password" name="password" placeholder="Password">

      </div>
      <div class="input-box">
        <input type="password" name="confirmPassword" placeholder="Confirm Password">

      </div>
    </div>
    <button type="submit" class="btn">Register</button>
  </form>
  <div class="login-link">
    <h3 class ="p1">If you have an account,</h3> <a href="login.jsp" onclick="redirectWithAnimation(event)"><button class="btn" id="loginButton">Login</button></a>
  </div>

</div>

</body>
</html>
