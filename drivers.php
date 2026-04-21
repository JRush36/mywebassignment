<?php
include 'db_connect.php';
/*/ Fetch all drivers from the database, in ascending order /*/
$drivers = $conn->query("SELECT * FROM drivers ORDER BY name ASC"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Drivers - Rush F1</title>
   
    <style>
        /*/ Reset default browser margins and padding /*/
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        /*/ Global body styling /*/
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #0a0a0a;
            color: white;
        }
        /*/ Header styling /*/
        header {
            background: linear-gradient(180deg, #000000, #c00);
            padding: 50px 20px;
            text-align: center;
            box-shadow: 0 8px 30px rgba(255, 0, 0, 0.3);
        }
        header h1 {
            font-size: 3.2rem;
            font-weight: 900;
            text-transform: uppercase;
            letter-spacing: 5px;
            text-shadow: 0 0 20px rgba(255,0,0,0.8);
        }
        /*/ Navigation bar styling /*/
        nav {
            background-color: #000000;
            padding: 15px 0;
            text-align: center;
        }
        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 10px;
        }
        nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 12px 22px;
            border-radius: 6px;
            transition: all 0.3s;
        }
        nav a:hover {
            background-color: #c00;
        }
        /*/ Main content wrapper /*/
        .main-content {
            max-width: 1300px;
            margin: 50px auto;
            padding: 0 20px;
        }
        /*/ Responsive grid for driver cards /*/
        .drivers-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
            gap: 25px;
        }
        /*/ Individual driver card styling /*/
        .driver-card {
            background: #1a1a1a;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.7);
            transition: all 0.4s ease;
            border: 2px solid transparent;
            cursor: pointer;
        }
        /*/ Hover effect on cards /*/
        .driver-card:hover {
            transform: translateY(-12px);
            box-shadow: 0 20px 45px rgba(255, 0, 0, 0.5);
            border-color: #c00;
        }
        .driver-photo-container {
            width: 100%;
            height: 240px;
            overflow: hidden;
            position: relative;
            background: #111;
        }

        /*/ Driver card photo styling /*/
        .driver-card img {
            width: 100% !important;
            height: 100% !important;
            object-fit: cover !important;
            /*/ overrides other rules and ensures the drivers face is in frame /*/
            object-position: top center !important;   
            transition: transform 0.5s ease;
        }
        .driver-card:hover img {
            transform: scale(1.06);
        }

        /*/ Information section below each photo /*/
        .driver-info {
            padding: 18px;
            text-align: center;
        }
        .driver-info h3 {
            font-size: 1.35rem;
            margin-bottom: 6px;
        }
        .driver-info p {
            color: #ff6666;
            font-size: 1.05rem;
            margin-bottom: 4px;
        }
        .driver-number {
            font-weight: bold;
            font-size: 1.1rem;
        }
        /* Responsive adjustments for mobile and smaller screens, reduces the number of columns and image height on smaller screens to maintain good scaling /*/
        @media (max-width: 768px) {
            .drivers-grid {
                grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            }
            .driver-photo-container {
                height: 205px;
            }
        }
    </style>
</head>
<body>
    <header>
        <h1>RUSH F1</h1>
    </header>
    <nav>
        <ul>
            <li><a href="index.php">Home</a></li>
            <li><a href="drivers.php">Drivers</a></li>
            <li><a href="teams.php">Teams</a></li>
            <li><a href="tracks.php">Tracks</a></li>
        </ul>
    </nav>
    <div class="main-content">
        <h2 style="text-align:center; color:#ff0000; margin-bottom:40px; font-size:2.4rem;">
            DRIVERS
        </h2>
        <!-- Grid container that holds all driver cards -->
        <div class="drivers-grid">
            <?php
            /*/ Loop through every driver returned from the database /*/
            while($row = $drivers->fetch_assoc()):
            ?>
                <!-- Clickable driver card, uses onclick with JavaScript to navigate to the individual driver detail page -->
                <div class="driver-card" onclick="window.location.href='driver_details.php?driver=<?php echo urlencode($row['slug']); ?>'">
                  
                    <div class="driver-photo-container">
                        <img src="images/drivers/<?php echo htmlspecialchars($row['driver_photo']); ?>"
                             alt="<?php echo htmlspecialchars($row['name']); ?>">
                    </div>
                  
                    <div class="driver-info">
                        <h3><?php echo htmlspecialchars($row['name']); ?></h3>
                        <p class="driver-number">#<?php echo $row['driver_no']; ?></p>
                        <p><?php echo htmlspecialchars($row['team']); ?></p>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </div>
</body>
</html>
<?php $conn->close(); ?>