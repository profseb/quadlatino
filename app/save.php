<?php

require_once "includes/App.class.php";

$app = new App();

foreach($_POST["id"] as $key=>$id) {

	$app->insert("atividades_respostas",array($id, $_POST["game"], $_POST["level"], $_POST["foto"][$key], $_POST["solution"][$key],0));

}

App::goToURL("prova.php?id={$_POST["id_sess_ativ"]}");

?>