
<?php 

	if (empty($_GET["action"])) {			
		require_once "modules/atividade.list.php";
	}
	
	if ($_GET["action"] == "new") {			
		
		if (!empty($_POST)) {
			$app->insert("atividades",array($_POST["atividade"]));
		}	

		App::redirect("atividade","");

	}


?>

	