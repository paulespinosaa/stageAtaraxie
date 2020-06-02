<?php
include("connect_inc.php");
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
$tab = file($fic);
print($tab);

foreach $tab as $line { 

	// à chaque tour, je traite une ligne intégrale du csv et donc les valeurs 		correpondent au colonnes en fonction du n° de cols.
	$cols = explode(',', $line);
	$name = $cols[3];
	$client_id = $cols[0];
	$req=$bdd->query("SELECT tel FROM sms_recipients");
	$data = $req->fetch();
	$tel = $data['tel'];
	if ($cols[4] = $data) {
		$req1=$bdd->query("SELECT id FROM sms_recipients");
		$data1 = $req1->fetch();
		$idd = $data1['id'];	
	}else {
		$req2=$bdd->query("INSERT INTO sms_recipients VALUES ($xxxx, $client_id, $name, $tel)";
	}
$req->execute(array(1 => $tab[1]);

}



fclose($fp);
?>







