<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Générateur de formulaire</title>
	<script type="text/javascript">
function add()
    {
    var input = addInput.innerHTML
    addInput.innerHTML = input + '<label>Mot-clef : </label><input type="text" name="fpsaisiedescripteurA" /><br />\n';
    }
</script>
</head>
<body>

		<h2>Veuillez saisir le nom de votre formulaire</h2>
		<label for="nom_form">Nom formulaire</label>
		<input type="text" placeholder="Nom formulaire" size="34" id="nom_form" />

<form method="POST" action="" class="formulaire">
		<h3>Question</h3>
		<input type="text" placeholder="Votre question" size="34" id="question" />
		<input type="radio" id="obligatoire"
    			 name="obligatoire" value="obligatoire">
   				 <label for="obligatoire">Obligatoire</label>

  			 	 <input type="radio" id="optionnelle"
    			 name="optionnelle" value="optionnelle">
    			<label for="optionnelle">Optionnelle</label>

			<select name="type_question" size="1">
				<option>TEXTE</option>
				<option>NUMERIQUE</option>
				<option>ALPHANUMERIQUE</option>
				<option>CHOIX MULTIPLES</option>
				<option>MAIL</option>
				<option>IP</option>
				<option>DATE</option>
			</select>

		<h3>Réponse</h3>
		<input type="text" placeholder="Votre réponse" size="34" id="reponse" />
			
			<input type="submit" name="add" value="Ajouter une question au formualaire">

</form>

		<form method="post" action="fpsaisietraitement.php">
<label>Mot-clef :</label>
<input type="text" name="question"/><br />
             
<div id="addInput"></div>
<input type="button" value="Ajouter un mot-clef" onClick="add();" />
 
<input type="submit" value="Valider" />
</form>      


		
</body>
</html>