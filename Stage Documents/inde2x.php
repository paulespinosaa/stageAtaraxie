<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Générateur de formulaire</title>
	<script type="text/javascript">
function add()
    {
    var input = addInput.innerHTML
    addInput.innerHTML = input + '<label>Question : </label><input type="text" name="formulaire" /><br><br />\n ';

    var input = addInput.innerHTML
     addInput.innerHTML = input + '<label>Obligatoire : </label><input type="radio" name="obligatoire" <label>Optionnelle : </label><input type="radio" name="optionnelle" /> <br><br />\n';

   	var input = addInput.innerHTML
   		addInput.innerHTML = input + '<label>Réponse : </label><input type="text" name="reponse" /><br><br/><br><br />\n';

   	var select = addSelect.innerHTML
   		addSelect.innerHTML = select + '<select><option>test1</option>' 
    }
</script>

	<script type="text/javascript">
function delete() {
 var field = document.getElementById('formulaire');
 document.getElementById('deleteInput').removeChild(formulaire); 
 }</script>
	</script>

</head>
<body>

		<h2>Veuillez saisir le nom de votre formulaire</h2>
		<label for="nom_form">Nom formulaire</label>
		<input type="text" placeholder="Nom formulaire" size="34" id="nom_form" />

<form method="POST" action="" class="formulaire" name="formulaire">
		<h3>Question</h3>
		<input type="text" placeholder="Votre question" size="34" id="question" name="question" />


		<input type="radio" id="obligatoire" name="obligatoire" value="obligatoire">
   				 <label for="obligatoire">Obligatoire</label>

  			 	 <input type="radio" id="optionnelle"
    			 name="optionnelle" value="optionnelle">
    			<label for="optionnelle">Optionnelle</label>

			<select name="addSelect" id="options" size="1">
				<option>TEXTE</option>
				<option>NUMERIQUE</option>
				<option>ALPHANUMERIQUE</option>
				<option>CHOIX MULTIPLES</option>
				<option>MAIL</option>
				<option>IP</option>
				<option>DATE</option>
			</select>

		<h3>Réponse</h3>
		<input type="text" placeholder="Votre réponse" size="34" id="reponse" name="reponse" <?php if(isset($_POST['delete']) AND $_POST['delete']=='supprimer')?>  />
			<br> <br />

</form>

		<form method="post" action="">

             
			<div id="addInput"></div>
				<input type="button" value="Ajouter une question à votre formulaire" onClick="add();" />
 

					<br><br />

			<div id="deleteInput"></div>
				<input type="button" value="Supprimer" onClick="delete();" name="delete"/>

		</form>      


		
</body>
</html>