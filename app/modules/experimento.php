
<?php 

	if (empty($_GET["action"])) {			
		require_once "modules/experimento.list.php";
	}

	if ($_GET["action"] == "detail") {			
		require_once "modules/experimento.detail.php";
	}


?>

	