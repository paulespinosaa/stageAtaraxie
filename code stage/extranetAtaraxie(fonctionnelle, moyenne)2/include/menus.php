<div id="sidebar" class="sidebar-offcanvas">
    <div style="padding-top: 30px;" class="col-md-12">
        <ul class="nav nav-pills flex-column"><br>
            
			<?php
				// récupération du nom du script sans le reste du chemin;
				$page = pathinfo($_SERVER['PHP_SELF'], PATHINFO_BASENAME);
				//echo $page;
				echo '<li class="nav-item">';
				if ($page == 'index.php') {
					echo '<a class="nav-link active" href="index.php">Accueil</a>';
				}
				else {
					echo '<a class="nav-link" href="index.php">Accueil</a>';
				}
				echo '</li>';
				
				
				echo '<li class="nav-item">';
				if ($page == 'Formulaire.php') {
					echo '<a class="nav-link active" href="Formulaire.php">Formulaire</a>';
				}
				else {
					echo '<a class="nav-link" href="Formulaire.php">Formulaire</a>';
				}
				echo '</li>';	
			?>
        </ul>
    </div>
</div>