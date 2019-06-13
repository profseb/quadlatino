<?php

	$sql = "select * from participantes p, grupos g where p.id_grupo = g.id_grupo";

	$list = $app->query($sql);


?>

<h3>Participantes (Importação)</h3>

<form action="/quadlatino/app/?module=participante&action=import">

<table width="50%" border="0" cellpadding="5" cellspacing="0">
	<tr>
		<td align="right">Grupo:</td>
		<td>
			<input type="text" name="grupo" size="30" placeholder="Descrição para a lista de participantes" />
		</td>			
	</tr>
	<tr>		
		<td align="right">Lista:</td>
		<td>
			Cole a relação de alunos abaixo<br />
			<textarea rows="20" style="width:99%" name="lista"></textarea>
		</td>	
	</tr>
	<tr>
		<td colspan="2" align="right">
			<input type="submit" value="Importar" />
		</td>
	</tr>
</table>

</form>
