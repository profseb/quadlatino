<?php


	$list = $app->getTable("atividades");


?>

<h3>Nova Atividade</h3>

<form action="/quadlatino/app/?module=atividade&action=new" method="post">

	<table width="50%" border="0" cellpadding="5" cellspacing="0">
		<tr>
			<th align="right">Atividade:</th>
			<td>
				<input type="text" name="atividade" size="50" placeholder="Descrição da Atividade. Ex: Tecnologia A/Metodologia B" />
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

<h3>Atividades - Listagem</h3>

<table width="50%" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th>ID</th>
		<th>Atividade</th>		
	</tr>
	<?php foreach($list as $key=>$item) { ?>
	<tr>
		<td><?=$item["id_atividade"]?></td>
		<td><?=$item["atividade"]?></td>		
	</tr>
	<?php } ?>
</table>

