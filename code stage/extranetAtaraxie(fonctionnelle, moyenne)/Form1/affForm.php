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
		$NumTypeMdp = $_POST['typeMdp'];
		$nbMdpTotal = $_POST['nbMdp'];
#Fonction de randomisation du mot de passe
		function mdpRandom($taille, $arg="lettresMin,lettresMaj,chiffres,speciaux"){
			$mdpFinal = "";
			$lettresMin = "abcdefghijklmnopqrstuvwxyz";
			$lettresMaj = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
			$chiffres = "01234567890123456789";
			$speciaux = "=+*$!?,;:/&\"\\()][^";
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
		for($n = 1; $n <= $nbMdpTotal; $n++) {
#Type de mot de passe en fonction de l'option choisie dans la liste déroulante :
// 1 = Chiffres uniquement 
// 2 = Lettres uniquement
// 3 = Chiffres et lettres
// 4 = Chiffres, lettres et caractères spéciaux
			if ($NumTypeMdp == '1') {
				echo "<br/>";
				mdpRandom($nbCaracteres,"chiffres");
			}
			if($NumTypeMdp == '2') {
				if (isset($_POST['lm'])) { 
					echo "<br/>";
					mdpRandom($nbCaracteres,"lettresMin,lettresMaj");
				} else {
					echo "<br/>";
					mdpRandom($nbCaracteres,"lettresMin");
				}
			}
			if ($NumTypeMdp == '3') {
				if (isset($_POST['lm'])) { 
					echo "<br/>";
					mdpRandom($nbCaracteres,"lettresMin,lettresMaj,chiffres");
				} else {
					echo "<br/>";
					mdpRandom($nbCaracteres,"lettresMin,chiffres");
				}
			}
			if ($NumTypeMdp == '4') {
				if (isset($_POST['lm'])) { 
					echo "<br/>";
					mdpRandom($nbCaracteres,"lettresMin,lettresMaj,chiffres,speciaux");
				} else {
					echo "<br/>";
					mdpRandom($nbCaracteres,"lettresMin,chiffres,speciaux");
				}
			}
			echo "<br>";
		}
	?>
</body>
<footer>
	<?php include("../include/footer.php"); ?>
</footer>