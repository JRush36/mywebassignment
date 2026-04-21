<?php
include 'db_connect.php';
/*/ Read the 'driver' parameter from the URL (e.g. driver_details.php?driver=lewis-hamilton) /*/
$driver_slug = isset($_GET['driver']) ? trim($_GET['driver']) : '';
/*/ If no driver slug was provided in the URL, show an error message and stop execution /*/
if (empty($driver_slug)) {
    die("<h2 style='color:red; text-align:center;'>Driver not found!</h2>");
}
/*/ Escape the slug to prevent SQL injection attacks /*/
$driver_slug = $conn->real_escape_string($driver_slug);
/*/ Query the database to find a driver with the matching slug /*/
$result = $conn->query("SELECT * FROM drivers WHERE slug = '$driver_slug'");
/*/ Fetch the result as an associative array /*/
$row = $result->fetch_assoc();
/*/ If no matching driver was found in the database, show an error message /*/
if (!$row) {
    die("<h2 style='color:red; text-align:center;'>Driver not found!</h2>");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($row['name']); ?> - Rush F1</title>
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
            margin: 0;
        }
        header {
            background: linear-gradient(180deg, #000000, #c00);
            padding: 35px 20px 25px; 
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
        nav {
            background-color: #000000;
            padding: 12px 0;
            text-align: center;
        }
        nav ul {
            list-style: none;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 8px;
        }
        nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 10px 18px;
        }
        nav a:hover {
            background-color: #c00;
        }
        /*/ Banner section /*/
        .banner {
            position: relative;
            height: 280px;
            background: linear-gradient(#111, #ff0000);
            margin-bottom: 40px;
            overflow: hidden;
        }
        .driver-number-container {
            position: absolute;
            top: 28px;
            left: 25px;
            width: 110px;
            height: 110px;
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 2;
        }
        .driver-number {
            max-width: 100%;
            max-height: 100%;
            object-fit: contain;
        }
        .driver-name {
            position: absolute;
            top: 32px;
            left: 155px;
            color: white;
            font-size: clamp(1.9rem, 5vw, 2.8rem);
            font-weight: bold;
            text-shadow: 3px 3px 8px rgba(0,0,0,0.9);
            z-index: 2;
        }
        .car-container {
            position: absolute;
            bottom: 20px;
            left: 0;
            width: 100%;
        }
        .car {
            width: 82%;
            max-width: 560px;
            height: auto;
            transform: translateX(10%);
        }
        .content-wrapper {
            max-width: 1100px;
            margin: 0 auto 40px;
            padding: 0 20px;
        }
        .main-detail-box {
            background: #1a1a1a;
            border: 5px solid #c00;
            border-radius: 16px;
            padding: 35px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.8);
        }
        /*/ Flexbox layout for photo and information /*/
        .driver-profile-layout {
            display: flex;
            gap: 45px;
            flex-wrap: wrap;
        }
        .driver-photo-side {
            flex: 0 0 290px;
        }
        .driver-photo {
            width: 100%;
            max-width: 290px;
            height: auto;
            border: 2px solid #c00;
            border-radius: 15px;
        }
        .info-column {
            flex: 1;
            min-width: 300px;
            display: flex;
            flex-direction: column;
            gap: 28px;
        }
        .info-card {
            background: #222;
            padding: 28px;
            border-radius: 12px;
            border: 2px solid #c00;
        }
        .info-card h2 {
            color: #ff0000;
            margin-bottom: 20px;
        }
        .info-bio {
            background: #222;
            padding: 28px;
            border-radius: 12px;
            border: 2px solid #c00;
            font-size: 0.80rem;
        }
        .info-bio h2 {
            color: #ff0000;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 13px 18px;
            text-align: left;
            border-bottom: 1px solid #444;
        }
        th {
            background: #c00;
            color: white;
            width: 40%;
        }
        /*/ Responsive adjustments /*/
        @media (max-width: 768px) {
            .banner {
                height: 240px;
            }
            .driver-number-container {
                width: 85px;
                height: 85px;
                left: 18px;
            }
            .driver-name {
                left: 115px;
                font-size: clamp(1.65rem, 6.5vw, 2.4rem);
            }
            .car {
                max-width: 440px;
            }
            .driver-photo {
                max-width: 265px;
            }
            .driver-profile-layout {
                flex-direction: column;
                gap: 35px;
            }
            .main-detail-box {
                padding: 25px;
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
    <div class="banner">
        <div class="driver-number-container">
            <img src="images/numbers/<?php echo htmlspecialchars($row['driver_number']); ?>"
                 class="driver-number"
                 alt="Driver number">
        </div>

        <div class="driver-name">
            <?php echo htmlspecialchars($row['name']); ?>
        </div>

        <div class="car-container">
            <img src="images/cars/<?php echo htmlspecialchars($row['car_image']); ?>"
                 class="car" alt="F1 Car">
        </div>
    </div>

    <div class="content-wrapper">
        <div class="main-detail-box">
            <div class="driver-profile-layout">
                <div class="driver-photo-side">
                    <img src="images/drivers/<?php echo htmlspecialchars($row['driver_photo']); ?>"
                         class="driver-photo"
                         alt="<?php echo htmlspecialchars($row['name']); ?>">
                </div>

                <div class="info-column">
                    <div class="info-card">
                        <h2>Personal Information</h2>
                        <table>
                            <tr><th>Country</th><td><?php echo htmlspecialchars($row['country']); ?></td></tr>
                            <tr><th>Age</th><td><?php echo $row['age']; ?></td></tr>
                            <tr><th>Team</th><td><?php echo htmlspecialchars($row['team']); ?></td></tr>
                        </table>
                    </div>

                    <div class="info-card">
                        <h2>Career Statistics</h2>
                        <table>
                            <tr><th>Grand Prix Entered</th><td><?php echo number_format($row['grand_prix_entered']); ?></td></tr>
                            <tr><th>Career Points</th><td><?php echo number_format($row['career_points']); ?></td></tr>
                            <tr><th>Wins</th><td><?php echo $row['wins']; ?></td></tr>
                            <tr><th>World Titles</th><td><?php echo $row['world_titles']; ?></td></tr>
                        </table>
                    </div>
                 
                    <div class="info-bio">
                        <h2>Driver Biography</h2>
                        <p><?php echo htmlspecialchars($row['biography']); ?></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
<?php $conn->close(); ?>