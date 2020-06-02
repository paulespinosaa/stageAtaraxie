<?php
include("sms_recipients.php");
//include("connect_inc.php");
$serveur = "localhost";
$username = "root";
$password = "";
$bd = "importCSV";
/*
define('DB_SERV', "localhost");
define('DB_BD', "importCSV");
define('DB_USER', "root");
define('DB_MDP', "");*/
$conn = mysqli_connect($serveur, $username, $password, $bd);

/*try {
	$db = new PDO('mysql:host='.DB_SERV.';dbname='.DB_BD.';charset=utf8', DB_USER, DB_MDP);
} catch (Exception $e) {
	die("Erreur : ". $e->getMessage());
}*/

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
		// l'évent avec site123.xxx/ à enlever 
		$evenement = $cols[11];
		$evenement = preg_replace('/\"/', '', $evenement);
		$evenement = substr_replace($evenement, "", 0, 32);
		
		//PARTIE SQL
		
		// 1 -  SELECTION ET INSERTION N°TEL/RECIPIENTS si ID n'existe pas

		$idTelephone = getIdTel($tel, $client_id, $name);
		//echo $tel.'<br>'.$idTelephone.'<br>';
		
		// 2 - SELECTION/INSERTION LISTE EVENEMENT avec test ID
		
		$idEvenement = getIdEvt($evenement, $client_id);
		echo $evenement.'<br>'.$idEvenement.'<br>';
		
		// 3 - SELECTION POUR VERIFICATION JOINTURE, PUIS JOINTURE DES NOUVEAUX IDs
		
		// on sélectionne * si dans la BD, l'id de l'evenement = à l'id de l'evenement de notre ligne du csv
		// et si l'id du recipient = à l'id du recipient de notre ligne du csv 
		$req1="SELECT * FROM sms_recipients_lists as rl WHERE rl.sms_liste_id = ".$idEvenement." and rl.sms_recipient_id = ".$idTelephone."";
		$res3 = mysqli_query($conn, $req1);
		if ($res3) {
			$data3 = mysqli_fetch_assoc($res3);
		//echo "id : ".$data3['id']."<br> liste id : ".$data3['sms_liste_id']."<br> recip id : ".$data3['sms_recipient_id']."<br>"; 
		//echo '<pre>debug '.print_r($data3, true).'</pre>';
			if(isset($idTelephone) && isset($idEvenement)) {
				if (($idTelephone == data3['sms_recipient_id']) && ($idEvenement == data3['sms_liste_id'])) {
				$idTableJointure = $data3['id'];
				} else {
					$req2 = "INSERT INTO sms_recipients_lists(sms_liste_id, sms_recipient_id) VALUES ('$idEvenement', '$idTelephone')";
					mysqli_query($conn, $req2);
					//echo $idTelephone.'<br>'.$idEvenement.'<br>'; //les IDs
				}
			}	
		}
	} //end if == $paid
} //end foreach

		#$r = mysqli_query($conn, $sql3) or die ("Erreur : ".mysqli_error($conn));
	
	/*
	$size = count($res);
	print_r($res); echo '<br>';
	for ($i = 0; $i<$size ; $i++){
		$res = $var->fetch();
		print_r($res); echo '<br>';

	}*/
	
//Requêtes SQL utilisées dans les fonctions : 
$sql = "SELECT * FROM sms_recipients as r WHERE r.client_id = ".$client_id." and r.tel = ".$tel;
$sql3 = "SELECT * FROM sms_listes as l WHERE l.client_id = ".$client_id." and l.name = \"".$evenement."\"";

messageConfirmation($sql);
messageConfirmation($sql3);

function getIdTel($tel, $client_id, $name) {			
	// on selectionne tout (accessible par $data['champ'])
	//si dans la BD, un numéro de tél = numéro de tél de la ligne actuelle du csv 
	global $conn; 
	$sql = "SELECT * FROM sms_recipients as r WHERE r.client_id = ".$client_id." and r.tel = ".$tel;
	$res = mysqli_query($conn, $sql);
	if ($res) {
		$data = mysqli_fetch_assoc($res);
		//echo "num tel : ".$data['tel']."<br> name : ".$data['name']."<br> id : ".$data['id']."<br>"; //echo '<pre>debug '.print_r($data, true).'</pre>'; //car si le retour du select est vide, l'array est vide et donc "debug" sert à afficher notre retour.
		if(isset($data['tel']) && ($tel == $data['tel'])) { //si le numéro de $tel de la ligne du csv = celui récupéré dans la BD alors on stocke l'id dans une variable
			$id = $data['id']; //id de la la BD du numéro de tél déjà inséré/présent dans la BD
		} else { // si aucun n° = celui de la ligne du csv, alors on insère.
			$sql1 = "INSERT INTO sms_recipients(client_id, name, tel) VALUES ('$client_id', '$name', '$tel')";
			mysqli_query($conn, $sql1);
			$id = mysqli_insert_id($conn); //sinon l'id devient celui de la ligne de BD qu'on vient d'insérer 
		}
	}
	return $id;
}

function messageConfirmation($requete) {
		if ($requete){
		echo "<h4>Ajout dans la BD effectué</h4>";
	} else {
		echo "<h4>Echec dans l'ajout dans la base de données</h4>";
	}
}

function getIdEvt($evenement, $client_id) {
	//on sélectionne * si dans la BD, l'evenement (name) = l'evenement dans la ligne actuelle du csv
	global $conn;
	$sql3 = "SELECT * FROM sms_listes as l WHERE l.client_id = ".$client_id." and l.name = \"".$evenement."\"";
	$res2 = mysqli_query($conn, $sql3);
	$data2 = mysqli_fetch_assoc($res2);
	//echo "evt : ".$data2['name']."<br> id : ".$data['id']."<br> cli id : ".$data['client_id']."<br>"; //echo '<pre>debug '.print_r($data2, true).'</pre>';
	if(isset($data2['name']) && ($evenement == $data2['name'])) {//si l'$evenement de la ligne du csv = l'evt recup dans la BD alors on stocke son ID
		$id2 = $data2['id']; //id de l'evenemmt existant déjà dans la BD
	}else { //sinon on insère le nouvel evenement 
		$sql2 = "INSERT INTO sms_listes(name, client_id) VALUES ('$evenement', '$client_id')";
		mysqli_query($conn, $sql2);
		$id2 = mysqli_insert_id($conn); // puis on récupère l'id de l'evenemt inséré
	}
	return $id2;
}
	
function verif_tel($tel) {
	$reg = '#^0[46-79]#';
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
			if (substr($tel,0,2) == "04") {//avec 04
				$tel = preg_replace($reg, "+334", $tel, 4);
			}
			if (substr($tel,0,2) == "09") {//pour les 09
				$tel = preg_replace($reg, "+339", $tel, 4);
			}
		}	
		return $tel; 
}

fclose($fp);
?>
