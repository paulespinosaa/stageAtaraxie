<link rel="stylesheet" href="include/bootstrap.min.css">
<link rel="stylesheet" href="include/styles.css">
	<?php include("./include/header.php"); ?><br>
    <?php include("./include/menus.php"); ?><br>
<form action='affForm.php'>
Taille du mot de passe : <input type='text' Name='nbC' value='5'>
<br>
Type de mot de passe :     <select name='typeMdp'>
<option value='1'>Chiffres uniquement</option>
<option value='2'>Lettres uniquement</option>
<option value='3'>Chiffres et lettres</option>
<option value='4'>Chiffres, lettres et caractères spéciaux</option>
</select>
<br>
<input type='submit' value='Générer'>
</form>
	<?php include("./include/footer.php"); ?>