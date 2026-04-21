<?php
include 'db_connect.php';
/*/ Read the 'team' parameter from the URL /*/
$team_slug = isset($_GET['team']) ? trim($_GET['team']) : '';
if (empty($team_slug)) {
    die("<h2 style='color:red; text-align:center;'>Team not found!</h2>");
}
$team_slug = $conn->real_escape_string($team_slug);
/*/ Query the database to find the team with the matching slug /*/
$result = $conn->query("SELECT * FROM teams WHERE slug = '$team_slug'");
$row = $result->fetch_assoc();
if (!$row) {
    die("<h2 style='color:red; text-align:center;'>Team not found!</h2>");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($row['name']); ?> - Rush F1</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #0a0a0a;
            color: white;
            margin: 0;
        }
        header {
            background: linear-gradient(180deg, #000000, #c00);
            padding: 40px 20px;
            text-align: center;
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
        .banner {
            position: relative;
            height: 300px;
            background: linear-gradient(#111, #ff0000);
            margin-bottom: 40px;
            overflow: hidden;
        }
        .team-name {
            position: absolute;
            top: 35px;
            left: 30px;
            color: white;
            font-size: clamp(1.95rem, 5.5vw, 2.9rem);
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
            padding: 40px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.8);
        }
        .team-profile-layout {
            display: flex;
            gap: 45px;
            flex-wrap: wrap;
            align-items: flex-start;
        }=
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
        /*/ Responsive adjustments for mobile and smaller screens /*/
        @media (max-width: 768px) {
            .banner { height: 255px; }
            .team-name { left: 25px; font-size: clamp(1.65rem, 6.8vw, 2.45rem); }
            .car { max-width: 440px; }
            .team-profile-layout { flex-direction: column; gap: 35px; }
            .main-detail-box { padding: 25px; }
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
        <div class="team-name">
            <?php echo htmlspecialchars($row['name']); ?>
        </div>
        <div class="car-container">
            <img src="images/cars/<?php echo htmlspecialchars($row['car_image']); ?>"
                 class="car" alt="F1 Car">
        </div>
    </div>

    <div class="content-wrapper">
        <div class="main-detail-box">
            <div class="team-profile-layout">
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
    </div>
</body>
</html>
<?php $conn->close(); ?>