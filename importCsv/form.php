<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome">
	<meta charset="utf-8">
	<title> Import fichier </title>
</head>
<body>
<h2> Veuillez sélectionner votre fichier .csv : </h2>
<form method="post" enctype="multipart/form-data" action="importation.php">
<input name="csv" type="file" value="file" accept=".csv" />
<input name="submit" type="submit" value="Importer" />
</form>

</html>