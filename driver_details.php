<?php
include 'db_connect.php';

$id = isset($_GET['ID']) ? (int)$_GET['ID'] : 0;
$result = $conn->query("SELECT * FROM drivers WHERE ID = $id");
$row = $result->fetch_assoc();

if (!$row) {
    die("<h2 style='color:red;text-align:center;'>Driver not found!</h2>");
}
?>

<!DOCTYPE html>
<html>
<head>
    <title><?php echo htmlspecialchars($row['name']); ?> - F1 2026</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f0f0f0;
            padding: 30px;
            margin: 0;
        }
        nav {
            padding: 10px 0;
            background-color: rgb(255, 88, 88);
            text-align: center;
            margin-bottom: 30px;
        }
        nav ul {
            padding: 0;
            margin: 0;
            list-style: none;
            display: flex;
            justify-content: center;
        }
        nav a {
            color: white;
            text-decoration: none;
            font-weight: bold;
            padding: 8px 16px;
        }
        nav a:hover {
            background-color: rgb(188, 56, 56);
        }
        .hero {
            position: relative;
            height: 380px;
            background: linear-gradient(#111, #222);
            border-radius: 15px;
            overflow: hidden;
            margin-bottom: 40px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.3);
        }
        .team-logo {
            position: absolute;
            top: 30px;
            left: 40px;
            width: 180px;
            z-index: 2;
        }
        .car-container {
            position: absolute;
            bottom: 40px;
            left: 0;
            width: 100%;
        }
        .car {
            width: 720px;
            animation: driveIn 3.2s ease-out forwards;
        }
        @keyframes driveIn {
            0% {
                transform: translateX(-120%);
                opacity: 0;
            }
            20% {
                opacity: 1;
            }
            100% {
                transform: translateX(15%);
                opacity: 1;
            }
        }
        .driver-photo {
            width: 320px;
            border: 8px solid #c00;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.4);
        }
        .info-card {
            background: white;
            padding: 25px;
            border-radius: 12px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 12px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #eee;
        }
    </style>
</head>
<body>

<h1 style="color:red; text-align:center; margin-bottom:10px;">
    <?php echo htmlspecialchars($row['name']); ?> <span style="font-size:0.6em;">#<?php echo $row['driver_no']; ?></span>
</h1>

<nav>
    <ul>
        <li><a href="index.php">Home</a></li>
        <li><a href="drivers.php">Drivers</a></li>
        <li><a href="teams.php">Teams</a></li>
        <li><a href="tracks.php">Tracks</a></li>
    </ul>
</nav>

<!-- HERO with animated car -->
<div class="hero">
    <img src="images/numbers/<?php echo htmlspecialchars($row['driver_number']); ?>" 
         class="team-logo" alt="Team Logo">
    
    <div class="car-container">
        <img src="images/cars/<?php echo htmlspecialchars($row['car_image']); ?>" 
             class="car" alt="F1 Car">
    </div>
</div>

<div style="display:flex; gap:50px; flex-wrap:wrap; justify-content:center;">
    
    <!-- Driver Photo -->
    <div>
        <img src="images/drivers/<?php echo htmlspecialchars($row['driver_photo']); ?>" 
             class="driver-photo" alt="<?php echo htmlspecialchars($row['name']); ?>">
    </div>

    <!-- Personal Info -->
    <div class="info-card" style="flex:1; min-width:300px;">
        <h2>Personal Information</h2>
        <table>
            <tr><th>Country</th><td><?php echo htmlspecialchars($row['country']); ?></td></tr>
            <tr><th>Age</th><td><?php echo $row['age']; ?></td></tr>
            <tr><th>Team</th><td><?php echo htmlspecialchars($row['team']); ?></td></tr>
        </table>
    </div>
</div>

<!-- Career Statistics -->
<div class="info-card" style="margin-top:40px;">
    <h2 style="color:#c00;">Career Statistics</h2>
    <table>
        <tr><th>Grand Prix Entered</th><td><?php echo number_format($row['grand_prix_entered']); ?></td></tr>
        <tr><th>Career Points</th><td><?php echo number_format($row['career_points']); ?></td></tr>
        <tr><th>Wins</th><td><?php echo $row['wins']; ?></td></tr>
        <tr><th>World Titles</th><td><?php echo $row['world_titles']; ?></td></tr>
    </table>
</div>

</body>
</html>

<?php $conn->close(); ?>