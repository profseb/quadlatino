<?php

require_once "includes/App.class.php";

$app = new App();

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Quadrado Latino - Experimento</title>
</head>
<body>

	<h2>Quadrado Latino - Experimento</h2>


	<ul>
		<li><a href="/quadlatino/app/">Início</a></li>
		<li><a href="/quadlatino/app/?module=participante">Participantes</a></li>
	</ul>



	<?php 


		if (empty($_GET["module"]) or $_GET["module"] == "experimento") { 
			require_once "modules/experimento.php";
		}

		if ($_GET["module"] == "participante") { 
			
			require_once "modules/participante.php";
		}
	?>


</body>
</html>