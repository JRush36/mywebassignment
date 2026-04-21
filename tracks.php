<?php
include 'db_connect.php';
$tracks = $conn->query("SELECT * FROM tracks ORDER BY name ASC");?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tracks - Rush F1</title>
   
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
        .main-content {
            max-width: 1300px;
            margin: 50px auto;
            padding: 0 20px;
        }
        /*/ Responsive grid for track cards /*/
        .tracks-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(380px, 1fr));
            gap: 35px;
        }
        /*/ Individual track card styling /*/
        .track-card {
            background: #1a1a1a;
            border-radius: 16px;
            overflow: hidden;
            box-shadow: 0 10px 30px rgba(0,0,0,0.7);
            transition: all 0.4s ease;
            border: 2px solid transparent;
            cursor: pointer;
            height: 275px;
        }
        /*/ Hover effect on track cards /*/
        .track-card:hover {
            transform: translateY(-12px);
            box-shadow: 0 20px 45px rgba(255, 0, 0, 0.5);
            border-color: #c00;
        }
        .track-image-container {
            width: 100%;
            height: 145px;
            overflow: hidden;
            position: relative;
            background: #111;
        }
        /*/ Track image styling, use contain so the entire image always fits and doesn't move on resize /*/
        .track-card img {
            width: 100% !important;
            height: 100% !important;
            object-fit: contain !important;     
            object-position: center !important; 
            background: #111;
            padding: 8px; 
        }
        .track-card:hover img {
            transform: scale(1.02);
        }
        /*/ Information section below each of the track images /*/
        .track-info {
            padding: 16px;
            text-align: center;
        }
        .track-info h3 {
            font-size: 1.35rem;
            margin-bottom: 8px;
        }
        .track-info p {
            color: #ff6666;
            font-size: 1.05rem;
        }
        /*/ Responsive adjustments for mobile and smaller screens /*/
        @media (max-width: 768px) {
            .tracks-grid {
                grid-template-columns: repeat(auto-fit, minmax(290px, 1fr));
            }
            .track-image-container {
                height: 130px;
            }
            .track-card {
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
            TRACKS
        </h2>
        <div class="tracks-grid">
            <?php
            // Loop through every track returned from the databbase, with each iteration creating one track card /*/
            while($row = $tracks->fetch_assoc()):
            ?>
                <!-- Clickable track card -->
                <div class="track-card" onclick="window.location.href='track_details.php?track=<?php echo urlencode($row['Slug']); ?>'">
                  
                    <!-- Track image container -->
                    <div class="track-image-container">
                        <img src="images/tracks/<?php echo htmlspecialchars($row['track_image']); ?>"
                             alt="<?php echo htmlspecialchars($row['Name']); ?>">
                    </div>
                  
                    <!-- Track information section -->
                    <div class="track-info">
                        <h3><?php echo htmlspecialchars($row['Name']); ?></h3>
                        <p><?php echo htmlspecialchars($row['Country']); ?></p>
                        <p><?php echo htmlspecialchars($row['Length']); ?> - <?php echo $row['Corners']; ?> corners</p>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </div>
</body>
</html>
<?php $conn->close(); ?>