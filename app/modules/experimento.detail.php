<?php

	$sql = "select * from experimentos where id_experimento = {$_GET["id"]}";

	$item = $app->query($sql);

?>

<h3>Experimentos (Detalhes #<?=$_GET["id"]?>)</h3>

<table width="50%" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th>ID</th>
		<th>Descrição</th>
		<th>Ações</th>
	</tr>
	<?php foreach($item as $key=>$item) { ?>
	<tr>
		<td><?=$item["id_experimento"]?></td>
		<td><?=$item["descricao"]?></td>
		<td><a href="index.php?module=experimento&action=detail&id=<?=$item["id_experimento"]?>">Detalhes</a></td>
	</tr>
	<?php } ?>
</table>
