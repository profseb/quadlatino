
<?php 

	if (empty($_GET["action"])) {			
		require_once "modules/experimento.list.php";
	}

	if ($_GET["action"] == "detail") {			
		require_once "modules/experimento.detail.php";
	}

	if ($_GET["action"] == "sort") {			
		require_once "modules/experimento.sort.php";
	}

	if ($_GET["action"] == "activity") {			
		require_once "modules/experimento.activity.php";
	}

	if ($_GET["action"] == "new") {			
		
		if (!empty($_POST)) {
			$app->insert("experimentos",array($_POST["descricao"],$_POST["local"]));
		}	

		App::redirect("experimento");

	}

	if ($_GET["action"] == "new-session") {			
		
		if (!empty($_POST)) {
			$id_sessao = $app->insert("sessoes",array($_POST["id_atividade1"],$_POST["id_atividade2"],$_POST["id_experimento"]));

			$app->insert("sessoes_atividades",array($id_sessao, $_POST["id_atividade1"], '0000-00-00 00:00:00',''));
			$app->insert("sessoes_atividades",array($id_sessao, $_POST["id_atividade2"], '0000-00-00 00:00:00',''));

		}	

		App::redirect("experimento","detail",$_POST["id_experimento"]);

	}

	if ($_GET["action"] == "scheduling") {			
		
		if (!empty($_POST)) {
			$app->update("sessoes_atividades",array("data_realizacao"=>$_POST["data_realizacao"],"local"=>$_POST["local"]),"id_sess_ativ = {$_POST["id_sess_ativ"]}");
		}	

		App::redirect("experimento","detail",$_POST["id_experimento"]);

	}


?>

	