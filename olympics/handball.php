<?php
include('../config.php');
if (isset($_POST["name"])) 
{
	$name = $_POST["name"];
	$sql = "SELECT c.flag, c.name, hball.gold, hball.silver, hball.bronze, hball.total FROM countries c INNER JOIN handball hball ON c.id=hball.country_id WHERE c.name LIKE '%$name%' ORDER BY hball.gold DESC, hball.silver DESC, hball.bronze DESC";
	$result = mysqli_query($connection, $sql);
}
else 
{
	$sql = "SELECT c.flag, c.name, hball.gold, hball.silver, hball.bronze, hball.total FROM countries c INNER JOIN handball hball ON c.id=hball.country_id ORDER BY hball.gold DESC, hball.silver DESC, hball.bronze DESC";
	$result = mysqli_query($connection, $sql);
}
?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Handball at the Summer Olympics</title>
	<meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
	<link rel="stylesheet" type="text/css" href="../css/magenta.css">
</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div class="col">
				<h1 class="display-4">Handball at the Summer Olympics</h1>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<p class="lead">Source: Wikipedia</p>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<form method="post" action="">
					<div class="form-group">
						<label for="name">Country Name:</label>
						<input type="text" class="form-control" name="name" id="name" placeholder="Enter Country Name">
					</div>
				</form>
			</div>
		</div>
		<div class="row">
			<div class="col">
				<table class="table" align="center">
					<thead>
						<tr>
							<th>Flag</th>
							<th>Country</th>
							<th>Gold</th>
							<th>Silver</th>
							<th>Bronze</th>
							<th>Total</th>
						</tr>
					</thead>
					<tbody>
						<?php
						if (mysqli_num_rows($result) > 0) 
						{
							while ($row = mysqli_fetch_array($result)) 
							{
								?>
								<tr>
									<td><img class="image" alt="country" src="<?php echo $row['flag']; ?>"></td>
									<td><?php echo $row['name']; ?></td>
									<td><?php echo $row['gold']; ?></td>
									<td><?php echo $row['silver']; ?></td>
									<td><?php echo $row['bronze']; ?></td>
									<td><?php echo $row['total']; ?></td>
								</tr>
								<?php
							}
						} 
						?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
</body>
</html>