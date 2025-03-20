<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome Page</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom CSS */
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }

        .hero-section {
            background: url('https://via.placeholder.com/1500x800') no-repeat center center;
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: black;
        }

        .hero-text {
            text-align: center;
        }

        .hero-text h1 {
            font-size: 4rem;
            font-weight: bold;
        }

        .hero-text p {
            font-size: 1.25rem;
        }

        .btn-custom {
            background-color: #007bff;
            color: white;
            font-size: 1.2rem;
            padding: 10px 20px;
            border-radius: 5px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }

        .btn-custom:hover {
            background-color: #0056b3;
        }

        .section {
            padding: 60px 0;
        }

        .card-img-top {
            border-radius: 10px;
        }

        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .nav{
        padding-top:50px;
        padding-left:15%;
        }
        td{
        padding:20px;
        }
    </style>
</head>

<body>
<div class="nav">
<CENTER><table>
<tr>
<td><a href="home" class="btn btn-warning">HOME</a></td><td><a href="ADMINLOGIN" class="btn btn-warning">ADMIN LOGIN</a></td><td><a href="ALUMINILOGIN" class="btn btn-warning">ALUMINI LOGIN</a></td><td><a href="ALUMINIREG" class="btn btn-warning">NEW ALUMINI</a></td><td><a href="stuLogin" class="btn btn-warning">STUDENT LOGIN</a></td><td><a href="STUDENTREG" class="btn btn-warning">NEW STUDENT</a></td>
</tr>
</table></CENTER></div>
    
    <div class="hero-section">
        <div class="hero-text">
            <h1>Welcome to Our Site Discussion Forum</h1>
            <p>Your adventure starts here</p>
            <a href="#about" class="btn btn-custom">Learn More</a>
        </div>
    </div>

   
    <div id="about" class="container section">
        <div class="row text-center">
            <div class="col-md-4">
                <div class="card">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ75opUSPeJTdou0uawBp2vinwmE_wu6A1YCQ&s" height="120px">
                    <div class="card-body">
                        <h5 class="card-title">Our Mission</h5>
                        <p class="card-text">We are committed to delivering the best experiences to our users.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="https://s8968.pcdn.co/crn/wp-content/uploads/sites/7/2015/06/Great_Innovative_Ideas_600x200.jpg">
                    <div class="card-body">
                        <h5 class="card-title">Innovative Ideas</h5>
                        <p class="card-text">We bring new and creative solutions to every challenge.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <img src="data:image/jpeg;base64,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" height="120px">
                    <div class="card-body">
                        <h5 class="card-title">Join Us</h5>
                        <p class="card-text">Become part of a community that values collaboration and growth.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <footer class="text-center py-4">
        <p>&copy; 2025 Your Website Name. All Rights Reserved.</p>
    </footer>

    
   
</body>

</html>
