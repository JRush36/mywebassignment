<?php
include 'db_connect.php';

// Read the 'team' parameter from the URL //
$team_slug = isset($_GET['team']) ? trim($_GET['team']) : '';

// If no team slug was provided in the URL //
if (empty($team_slug)) {
    die("<h2 style='color:red; text-align:center;'>Team not found!</h2>");
}

$team_slug = $conn->real_escape_string($team_slug);
$result = $conn->query("SELECT * FROM teams WHERE slug = '$team_slug'");

$row = $result->fetch_assoc();

// If no matching team was found //
if (!$row) {
    die("<h2 style='color:red; text-align:center;'>Team not found!</h2>");
}
?>

<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- // Dynamically set the page title to the team's name //   -->
    <title><?php echo htmlspecialchars($row['name']); ?> - F1 2026</title>

    <style>
        * {
            /* Makes width/padding easier to manage across all elements */
            box-sizing: border-box;         
        }

        h1 {
            font-family: Arial, sans-serif;
            background: #000000;            
            margin: 0;
            color: white; 
            text-align:center;
            padding: 20px 0;                      
        }

        body {
            font-family: Arial, sans-serif;
            background: #ffffff;            
            margin: 0;                      
        }

        /* Nav Bar */
        nav {
            padding: 10px 0;                    
            background-color: rgb(0, 0, 0); 
            text-align: center;
        }

        nav ul {
            padding: 0;                         
            margin: 0;                          
            list-style: none;     
            /* Make list items horizontal */              
            display: flex;                      
            justify-content: center;           
            /* Allow items to wrap on very small screens */
            flex-wrap: wrap;                    
        }

        nav a {
            color: white;            
            /* Remove underline */           
            text-decoration: none;              
            font-weight: bold;                  
            padding: 8px 16px;                  
        }

        nav a:hover {
            /* red when mouse hovers over each link */
            background-color: rgb(155, 0, 0); 
        }

        /* Banner */
        .banner {
            /* Allows absolute positioning of child elements */
            position: relative;                 
            height: 380px;                      
            /* Black to red gradient background for the banner */
            background: linear-gradient(#111, #ff0000); 
            /* Space before main content starts */
            margin-bottom: 40px;    
            /* Hides anything that goes outside the banner area */            
            overflow: hidden;                   
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }

        .team-logo {
            /* Position relative to banner */
            position: absolute;                 
            top: 30px;                          
            left: 1.5%;                           
            max-width: 130px;
            max-height: 110px;         
            /* Ensure it appears above the car image */              
            z-index: 2;                         
        }

        .team-name {
            /* Position relative to banner */
            position: absolute;                 
            top: 30px;                          
            left: 4.5%;                           
            color: white;
            font-family: 'verdana', sans-serif;
            font-size: 2.5em;
            font-weight: bold;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.7);
            z-index: 2;                         
        }

        .car-container {
            position: absolute;                 
            bottom: 40px;                       
            left: 0;                            
            width: 100%;                        
        }

        .car {
            width: 90%;                         
            max-width: 720px;                   
            /* Shift car slightly to the right for better composition */
            transform: translateX(6.5%);          
        }

        .content-wrapper {
            max-width: 1100px;             
            /* Left margin creates space from the edge of the screen, no right margin to keep content left-aligned */     
            margin: 0 0 40px 40px;              
            padding: 0 20px;     
            background: #f9f9f9;               
        }

        .team-profile-layout {
            /* Use flexbox for side-by-side layout */
            display: flex;                      
            /* Space between photo and info columns */
            gap: 50px;                          
            /* Stack vertically on small screens */
            flex-wrap: wrap;                    
            /* Align items to the left */
            justify-content: flex-start;        
            /* Align tops of columns */
            align-items: flex-start;            
        }

        .info-column {
            /* Take all remaining horizontal space */
            flex: 1;                            
            min-width: 380px;                   
            display: flex;
            /* Stack cards vertically */
            flex-direction: column;             
            gap: 25px;                          
        }

        .info-card {
            background: white;                  
            padding: 25px;                      
            /* Rounded corners */
            border-radius: 12px;                
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }

        .info-card h2 {
            /* Space below card title */
            margin: 0 0 18px 0;                 
        }

        table {
            width: 100%;
            /* Remove gaps between cells */                        
            border-collapse: collapse;          
        }

        th, td {
            padding: 12px;                      
            text-align: left;                   
            /* Light gray horizontal lines */
            border-bottom: 1px solid #ddd;      
        }

        th {
            /* Slightly darker background for header cells */
            background: #eee;                   
        }

    </style>
</head>
<body>

<!-- Page title with team name --> 
<h1 style="color:white; text-align:center; background-color: rgb(0, 0, 0); padding: 20px 0;">
    <?php echo htmlspecialchars($row['name']); ?> </h1>

<!-- Nav menu -->
<nav>
    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="drivers.php">Drivers</a></li>
        <li><a href="teams.php">Teams</a></li>
        <li><a href="tracks.php">Tracks</a></li>
    </ul>
</nav>

<!-- Banner graphics -->
<div class="banner">
    <!-- Team logo graphic positioned in the top-left corner of the banner -->
    <img src="images/teams/<?php echo htmlspecialchars($row['team_logo']); ?>"
         class="team-logo"
         alt="Team logo">

    <!-- Team name text positioned to the right of the logo -->
    <div class="team-name">
        <?php echo htmlspecialchars($row['name']); ?>
    </div>

    <!-- Car image positioned at the bottom of the banner-->
    <div class="car-container">
        <img src="images/cars/<?php echo htmlspecialchars($row['car_image']); ?>"
             class="car"
             alt="F1 Car">
    </div>
</div>

<!-- Main content -->
<div class="content-wrapper">
    <div class="team-profile-layout">

        <!-- Right column: two stacked info cards -->
        <div class="info-column">

            <div class="info-card">
                <h2>Achievements</h2>
                <table>
                    <tr><th>Wins</th><td><?php echo htmlspecialchars($row['wins']); ?></td></tr>
                    <tr><th>Constructor Titles</th><td><?php echo htmlspecialchars($row['constructor_titles']); ?></td></tr>
                </table>
            </div>

            <div class="info-card">
                <h2>Personnel</h2> 
                <table>
                    <tr><th>Team Principal</th><td><?php echo htmlspecialchars($row['team_principal']); ?></td></tr>
                    <tr><th>Driver 1</th><td><?php echo htmlspecialchars($row['driver_1']); ?></td></tr>
                    <tr><th>Driver 2</th><td><?php echo htmlspecialchars($row['driver_2']); ?></td></tr>
                </table>
            </div>

            <div class="info-card">
                <h2>Team Information</h2>
                <table>
                    <tr><th>Name</th><td><?php echo htmlspecialchars($row['name']); ?></td></tr>
                    <tr><th>Country</th><td><?php echo htmlspecialchars($row['country']); ?></td></tr>
                    <tr><th>Headquarters</th><td><?php echo htmlspecialchars($row['headquarters']); ?></td></tr>
                    <tr><th>Chassis</th><td><?php echo htmlspecialchars($row['chassis']); ?></td></tr>
                    <tr><th>Power Unit</th><td><?php echo htmlspecialchars($row['power_unit']); ?></td></tr>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>

<?php
$conn->close();
?>