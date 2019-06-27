<?php

	if (!empty($_POST)) {
	
		$id_experimento = (int)$_POST["id_experimento"];
		$id_grupo = (int)$_POST["grupo"];

		$participantes = $app->query("select * from participantes where sorteado = 0 order by rand()");

		$sessoes = $app->query("select * from sessoes where id_experimento = $id_experimento");

		$gcount = count($participantes)/count($sessoes);

		$replis = array();

		while(count($participantes) > 0) {

			foreach($sessoes as $key=>$sess) {

				$sessativs = $app->query("select * from sessoes_atividades sa, sessoes s where s.id_sessao = {$sess["id_sessao"]} and s.id_experimento = $id_experimento and s.id_sessao = sa.id_sessao");

				$p = array_shift($participantes);

				

				foreach($sessativs as $k=>$s) {
		
					$id_ativ_part = $app->insert("atividades_participantes",array($s["id_sess_ativ"],$p["id_participante"]));

					$replis[] = $id_ativ_part;

					if (count($replis) == 4) {
						$app->insert("quadrados_replicas",array(1,$replis[0],$replis[1],$replis[2],$replis[3]));
						$replis = array();
					}

					$app->update("participantes",array("sorteado"=>1),"id_participante = {$p["id_participante"]}");
				

				}

			}

		}

	}


?>

<h3>Experimento #<?=$id_experimento?> - Sorteio</h3>

<h4>Sorteio Realizado com sucesso!</h4>

<a href="/quadlatino/app/?module=experimento&action=detail&id=<?=$id_experimento?>">
	Voltar
</a>
