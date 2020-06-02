<link rel="stylesheet" href="../include/bootstrap.min.css">
<link rel="stylesheet" href="../include/styles.css">
	<?php include("../include/header.php"); ?><br>
    <?php include("../include/menus.php"); ?><br>

<form action='affForm.php' method="post">
<h1>Générateur de mot de passe </h1>
Taille du mot de passe : <input type='text' name='nbC' value='12'>
<br>
Nombre de mot de passe : <input type='text' name='nbMdp' value='1'>
<br>
Type de mot de passe :     <select name='typeMdp'>
<option value='1'>Chiffres uniquement</option>
<option value='2'>Lettres uniquement</option>
<option selected='selected' value='3'>Chiffres et lettres </option>
<option value='4'>Chiffres, lettres et caractères spéciaux</option>
</select><br><br>
<input type="checkbox" name="lm" checked="checked">Inclure lettres majuscules
<br><br>
<input type='submit' value='Générer'>
</form>
<?php include("../include/footer.php"); ?>
	