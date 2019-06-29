<?php

require_once "includes/App.class.php";

$app = new App();

if (!empty($_GET["proved"])) {
	
	$app->execSQL("update atividades_respostas set proved = 1 where id_resposta in ({$_GET["proved"]})");
	exit;
}

$id = $_GET["id"];

$itens = $app->query("select * from atividades_respostas ar, atividades_participantes ap, participantes p, sessoes_atividades sa, atividades a, unplugged_fases uf where uf.game = ar.game and uf.level = ar.level and ap.id_ativ_part = ar.id_ativ_part and p.id_participante = ap.id_participante and sa.id_sess_ativ = ap.id_sess_ativ and a.id_atividade = sa.id_atividade and ap.id_sess_ativ = $id and proved = 0");

$grupos = array();
$ids = array();

foreach($itens as $key=>$item) {

	$grupos[$item["solution_text"]][] = $item;
	$ids[$item["solution_text"]][] = $item["id_resposta"];

}


foreach($grupos as $k=>$its) {
	$grupos[$k][0]["ids"] = implode(",",$ids[$k]);
}



?>
<!DOCTYPE html>
<html>
<head>
	<title>Tirando a Prova</title>
	<meta charset="utf-8" />
	<style type="text/css">
		body {margin:0;padding:20px;font-family: arial;font-size: 80%;}
		h2 {font-size: 140%;}
		p {font-weight: bold;color:blue;}
		strong {color:red;}
		label {font-weight: normal;vertical-align: middle;}
		

	</style>
</head>
<body>

<h2><?=$item["atividade"]?></h2>

<h3>Respostas Agrupadas (<?=count($grupos)?>)</h3>

<table border="1" cellspacing="0" cellpadding="5">
	<tr>
		<th>Participantes</th>
		<th>Jogo/Fase</th>
		<th>Resposta</th>
		<th>Visualizar</th>
	</tr>

	<?php foreach($grupos as $key=>$respostas) { ?>
	<tr>
		<td>
			<ul>
				<?php foreach($respostas as $key=>$item) { ?>
				<li><?=$item["participante"]?></li>
				<?php } ?>
			</ul>			
		</td>
		<td>
			<?=($respostas[0]["game"] == "bee") ? "Abelha":"Angry Birds"?> (Fase <?=$respostas[0]["level"]?>)
		</td>
		<td>
			<img width="100" src="/quadlatino/app/pictures/<?=$respostas[0]["image"]?>" />
		</td>
		<td>
			<a onclick="checkProved('<?=$respostas[0]["ids"]?>')" href="http://mycode.org/studio/<?=$respostas[0]["game"]?>/<?=$respostas[0]["url"]?>?solution=<?=$respostas[0]["solution_text"]?>&play=1" target="_blank">Executar Solução</a>
		</td>
	</tr>

	<?php } ?>

	<?php if (count($grupos) == 0) { ?>

		<tr>
			<td colspan="4" align="center">
				<a href="execute.php?id=<?=$_GET["id"]?>">Jogar mais fases</a>
			</td>
		</tr>

	<?php } ?>
	
</table>

<script type="text/javascript">
	
	function checkProved(id) {

		iframe = document.createElement("iframe");
		iframe.src = "/quadlatino/app/prova.php?proved=" + id;
		//iframe.style.display = "none";

		document.getElementsByTagName("body")[0].appendChild(iframe);

		setTimeout(function() {
			document.getElementsByTagName("body")[0].removeChild(iframe);
			document.location.reload();
		},5000);

	}

</script>

</body>
</html>