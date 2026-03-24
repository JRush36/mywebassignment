<?php
include 'db_connect.php';

$teams = $conn->query("SELECT * FROM teams");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Teams</title>
</head>
<body style="font-family:Arial; background:#f0f0f0; padding:30px;">

<style>
    table {
        border-collapse: collapse;
    }
    th, td {
        padding: 8px 12px;
    }
    nav{
        padding: 10px 0;
        background-color: rgb(255, 88, 88);
        text-align: center;
        margin-bottom: 20px;
    }
    nav ul{
        padding: 0;
        margin: 0;
        list-style: none;
        display: flex;
        justify-content: center;}
     nav a{
        color: white;
        text-decoration: none;
        font-weight: bold;
        padding: 8px 16px;
        list-style: none;
    }
    nav a:hover{
        background-color: rgb(188, 56, 56);
}
</style>
<body style="font-family:Arial; background:#f0f0f0; padding:30px;">

<h1 style="color:red; text-align:center;">Teams 2026</h1>
<nav>
<p>
    <ul>
   <li><a href="index.php">Home</a></li> 
    <li><a href="drivers.php">Drivers</a></li>
    <li><a href="teams.php">Teams</a></li> 
    <li><a href="tracks.php">Tracks</a></li>
</ul>
</p>
</nav>

<table border="1" style="margin:0 auto; width:95%; background:white;">
    <tr style="background:#eee;">
        <th>Name</th>
        <th>Country</th>
        <th>Headquarters</th>
        <th>Engine Manufacturer</th>
        <th>Driver 1</th>
        <th>Driver 2</th>
        <th>Wins</th>
        <th>Constructor Titles</th>
    </tr>

    <?php while($row = $teams->fetch_assoc()): ?>
    <tr>
        <td>
            <a href="team_details.php?team=<?php echo urlencode($row['slug']); ?>"> <?php echo htmlspecialchars($row['name']); ?> </a>
        </td>
        <td><?php echo $row['country']; ?></td>
        <td><?php echo $row['headquarters']; ?></td>
        <td><?php echo $row['power_unit']; ?></td>
        <td><?php echo $row['driver_1']; ?></td>
        <td><?php echo $row['driver_2']; ?></td>
        <td><?php echo $row['wins']; ?></td>
        <td><?php echo $row['constructor_titles']; ?></td>
    </tr>
    <?php endwhile; ?>
</table>
</body>
</html>
<?php $conn->close(); ?>