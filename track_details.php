<?php
include 'db_connect.php';
$track_slug = isset($_GET['track']) ? trim($_GET['track']) : '';
if (empty($track_slug)) {
    die("<h2 style='color:red; text-align:center;'>Track not found!</h2>");
}
$track_slug = $conn->real_escape_string($track_slug);
$result = $conn->query("SELECT * FROM tracks WHERE slug = '$track_slug'");
$row = $result->fetch_assoc();
if (!$row) {
    die("<h2 style='color:red; text-align:center;'>Track not found!</h2>");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php echo htmlspecialchars($row['Name']); ?> - Rush F1</title>
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
            height: 260px;
            background: linear-gradient(#111, #ff0000);
            margin-bottom: 40px;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .track-name {
            color: white;
            font-size: clamp(2.4rem, 7vw, 3.8rem);
            font-weight: 900;
            text-transform: uppercase;
            letter-spacing: 3px;
            text-shadow: 0 4px 20px rgba(0,0,0,0.95);
        }
        .content-wrapper {
            max-width: 1250px;
            margin: 0 auto 40px;
            padding: 0 20px;
        }
        .track-layout {
            display: flex;
            gap: 40px;
            flex-wrap: wrap;
        }
        .info-side {
            flex: 1;
            min-width: 340px;
        }
        .image-side {
            flex: 0 0 580px;
            min-width: 340px;
        }
        .main-detail-box {
            background: #1a1a1a;
            border: 5px solid #c00;
            border-radius: 16px;
            padding: 35px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.8);
        }
        .circuit-box {
            background: #1a1a1a;
            border: 5px solid #c00;
            border-radius: 16px;
            padding: 25px;
            box-shadow: 0 15px 40px rgba(0,0,0,0.8);
            height: 100%;
        }
        .large-track-image {
            width: 100%;
            height: auto;
            border: 2px solid #c00;
            border-radius: 12px;
        }
        .info-card {
            background: #222;
            padding: 28px;
            border-radius: 12px;
            border: 2px solid #c00;
            margin-bottom: 25px;
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
        @media (max-width: 992px) {
            .track-layout {
                flex-direction: column;
                gap: 30px;
            }
            .image-side {
                flex: none;
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
        <div class="track-name">
            <?php echo htmlspecialchars($row['Name']); ?>
        </div>
    </div>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    
</body>
</html>
    <div class="content-wrapper">
        <div class="track-layout">

            <div class="info-side">
                <div class="main-detail-box">
                    <div class="info-card">
                        <h2>Track Information</h2>
                        <table>
                            <tr><th>Name</th><td><?php echo htmlspecialchars($row['Name']); ?></td></tr>
                            <tr><th>Country</th><td><?php echo htmlspecialchars($row['Country']); ?></td></tr>
                            <tr><th>Length</th><td><?php echo htmlspecialchars($row['Length']); ?></td></tr>
                            <tr><th>Corners</th><td><?php echo $row['Corners']; ?></td></tr>
                            <tr><th>First Grand Prix</th><td><?php echo $row['First Grand Prix']; ?></td></tr>
                        </table>
                    </div>
                </div>
            </div>

            <div class="image-side">
                <div class="circuit-box">
                    <h2 style="color:#ff0000; text-align:center; margin-bottom:25px;">Circuit Layout</h2>
                    <img src="images/tracks/<?php echo htmlspecialchars($row['track_image']); ?>"
                         class="large-track-image" alt="Full Circuit Layout">

                    <div style="margin-top: 30px; background:#222; padding:25px; border-radius:12px; border:2px solid #c00;">
                        <h2 style="color:#ff0000; margin-bottom:20px;">Track Honours</h2>
                        <table style="width:100%;">
                            <tr><th>Lap record</th><td><?php echo htmlspecialchars($row['Lap Record']); ?></td></tr>
                            <tr><th>Most Wins</th><td><?php echo htmlspecialchars($row['Most Wins']); ?></td></tr>
                            <tr><th>Attendance Record</th><td><?php echo htmlspecialchars($row['Attendance Record']); ?></td></tr>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
</body>
</html>
<?php
$conn->close(); ?>