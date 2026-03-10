<?php
include 'db_connect.php';
$driver_id = $_GET['ID'];
$driver = $conn->query("SELECT * FROM drivers WHERE ID = $driver_id")->fetch_assoc();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Driver Details</title>
</head>
<body style="font-family:Arial; background:#f0f0f0; padding:30px;">

<h1 style="color:red; text-align:center;">Driver Details</h1>

<p><strong>Name:</strong> <?php echo $driver['name']; ?></p>
<p><strong>Country:</strong> <?php echo $driver['country']; ?></p>
<p><strong>Age:</strong> <?php echo $driver['age']; ?></p>
<p><strong>Team:</strong> <?php echo $driver['team']; ?></p>
<p><strong>Driver No.:</strong> <?php echo $driver['driver_no']; ?></p>
<p><strong>Grand Prix Entered:</strong> <?php echo number_format($driver['grand_prix_entered']); ?></p>
<p><strong>Career Points:</strong> <?php echo number_format($driver['career_points']); ?></p>
<p><strong>Wins:</strong> <?php echo $driver['wins']; ?></p>
<p><strong>World Titles:</strong> <?php echo $driver['world_titles']; ?></p>

<a href="drivers.php">Back to Drivers</a>

</body>
</html>
<?php $conn->close(); ?>