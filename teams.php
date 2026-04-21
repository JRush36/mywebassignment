<?php
include 'db_connect.php';
$teams = $conn->query("SELECT * FROM teams ORDER BY name ASC"); ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Teams - Rush F1</title>
  
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
        /*/ Responsive grid for team cards /*/
        .teams-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(390px, 1fr));
            gap: 35px;
        }
        /*/ Individual team card styling /*/
        .team-card {
            background: #1a1a1a;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.7);
            transition: all 0.4s ease;
            border: 2px solid transparent;
            cursor: pointer;
            height: 275px;
        }
        /*/ Hover effect on team cards. /*/
        .team-card:hover {
            transform: translateY(-12px);
            box-shadow: 0 20px 45px rgba(255, 0, 0, 0.5);
            border-color: #c00;
        }
        .team-image-container {
            width: 100%;
            height: 145px;
            overflow: hidden;
            position: relative;
            background: #111;
        }
        .team-card img {
            width: 100% !important;
            height: 100% !important;
            /*/ overrides other rules and ensures the car is in frame /*/
            object-fit: contain !important;
            object-position: center !important;
            background: #111;
            padding: 8px;
        }
        .team-card:hover img {
            transform: scale(1.02);
        }
        .team-info {
            padding: 16px;
            text-align: center;
        }
        .team-info h3 {
            font-size: 1.35rem;
            margin-bottom: 6px;
        }
        .team-info p {
            color: #ff6666;
            font-size: 1.05rem;
        }
        /*/ Mobile responsiveness /*/
        @media (max-width: 768px) {
            .teams-grid {
                grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            }
            .team-image-container {
                height: 130px;
            }
            .team-card {
                height: 255px;
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
            TEAMS
        </h2>
        <!-- Grid container that holds all team cards -->
        <div class="teams-grid">
            <?php
            /*/ Loop through every team returned from the database /*/
            while($row = $teams->fetch_assoc()):
            ?>
                <!-- Clickable team card -->
                <div class="team-card" onclick="window.location.href='team_details.php?team=<?php echo urlencode($row['slug']); ?>'">
                 
                    <div class="team-image-container">
                        <img src="images/cars/<?php echo htmlspecialchars($row['car_image']); ?>"
                             alt="<?php echo htmlspecialchars($row['name']); ?>">
                    </div>
                 
                    <div class="team-info">
                        <h3><?php echo htmlspecialchars($row['name']); ?></h3>
                        <p><?php echo htmlspecialchars($row['country']); ?></p>
                        <p><?php echo htmlspecialchars($row['headquarters']); ?></p>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </div>
</body>
</html>
<?php $conn->close(); ?>