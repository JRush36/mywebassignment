<?php
include 'db_connect.php';

$drivers = $conn->query("SELECT * FROM drivers");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Drivers</title>
</head>
<body style="font-family:Arial; background:#f0f0f0; padding:30px;">

<h1 style="color:red; text-align:center;">Drivers 2026</h1>

<p style="text-align:center;">
    <a href="index.php">Home</a> | 
    <a href="teams.php">Teams</a> | 
    <a href="tracks.php">Tracks</a>
</p>

<table border="1" style="margin:0 auto; width:95%; background:white;">
    <tr style="background:#eee;">
        <th>Name</th>
        <th>Country</th>
        <th>Age</th>
        <th>Team</th>
        <th>No.</th>
        <th>GP Entered</th>
        <th>Career Points</th>
        <th>Wins</th>
        <th>World Titles</th>
    </tr>

    <?php while($row = $drivers->fetch_assoc()): ?>
    <tr>
        <td><?php echo $row['Name']; ?></td>
        <td><?php echo $row['Country']; ?></td>
        <td><?php echo $row['Age']; ?></td>
        <td><?php echo $row['Team']; ?></td>
        <td><?php echo $row['Driver No.']; ?></td>
        <td><?php echo number_format($row['Grand Prix Entered']); ?></td>
        <td><?php echo number_format($row['Career Points']); ?></td>
        <td><?php echo $row['Wins']; ?></td>
        <td><?php echo $row['World Titles']; ?></td>
    </tr>
    <?php endwhile; ?>
</table>

</body>
</html>
<?php $conn->close(); ?>