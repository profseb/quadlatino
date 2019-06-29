<?php


	$id = (int)$_GET["id"];

	$item = $app->getOne("sessoes_atividades sa, atividades a, sessoes s","sa.id_sess_ativ = $id and a.id_atividade = sa.id_atividade and s.id_sessao = sa.id_sessao");

	$itens = $app->query("select * from atividades_participantes ap, participantes p where ap.id_participante = p.id_participante and id_sess_ativ = $id");

	

?>

<h3>Atividade da Sessão #<?=$id?> - Detalhes</h3>

<h4><?=$item["atividade"]?> em <?=$item["data_realizacao"]?> no(a) (<?=$item["local"]?>)</h4>

<h3>Agendar Atividade</h3>

<form action="/quadlatino/app/?module=experimento&action=scheduling" method="post">

	<table width="50%" border="0" cellpadding="5" cellspacing="0">
		<tr>
			<th align="right">Data de Realização:</th>
			<td>
				<input type="text" name="data_realizacao" size="15" value="<?=$item["data_realizacao"]?>" />
			</td>			
		</tr>
		<tr>
			<th align="right">Local:</th>
			<td>
				<input type="text" name="local" size="30" value="<?=$item["local"]?>" />
			</td>			
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
				<input type="hidden" name="id_sess_ativ" value="<?=$id?>">
				<input type="hidden" name="id_experimento" value="<?=$item["id_experimento"]?>">
				<input type="submit" value="Agendar" />
			</td>
		</tr>
	</table>
</form>

<h3>Participantes desta Atividade 
	<a href="/quadlatino/app/execute.php?id=<?=$id?>" target="_blank">(Executar Atividade)</a> - 
	<a href="/quadlatino/app/prova.php?id=<?=$id?>" target="_blank">(Acompanhar Atividade)</a>
</h3>

<table width="50%" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th>ID</th>
		<th>Participante</th>				
	</tr>
	<?php foreach($itens as $key=>$it) { ?>
	<tr>
		<td align="center"><?=$it["id_participante"]?></td>
		<td><?=$it["participante"]?></td>		
	</tr>
	<?php } ?>
</table>

<br />

<a href="/quadlatino/app/?module=experimento&action=detail&id=<?=$item["id_experimento"]?>">Voltar</a>

	