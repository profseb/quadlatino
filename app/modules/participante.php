<?php 

	if (empty($_GET["action"])) {			
		require_once "modules/participante.list.php";
	}

	if ($_GET["action"] == "import") {			
		require_once "modules/participante.import.php";
	}


?>

	