<?php
include("sms_recipients.php");
include("connect_inc.php");
#$serveur = "localhost";
#$username = "root";
#$password = "";
#$bd = "import CSV";
$conn = mysqli_connect($serveur, $username, $password, $bd);

if(isset($_POST["submit"])) {
	$fic = $_FILES["csv"]["name"];
	//$_FILES["csv"]["name"]; fourni le nom du fichier tel quel sur le PC, puis,
	// si le fichier est trouvé alors on l'ouvre 
	if ($fic) {
	//$_FILES["csv"]["tmp_name"] donne le nom du fichier temporaire stocké sur le serveur web et qui va être manipulé.
	$ficTmp = $_FILES["csv"]["tmp_name"];
	$fp = fopen($ficTmp, "r");
	}
}

$tab = file($ficTmp); //print_r($tab)
foreach ($tab as $line) { 
	//à chaque tour, je traite une ligne intégrale du csv et donc les valeurs correpondent aux colonnes en fonction du nb de cols.
	$cols = explode(',', $line);
	if ($cols[9] == "\"Paid\"") { //si le status est PAID alors prendre en compte :
		
		// Variables --> print_r($cols[1]); nom prénom /print_r($cols[4]); numéro de téléphone / print($cols[9]); status 
		//name prend la forme "Prénom/Nom (E-mail)" et les valeurs du csv correspondantes.
		$name = $cols[1]."(".$cols[3].")";
		$name = preg_replace('/\"/', '', $name);
		//tel prend la valeur du n° de téléphone du CSV, puis est formaté par la fonction verif_tel.
		$tel = $cols[4];
		$tel = verif_tel($tel);
		
		// client_id est intialisé à 89 avant d'être inséré.
		$client_id = 89;

		//SQL
		$sql = "INSERT INTO sms_recipients(client_id, name, tel) VALUES ('$client_id', '$name', '$tel')";
		mysqli_query($conn, $sql);
		

		#echo $client_id; print $name; echo $tel;  print("</BR>");
	}
}

function verif_tel($tel) {
	$reg = '#^0[6-7]#';
	$tel = preg_replace('/\"/', '', $tel);
	$regInt = preg_match($reg, $tel, $matches);
	#if(!substr($tel, 0, 2) == '06' || !substr($tel, 0, 2) == '07') {
		if (!$regInt == 1) { //si ça commence pas par 06 alors on fait rien 
			echo "";
		}
		else { //sinon, quand ça commence par 06/7 (et donc regInt = 1) : 
			$tel = trim($tel); //supprime les espaces début et fin de chaîne
			$meta_carac = array(".", "-", " ");
			$tel = str_replace($meta_carac, "", $tel);
			if (substr($tel,0,2) == "06") { //si on a 06, on remplace la reg
				$tel = preg_replace($reg, "+336", $tel, 4);
			}
			if (substr($tel,0,2) == "07") {//pareil pour 07
				$tel = preg_replace($reg, "+337", $tel, 4);
			}
		}	
		return $tel; 
}

fclose($fp);
?>
