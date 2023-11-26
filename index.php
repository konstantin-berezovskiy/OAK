<?php include("includes/a_config.php");?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>OAK</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@48,400,0,0">
    <link rel="stylesheet" href="style.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdnjs.com/libraries/font-awesome/4.7.0">
    <script src="script.js" defer></script>
</head>
<body>

<?php include("includes/design-top.php");?>
<?php include("includes/navigation.php");?>

 <header>
        <nav class="navbar">
            <span class="hamburger-btn material-symbols-rounded">menu</span>
            <a href="#" class="logo">
                <img src="logo.png" alt="logo">
                <h2>OAK</h2>
            </a>
            <ul class="links">
                <span class="close-btn material-symbols-rounded">close</span>
                <li><a href="about.html">About</a></li>
                <li><a href="events.htm">Events</a></li>
                <li><a href="#">Alpine school</a></li>
                <li><a href="#">Reports</a></li>
            </ul>
            <button class="login-btn">PRIJAVA</button>
		<!-- <button onclick="AuthenticationForm()">prijava</button> -->
        </nav>
    </header>

    <div class="blur-bg-overlay"></div>
	
	<!-- login popup -->
        <div class="form-popup">
        <span class="close-btn material-symbols-rounded">close</span>
        <div class="form-box login">
            
            <div class="form-content">
                <h2>PRIJAVA</h2>
                <form action="#">
                    <div class="input-field">
                        <input type="text" required>
                        <label>Username</label>
                    </div>
                    <div class="input-field">
                        <input type="password" required>
                        <label>Geslo</label>
                    </div>
                    <a href="#" class="forgot-pass-link">Forgot password?</a>
                    <button type="submit">Log In</button>
                </form>
                <div class="bottom-link">
                    Don't have an account?
                    <a href="#" id="signup-link">Registracija</a>
                </div>
            </div>
        </div>
        <div class="form-box signup">
           
            <div class="form-content">
                <h2>Registracija</h2>
                <form action="#">
                    <div class="input-field">
                        <input type="text" required>
                        <label>Enter your email</label>
                    </div>
                    <div class="input-field">
                        <input type="password" required>
                        <label>Create password</label>
                    </div>
		<!-- not sure if we will need it -->	
                    <div class="policy-text">
                        <input type="checkbox" id="policy">
                        <label for="policy">
                            I agree the
                            <a href="#" class="option">Terms & Conditions</a>
                        </label>
                    </div>
                    <button type="submit">Sign Up</button>
                </form>
                <div class="bottom-link">
                    Already have an account? 
                    <a href="#" id="login-link">Login</a>
                </div>
            </div>
        </div>
    </div>
	
	<!-- main section -->
    <div class="row">
        <div class="col">
            <h1>Obalni Alpinistični Klub</h1>
            <p>
                fjfkfjfk
            </p>
            
        </div>
        <div class="col">
            <div class="card">
                <h5>Latest events</h5>
                <p>hkhkhkhkjh</p>
            </div>

        </div>
    </div>
	
	<!-- links below the page --> 
    <div class="links">
        <h3>Useful links:</h3>
        <div class="row2">
            <div class="weather">
                <h4>Weather</h4>
                
            </div>
            <div class="fb">
                
            </div>


            </div>

    </div>
    <script src="script.js"></script>
<script>
	function AuthenticationForm() {
  		document.getElementById("demo").innerHTML = "Hello World";
	}
</script>
</body>
</html>
