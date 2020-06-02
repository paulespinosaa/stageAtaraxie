<?php
		#Récupération des Id du formulaire
			$nbCaracteres = $_POST['nbC'];
			$nbMdpTotal = $_POST['nbMdp'];
		
		$chaineFinale = ($optMin==true?$lettresMin:'').($optMaj==true?$lettresMaj:'').($optChif==true?$chiffres:'').($optSpec==true?$speciaux:'');
		

		
?>
<html>
	<head>
		<link rel="stylesheet" href="../include/bootstrap.min.css">
		<link rel="stylesheet" href="../include/styles.css">
		<?php include("../include/header.php"); ?><br>
		<?php include("../include/menus.php"); ?><br>
	</head>
	<body>
		<form method="post">
		<h1>Générateur de mot de passe </h1>
		<br><input type='checkbox' name='lmin' >Inclure les lettres minuscules [a-z]
		<br><input type='checkbox' name='lmaj' >Inclure les lettres majuscules [A-Z]
		<br><input type='checkbox' name='chif' >Inclure les chiffres [0-9]
		<br><input type='checkbox' name='spec' >Inclure les caractères spéciaux [!?/+=...]
		<br><br>
		<?php	
			$selected =""; //var qui choisira quelle option sera présélectionnée.
			echo 'Nombre de caractères : ';
			echo '<select name="nbC">', "\n";
			for($i=4; $i <= 255; $i++) {
				if($i == 8){ // initalisation de la liste déroulante à 8.
					$selected = 'selected="selected"';
				}
				#Affichage d'une ligne
				echo "\t", '<option value="', $i, '"', $selected, '>', $i,'</option>', "\n";
				$selected='';
			}
			echo '</select>', "\n";
		?><br>
		<?php
			$selected =""; //var qui choisira quelle option sera présélectionnée.
			echo 'Nombre de mot de passe : ';
			echo '<select name="nbMdp">', "\n";
			for($i=1; $i <= 30; $i++) {
				if($i == 1){ // initalisation de la liste déroulante à 1.
					$selected = 'selected="selected"';
				}
				#Affichage d'une ligne
				echo "\t", '<option value="', $i, '"', $selected, '>', $i,'</option>', "\n";
				$selected='';
			}
			echo '</select>', "\n";
		?>
		<br><br>
		<input type='submit' name='envoyer' value='Générer le mot de passe'>
		</form>
	</body>
	<footer>
	<?php include("../include/footer.php"); ?>
	</footer>
</html>
