<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rush F1 Database</title>
    
    <style>
        /*/ Reset default browser margins and padding /*/
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        /*/ Global body styling /*/
        body {
            font-family: 'Arial', 'Helvetica', sans-serif;
            background: #0a0a0a;
            color: white;
            line-height: 1.4;
        }
        header {
            background: linear-gradient(180deg, #000000, #c00);
            padding: 60px 20px 50px;
            text-align: center;
            box-shadow: 0 8px 30px rgba(255, 0, 0, 0.3);
        }
        header h1 {
            font-size: 3.5rem;
            font-weight: 900;
            text-transform: uppercase;
            letter-spacing: 6px;
            text-shadow: 0 0 20px rgba(255,0,0,0.8);
            margin-bottom: 10px;
        }
        header p {
            font-size: 1.45rem;
            opacity: 0.95;
            font-weight: 300;
        }
        /*/ Main content wrapper /*/
        .main-content {
            max-width: 1100px;
            margin: 30px auto;
            padding: 0 20px;
        }
        .introduction {
            text-align: center;
            max-width: 820px;
            margin: 0 auto 30px;
            padding: 0 20px;
        }
        .introduction p {
            font-size: 1.35rem;
            line-height: 1.65;
            opacity: 0.92;
            color: #ddd;
        }
        /*/ Individual card styling for the homepage /*/
        .card {
            height: 260px;
            margin-bottom: 35px;
            border-radius: 16px;
            overflow: hidden;
            position: relative;
            cursor: pointer;
            box-shadow: 0 12px 35px rgba(0,0,0,0.75);
            transition: all 0.5s ease;
            border: 2px solid transparent;
        }
        .card:last-child {
            margin-bottom: 0;
        }
        /*/ Hover effect /*/
        .card:hover {
            transform: translateY(-15px) scale(1.02);
            box-shadow: 0 25px 50px rgba(255, 0, 0, 0.4);
            border-color: #ff0000;
        }
        .card::before {
            content: '';
            position: absolute;
            inset: 0;
            background: linear-gradient(to bottom, rgba(0,0,0,0.3), rgba(180,0,0,0.85));
            z-index: 1;
            transition: all 0.4s ease;
        }

        .card:hover::before {
            background: linear-gradient(to bottom, rgba(0,0,0,0.2), rgba(200,0,0,0.9));
        }

        /*/ Bottom fade gradient /*/
        .card::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            height: 45%;
            background: linear-gradient(transparent, rgba(0,0,0,0.9));
            z-index: 2;
        }

        /*/ The image styling inside each card /*/
        .card img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.7s ease;
        }

        .card:hover img {
            transform: scale(1.08);
        }

        /*/ Cropping drivers card image /*/
        .drivers-card img {
            object-position: 15% 20%;
        }

        /*/ The content at the bottom of each card /*/
        .card-content {
            position: absolute;
            bottom: 0;
            left: 0;
            right: 0;
            padding: 40px 45px;
            z-index: 3;
        }

        .card h2 {
            font-size: 2.6rem;
            font-weight: 700;
            margin-bottom: 10px;
            text-shadow: 0 3px 12px rgba(0,0,0,0.95);
            letter-spacing: 1px;
        }

        .card p {
            font-size: 1.28rem;
            opacity: 0.95;
            font-weight: 400;
        }

        /*/ Makes the entire card clickable by covering it with an invisible link /*/
        .card a {
            position: absolute;
            inset: 0;
            z-index: 4;
            text-decoration: none;
        }

        /*/ Different heights for each card type, drivers card is taller to better display faces /*/
        .drivers-card { height: 290px; }
        .teams-card, .tracks-card { height: 250px; }

        /* Responsive adjustments for smaller screens */
        @media (max-width: 768px) {
            header h1 {
                font-size: 2.6rem;
                letter-spacing: 4px;
            }
            header p {
                font-size: 1.25rem;
            }
            .drivers-card { height: 260px; }
            .teams-card, .tracks-card { height: 225px; }
            .card h2 { font-size: 2.1rem; }
            .card p { font-size: 1.15rem; }
        }
    </style>
</head>
<body>

    <!-- Header section -->
    <header>
        <h1>RUSH F1</h1>
        <p>Drivers, Teams & Tracks — All in One Place!</p>
    </header>

    <div class="main-content">

        <div class="introduction">
            <p>Welcome to the <strong>Rush F1 Database!</strong></p>
            <p>Take a look at the full 2026 driver line-up and dive into their career stats. Get to know the teams behind each driver, along with their rich histories. Explore the most iconic circuits on the calendar and what makes each one unique.</p>
        </div>

        <!-- Drivers Card -->
        <!-- Large visual cards that act as a button -->
        <div class="card drivers-card">
            <img src="images/cover/drivers.jpg" alt="F1 Drivers">
            <div class="card-content">
                <h2>BROWSE DRIVERS</h2>
                <p>Drivers - Profiles - Stats - Achievements</p>
            </div>
            <!-- Invisible link that makes the entire card clickable -->
            <a href="drivers.php"></a>
        </div>

        <!-- Teams Card -->
        <div class="card teams-card">
            <img src="images/cover/teams.jpg" alt="F1 Teams">
            <div class="card-content">
                <h2>BROWSE TEAMS</h2>
                <p>Teams - Principals - Cars - History</p>
            </div>
            <a href="teams.php"></a>
        </div>

        <!-- Tracks Card -->
        <div class="card tracks-card">
            <img src="images/cover/tracks.jpg" alt="F1 Tracks">
            <div class="card-content">
                <h2>BROWSE TRACKS</h2>
                <p>Tracks - Details - Lap Records - History</p>
            </div>
            <a href="tracks.php"></a>
        </div>
    </div>
</body>
</html>