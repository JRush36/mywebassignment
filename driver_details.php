<?php
include 'db_connect.php';

// Read the 'driver' parameter from the URL //
$driver_slug = isset($_GET['driver']) ? trim($_GET['driver']) : '';

// If no driver slug was provided in the URL //
if (empty($driver_slug)) {
    die("<h2 style='color:red; text-align:center;'>Driver not found!</h2>");
}

$driver_slug = $conn->real_escape_string($driver_slug);
$result = $conn->query("SELECT * FROM drivers WHERE slug = '$driver_slug'");

$row = $result->fetch_assoc();

// If no matching driver was found //
if (!$row) {
    die("<h2 style='color:red; text-align:center;'>Driver not found!</h2>");
}
?>

<!DOCTYPE html> 
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- // Dynamically set the page title to the driver's name //   -->
    <title><?php echo htmlspecialchars($row['name']); ?> - F1 2026</title>

    <style>
        * {
            /* Makes width/padding easier to manage across all elements */
            box-sizing: border-box;         
        }

        body {
            font-family: Arial, sans-serif;
            background: #f0f0f0;            
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

        .driver-number {
            /* Position relative to banner */
            position: absolute;                 
            top: 30px;                          
            left: 1.5%;                           
            max-width: 130px;
            max-height: 110px;         
            /* Ensure it appears above the car image */              
            z-index: 2;                         
        }

        .driver-name {
            /* Position relative to banner */
            position: absolute;                 
            top: 30px;                          
            left: 6.5%;                           
            color: white;
            font-family: 'verdana', sans-serif;
            font-size: 2.5em;
            font-weight: bold;
            font-style: italic;
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
        }

        .driver-profile-layout {
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

        .driver-photo-side {
            /* Fixed width for the photo column */
            flex: 0 0 320px;                    
        }

        .driver-photo {
            width: 100%;                        
            border: 8px solid rgb(255, 0, 0);            
            /* Rounded corners */ 
            border-radius: 15px;                
            box-shadow: 0 10px 25px rgba(0,0,0,0.4); 
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

<!-- Page title with driver name and number --> 
<h1 style="color:black; text-align:center; margin-bottom:10px;">
    <?php echo htmlspecialchars($row['name']); ?> 
    <span style="font-size:0.6em;">#<?php echo $row['driver_no']; ?></span> 
</h1>

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
    <!-- Driver number graphic positioned in the top-left corner of the banner -->
    <img src="images/numbers/<?php echo htmlspecialchars($row['driver_number']); ?>"
         class="driver-number"
         alt="Driver number">

    <!-- Driver name text positioned to the right of the number -->
    <div class="driver-name">
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
    <div class="driver-profile-layout">

        <!-- Left column: large driver photo -->
        <div class="driver-photo-side">
            <img src="images/drivers/<?php echo htmlspecialchars($row['driver_photo']); ?>"
                 class="driver-photo"
                 alt="<?php echo htmlspecialchars($row['name']); ?>">
        </div>

        <!-- Right column: two stacked info cards -->
        <div class="info-column">

            <!-- Personal information card -->
            <div class="info-card">
                <h2>Personal Information</h2>
                <table>
                    <tr><th>Country</th><td><?php echo htmlspecialchars($row['country']); ?></td></tr>
                    <tr><th>Age</th><td><?php echo $row['age']; ?></td></tr>
                    <tr><th>Team</th><td><?php echo htmlspecialchars($row['team']); ?></td></tr>
                </table>
            </div>

            <!-- Career statistics card -->
            <div class="info-card">
                <h2>Career Statistics</h2> 
                <table>
                    <tr><th>Grand Prix Entered</th><td><?php echo number_format($row['grand_prix_entered']); ?></td></tr>
                    <tr><th>Career Points</th><td><?php echo number_format($row['career_points']); ?></td></tr>
                    <tr><th>Wins</th><td><?php echo $row['wins']; ?></td></tr>
                    <tr><th>World Titles</th><td><?php echo $row['world_titles']; ?></td></tr>
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