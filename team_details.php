<?php
include 'db_connect.php';

// Read the 'team' parameter from the URL //
$team_slug = isset($_GET['name']) ? trim($_GET['name']) : '';

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
    <title><?php echo htmlspecialchars($row['team_name']); ?> - F1 2026</title>

    <style>
        * {
            /* Makes width/padding easier to manage across all elements */
            box-sizing: border-box;         
        }

        body {
            font-family: Arial, sans-serif;
            background: #f0f0f0;            
            margin: 0;                      
            padding: 30px;                  
        }

        /* Nav Bar */
        nav {
            padding: 10px 0;                    
            background-color: rgb(255, 88, 88); 
            text-align: center; 
            /* Space between nav and banner section below */                
            margin-bottom: 30px;                
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
            /* Darker red when mouse hovers over each link */
            background-color: rgb(188, 56, 56); 
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