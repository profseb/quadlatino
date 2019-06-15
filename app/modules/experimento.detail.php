<?php


	$id = (int)$_GET["id"];

	$item = $app->getOne("experimentos","id_experimento = $id");

	$itens = $app->query("select * from sessoes_atividades sa, atividades a where sa.id_atividade = a.id_atividade and id_experimento = $id order by id_sess_ativ");

	foreach($itens as $key=>$it) {
		$id = $it["id_sess_ativ"];
		$res = $app->query("select count(id_sess_ativ) as quant_participantes from atividades_participantes where id_sess_ativ = $id group by id_sess_ativ");		
		$itens[$key]["quant_participantes"] = $res[0]["quant_participantes"];
	}

?>

<h3>Experimento #<?=$id?> - Detalhes</h3>

<h4><?=$item["descricao"]?> (<?=$item["local"]?>)</h4>

<h3>Atividades do Experimento</h3>

<table width="50%" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th>ID</th>
		<th>Atividade</th>
		<th>Participantes</th>
		<th>Data/Hora de Realização</th>
		<th>Local</th>
		<th>Ações</th>
	</tr>
	<?php foreach($itens as $key=>$it) { ?>
	<tr>
		<td align="center"><?=$it["id_sess_ativ"]?></td>
		<td><?=$it["atividade"]?></td>
		<td align="center"><?=$it["quant_participantes"]?></td>
		<td align="center"><?=$it["data_realizacao"]?></td>
		<td><?=$it["local"]?></td>
		<td><a href="index.php?module=experimento&action=detail&id=<?=$item["id_experimento"]?>">Detalhes</a></td>
	</tr>
	<?php } ?>
</table>


<div id="quadrados">

	<h3 align="center">Arranjo de Quadrado 1</h3>

	<table width="500" border="1" cellpadding="5" cellspacing="0" align="center">
		<tr>
			<td></td>
			<td>ABELHA</td>
			<td>ANGRY BIRDS</td>
		</tr>
		<tr>
			<td>Unidade Experimental 1</td>
			<td>UNPLUGGED</td>
			<td>COMPUTADOR</td>
		</tr>
		<tr>
			<td>Unidade Experimental 2</td>
			<td>COMPUTADOR</td>
			<td>UNPLUGGED</td>
		</tr>
	</table>

	<h3 align="center">Arranjo de Quadrado 2</h3>

	<table width="500" border="1" cellpadding="5" cellspacing="0" align="center">
		<tr>
			<td></td>
			<td>ANGRY BIRDS</td>
			<td>ABELHA</td>
		</tr>
		<tr>
			<td>Unidade Experimental 1</td>
			<td>UNPLUGGED</td>
			<td>COMPUTADOR</td>
		</tr>
		<tr>
			<td>Unidade Experimental 2</td>
			<td>COMPUTADOR</td>
			<td>UNPLUGGED</td>
		</tr>
	</table>

	
</div>