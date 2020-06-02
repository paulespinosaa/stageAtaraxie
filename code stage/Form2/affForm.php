<head>
	<meta charset="utf-8"/>
	<link rel="stylesheet" href="../include/bootstrap.min.css">
	<link rel="stylesheet" href="../include/styles.css">
	<?php include("../include/header.php"); ?>
</head>
<body>
	<?php include("../include/menus.php"); ?><br>
	<?php
#Récupération des Id du formulaire
		$nbCaracteres = $_POST['nbC'];
		$nbMdpTotal = $_POST['nbMdp'];
#Fonction de randomisation du mot de passe
		function mdpRandom($taille, $arg="lettresMin,lettresMaj,chiffres,speciaux,tous"){
			$mdpFinal = "";
			$lettresMin = "abcdefghijklmnopqrstuvwxyz";
			$lettresMaj = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			$chiffres = "0123456789";
			$speciaux = "=+*$!?,;:/&";
			$tous = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789=+*$!?,;:/&";
			$choix = explode(',',$arg);
			foreach($choix as $tour){
				switch($tour){
				case "lettresMin":
					$mdpFinal.=$lettresMin;
					break;
				case "lettresMaj":
					$mdpFinal.=$lettresMaj;
					break;
				case "chiffres":
					$mdpFinal.=$chiffres;
					break;
				case "speciaux":
					$mdpFinal.=$speciaux;
					break;
				case "tous":
					$mdpFinal.=$tous;
					break;
				default:
					$mdpFinal.=$tous;
				}
			}
			
			$chaineRetour="";
			for($i = 1; $i <= $taille; $i++) {
				$chaineRetour.=substr($mdpFinal, mt_rand(0, strlen($mdpFinal)-1), 1);
			}
			print "Mot de passe généré : ".$chaineRetour;
			return $chaineRetour;
		}
#Boucle permettant de générer nbMdp demandés par l'utilisateur
		for($k = 1; $k <= $nbMdpTotal; $k++) {
#Vérification de quelles checkboxs sont cochées et insertion des caractères correspondant en fonction.
			if (isset($_POST['lmin'])) {
				echo "<br/>";
				mdpRandom($nbCaracteres,"lettresMin");
			}
			if (isset($_POST['lmaj'])) { 
				echo "<br/>";
				mdpRandom($nbCaracteres,"lettresMaj");
			}
			if (isset($_POST['chif'])) { 
				echo "<br/>";
				mdpRandom($nbCaracteres,"chiffres");
			}
			if (isset($_POST['spec'])) { 
				echo "<br/>";
				mdpRandom($nbCaracteres,"speciaux");
			}
			echo "<br>";
		}
	?>
</body>
<footer>
	<?php include("../include/footer.php"); ?>
</footer>