<?php
include 'db_connect.php';

$tracks = $conn->query("SELECT * FROM tracks");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Tracks</title>
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

<h1 style="color:red; text-align:center;">Tracks 2026</h1>
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
        <th style="width:140px; text-align:center;">Length</th>
        <th>Corners</th>
        <th>First Grand Prix</th>
        <th>Most Wins</th>
        <th>Lap Record</th>
        <th>Attendance Record</th>
    </tr>

    <?php while($row = $tracks->fetch_assoc()): ?>
    <tr>
        <td><?php echo $row['Name']; ?></td>
        <td><?php echo $row['Country']; ?></td>
        <td style="text-align:center;"><?php echo $row['Length']; ?></td>
        <td><?php echo $row['Corners']; ?></td>
        <td><?php echo $row['First Grand Prix']; ?></td>
        <td><?php echo $row['Most Wins']; ?></td>
        <td><?php echo $row['Lap Record'] ?: 'N/A'; ?></td>
        <td><?php echo number_format($row['Attendance Record']) ?: 'N/A'; ?></td>
    </tr>
    <?php endwhile; ?>
</table>

</body>
</html>
<?php $conn->close(); ?>