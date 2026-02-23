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

<h1 style="color:red; text-align:center;">Teams 2026</h1>

<p style="text-align:center;">
    <a href="index.php">Home</a> | 
    <a href="drivers.php">Drivers</a> | 
    <a href="tracks.php">Tracks</a>
</p>

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
        <td><?php echo $row['Name']; ?></td>
        <td><?php echo $row['Country']; ?></td>
        <td><?php echo $row['Headquarters']; ?></td>
        <td><?php echo $row['Engine Manufacturer']; ?></td>
        <td><?php echo $row['Driver 1']; ?></td>
        <td><?php echo $row['Driver 2']; ?></td>
        <td><?php echo $row['Wins']; ?></td>
        <td><?php echo $row['Constructor Titles']; ?></td>
    </tr>
    <?php endwhile; ?>
</table>

</body>
</html>
<?php $conn->close(); ?>