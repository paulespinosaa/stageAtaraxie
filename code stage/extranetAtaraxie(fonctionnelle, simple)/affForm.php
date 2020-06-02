<head>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="include/bootstrap.min.css">
	<link rel="stylesheet" href="include/styles.css">
	<?php include("./include/header.php"); ?>
</head>
<body>
	<?php include("./include/menus.php"); ?><br>
	<?php
#Récupération des Id du formulaire
		$nbCaracteres = $_GET['nbC'];
		$NumTypeMdp = $_GET['typeMdp'];

#Type de mot de passe en fonction de l'option choisie dans la liste déroulante :
//
		if ($NumTypeMdp == '1') {
			$caract = "0123456789";
		}
		else if ($NumTypeMdp == '2') {
				$caract = "abcdefghijklmnopqrstuvwyxz";
			}
			else if ($NumTypeMdp == '3') {
				$caract = "abcdefghijklmnopqrstuvwyxz0123456789"; 
			}
			else if ($NumTypeMdp == '4') {
				$caract = "abcdefghijklmnopqrstuvwyxz0123456789=+*$!?,;:/&"; 
			}
		echo "<br/><br/>";
		for($i = 1; $i <= $nbCaracteres; $i++) {		
#Calcul de la taille de la chaîne puis choix d'un caractère parmi celle-ci.
			$Nbr = strlen($caract);
			$Nbr = mt_rand(0,($Nbr-1));
			print $caract[$Nbr];
		}
	?>
</body>
<footer>
	<?php include("./include/footer.php"); ?>
</footer>