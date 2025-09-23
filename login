<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login & Register</title>
  <style>
    body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #74ebd5, #9face6);
      height: 100vh;
      display: flex;
      justify-content: center;
      align-items: center;
    }
    .container {
      background: #fff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0px 6px 15px rgba(0,0,0,0.2);
      width: 320px;
      text-align: center;
    }
    h2 {
      margin-bottom: 20px;
      color: #333;
    }
    input {
      width: 100%;
      padding: 10px;
      margin: 10px 0;
      border: 1px solid #ccc;
      border-radius: 8px;
      outline: none;
      font-size: 14px;
    }
    input:focus {
      border-color: #6a11cb;
    }
    button {
      width: 100%;
      padding: 10px;
      background: #6a11cb;
      color: #fff;
      border: none;
      border-radius: 8px;
      font-size: 16px;
      cursor: pointer;
      transition: background 0.3s ease;
    }
    button:hover {
      background: #2575fc;
    }
    p {
      margin-top: 15px;
      font-size: 14px;
    }
    a {
      color: #6a11cb;
      text-decoration: none;
      cursor: pointer;
    }
    a:hover {
      text-decoration: underline;
    }
    .hidden {
      display: none;
    }
  </style>
</head>
<body>
  <div class="container">
    <!-- Login Form -->
    <div id="login-form">
      <h2>Login</h2>
      <form>
        <input type="text" placeholder="Username" required>
        <input type="password" placeholder="Password" required>
        <button type="submit">Login</button>
      </form>
      <p>Don't have an account? <a onclick="toggleForm('register')">Sign Up</a></p>
    </div>

    <!-- Register Form -->
    <div id="register-form" class="hidden">
      <h2>Register</h2>
      <form>
        <input type="text" placeholder="Username" required>
        <input type="email" placeholder="Email" required>
        <input type="password" placeholder="Password" required>
        <input type="password" placeholder="Confirm Password" required>
        <button type="submit">Register</button>
      </form>
      <p>Already have an account? <a onclick="toggleForm('login')">Login</a></p>
    </div>
  </div>

  <script>
    function toggleForm(form) {
      if (form === 'register') {
        document.getElementById('login-form').classList.add('hidden');
        document.getElementById('register-form').classList.remove('hidden');
      } else {
        document.getElementById('register-form').classList.add('hidden');
        document.getElementById('login-form').classList.remove('hidden');
      }
    }
  </script>
</body>
</html>
