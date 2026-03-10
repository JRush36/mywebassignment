<?php
include 'db_connect.php';
$teams_id = $_GET['ID'];
$teams = $conn->query("SELECT * FROM teams WHERE ID = $teams_id")->fetch_assoc();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Team Details</title>
</head>
<body style="font-family:Arial; background:#f0f0f0; padding:30px;">

<h1 style="color:red; text-align:center;">Team Details</h1>

<p><strong>Name:</strong> <?php echo $teams['name']; ?></p>
<p><strong>Country:</strong> <?php echo $teams['country']; ?></p>
<p><strong>Headquarters:</strong> <?php echo $teams['headquarters']; ?></p>
<p><strong>Power Unit:</strong> <?php echo $teams['power_unit']; ?></p>
<p><strong>Team Principal:</strong> <?php echo $teams['team_principal']; ?></p>
<p><strong>Driver 1:</strong> <?php echo $teams['driver_1']; ?></p>
<p><strong>Driver 2:</strong> <?php echo $teams['driver_2']; ?></p>
<p><strong>Wins:</strong> <?php echo $teams['wins']; ?></p>
<p><strong>Constructor Titles:</strong> <?php echo $teams['constructor_titles']; ?></p>

<a href="teams.php">Back to Teams</a>

</body>
</html>
<?php $conn->close(); ?>
