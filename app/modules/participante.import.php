<?php

	if (!empty($_POST)) {

		$itens = explode("\n",$_POST["lista"]);
		
		$ps = array();
		
		foreach ($itens as $key => $item) {
			$p = mb_strtoupper(trim($item));
			if ($p != "") {
				$ps[] = $p;
			}
		}

		$itens = $ps;

		if ($_POST["shuffle"] == 1) {
			shuffle($itens);
		}

		if ($_POST["short"] == 1) {
			$parts = array();
			foreach($itens as $key=>$item) {
				$nomes = explode(" ",$item);
				$parts[] = trim(mb_strtoupper($nomes[0] . " " . $nomes[count($nomes)-1]));

			}
			$itens = $parts;
		}

		if ($_POST["double"] == 1) {
			$duplas = array();

			foreach($itens as $key=>$item) {
				if ($key % 2 == 1) {
					$duplas[] = $itens[$key-1] . " / " . $itens[$key];
				}
			}

			if (count($itens) % 2 == 1) {
				$duplas[] = $item;
			}

			$itens = $duplas;
		}

		$grupo[] = $_POST["grupo"];	

		$id_grupo = $app->insert("grupos",$grupo);
				
		foreach($itens as $key=>$item) {			
			$parts = array($id_grupo,$item, 0);
			$app->insert("participantes",$parts);
		}

		App::redirect("participante","");
		
			
	}

	


?>

<h3>Participantes - Importação</h3>

<form action="/quadlatino/app/?module=participante&action=import" method="post">

<table width="50%" border="0" cellpadding="5" cellspacing="0">
	<tr>
		<th align="right">Grupo:</th>
		<td>
			<input type="text" name="grupo" size="30" placeholder="Descrição para a lista de participantes" />
		</td>			
	</tr>
	<tr>
		<th align="right">Opções:</th>
		<td>
			<label>
				<input type="checkbox" name="shuffle" value="1" /> 
				Embaralhar
			</label> <br />
			<label>
				<input type="checkbox" name="double" value="1" /> Duplas
			</label> <br />
			<label>
				<input type="checkbox" name="short" value="1" /> Encurtar Nomes
			</label>
		</td>			
	</tr>
	<tr>		
		<th align="right">Lista:</th>
		<td>
			Cole a relação de participantes abaixo<br />
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
