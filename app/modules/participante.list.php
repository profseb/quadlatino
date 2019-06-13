<?php

	$sql = "select * from participantes p, grupos g where p.id_grupo = g.id_grupo";

	$list = $app->query($sql);


?>

<h3>Participantes (Listagem)</h3>

<a href="/quadlatino/app/?module=participante&action=import">Importar</a>

<br />
<br />

<table width="50%" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th>ID</th>
		<th>Descrição</th>
		<th>Grupo</th>
	</tr>
	<?php foreach($list as $key=>$item) { ?>
	<tr>
		<td><?=$item["id_participante"]?></td>
		<td><?=$item["participante"]?></td>
		<td><?=$item["grupo"]?></td>
		<!--<td><a href="index.php?module=experimento&action=detail&id=<?=$item["id_experimento"]?>">Detalhes</a></td>-->
	</tr>
	<?php } ?>
</table>
