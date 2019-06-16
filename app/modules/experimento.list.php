<?php


	$list = $app->getTable("experimentos");


?>

<h3>Novo Experimento</h3>

<form action="/quadlatino/app/?module=experimento&action=new" method="post">

	<table width="50%" border="0" cellpadding="5" cellspacing="0">
		<tr>
			<th align="right">Descrição:</th>
			<td>
				<input type="text" name="descricao" size="50" placeholder="Descrição para o experimento. Ex: Quadrado Latino 1" />
			</td>			
		</tr>
		<tr>
			<th align="right">Local:</th>
			<td>
				<input type="text" name="local" size="40" placeholder="Local de realização. Ex: Campus do IFMA - SRM" />
			</td>			
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>
				<input type="submit" value="Salvar" />
			</td>
		</tr>
	</table>
</form>

<h3>Experimentos - Listagem</h3>

<table width="50%" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th>ID</th>
		<th>Descrição</th>
		<th>Local</th>
		<th>Ações</th>
	</tr>
	<?php foreach($list as $key=>$item) { ?>
	<tr>
		<td><?=$item["id_experimento"]?></td>
		<td><?=$item["descricao"]?></td>
		<td><?=$item["local"]?></td>
		<td><a href="index.php?module=experimento&action=detail&id=<?=$item["id_experimento"]?>">Detalhes</a></td>
	</tr>
	<?php } ?>
</table>

