<?php

	$id = (int)$_GET["id"];
	$experimento = $app->getOne("experimentos","id_experimento = $id");

?>

<h3>Experimento #<?=$id?> - Detalhes</h3>

<h4><?=$experimento["descricao"]?> (<?=$experimento["local"]?>)</h4>

<?php
	
	$sessoes = $app->query("select id_sessao, a1.atividade atv1, a2.atividade atv2 from sessoes s, atividades a1, atividades a2 where s.id_atividade1 = a1.id_atividade and s.id_atividade2 = a2.id_atividade and id_experimento = $id");

?>

<h3>Nova Sessão</h3>

<?php

	$ativs = $app->getTable("atividades");

?>

<form action="/quadlatino/app/?module=experimento&action=new-session" method="post">

	<table width="50%" border="0" cellpadding="5" cellspacing="0">
		<tr>
			<th align="right">Atividade 1:</th>
			<td>
				<select name="id_atividade1" id="atv1" onchange="validActivity()">
					<option value="">Selecione</option>
					<?php foreach($ativs as $key=>$it) { ?>
					<option value="<?=$it["id_atividade"]?>"><?=$it["atividade"]?></option>				
					<?php } ?>
				</select>
			</td>							
		</tr>
		<tr>			
			<th align="right">Atividade 2:</th>
			<td>
				<select name="id_atividade2" id="atv2" onchange="validActivity()">
					<option value="">Selecione</option>
					<?php foreach($ativs as $key=>$it) { ?>
					<option value="<?=$it["id_atividade"]?>"><?=$it["atividade"]?></option>				
					<?php } ?>
				</select>
			</td>				
		</tr>
		
		<tr>
			<td>&nbsp;</td>
			<td>
				<span class="error" id="error-session">Escolha atividades diferentes uma da outra!</span>
				<input type="hidden" name="id_experimento" value="<?=$id?>">
				<input type="submit" id="btn-save-session" disabled value="Salvar" />
			</td>
		</tr>
	</table>
</form>

<h3>Sessões deste Experimento</h3>

<table width="40%" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th>ID</th>
		<th>Atividade 1</th>
		<th>Atividade 2</th>		
	</tr>
	<?php foreach($sessoes as $key=>$it) { ?>
	<tr>
		<td align="center"><?=$it["id_sessao"]?></td>
		<td><?=$it["atv1"]?></td>
		<td><?=$it["atv2"]?></td>		
	</tr>
	<?php } ?>
</table>


<?php

	$atividades = $app->query("select * from sessoes_atividades sa, sessoes s, atividades a where sa.id_atividade = a.id_atividade and s.id_sessao = sa.id_sessao and s.id_experimento = $id order by id_sess_ativ");

	foreach($atividades as $key=>$it) {
		$id_sess_ativ = $it["id_sess_ativ"];
		$res = $app->query("select count(id_sess_ativ) as quant_participantes from atividades_participantes where id_sess_ativ = $id_sess_ativ group by id_sess_ativ");		
		$atividades[$key]["quant_participantes"] = $res[0]["quant_participantes"];
	}

?>

<h3>Atividades do Experimento <a href="#" onclick="document.getElementById('quadrados').style.display = 'block'" >(Mostrar Arranjos)</a></h3>

<table width="60%" border="1" cellpadding="5" cellspacing="0">
	<tr>
		<th>ID</th>
		<th>SESS</th>
		<th>Atividade</th>
		<th>Participantes</th>
		<th>Data/Hora de Realização</th>
		<th>Local</th>
		<th>Ações</th>
	</tr>
	<?php foreach($atividades as $key=>$it) { ?>
	<tr>
		<td align="center"><?=$it["id_sess_ativ"]?></td>
		<td align="center"><?=$it["id_sessao"]?></td>
		<td><?=$it["atividade"]?></td>
		<td align="center"><?=($it["quant_participantes"]) > 0 ? $it["quant_participantes"]:"N/A"?></td>
		<td align="center"><?=$it["data_realizacao"]?></td>
		<td><?=$it["local"]?></td>
		<td><a href="index.php?module=experimento&action=activity&id=<?=$it["id_sess_ativ"]?>">Detalhes</a></td>
	</tr>
	<?php } ?>
</table>

<?php

	$grupos = $app->getTable("grupos");

?>

<h3>Sortear Participantes</h3>

<form action="/quadlatino/app/?module=experimento&action=sort" method="post">

<table width="50%" border="0" cellpadding="5" cellspacing="0">
	<tr>
		<th align="right">Grupo:</th>		
		<td>
			<select name="grupo" onchange="validGroup(this)">
				<option value="">Selecione</option>
				<?php foreach($grupos as $key=>$it) { ?>
				<option value="<?=$it["id_grupo"]?>"><?=$it["grupo"]?></option>				
				<?php } ?>
			</select>

			<input type="hidden" name="id_experimento" value="<?=$id?>">
			<input type="submit" id="btn-executar" disabled="" value="Executar Sorteio">
		</td>			
	</tr>
</table>

</form>

<script type="text/javascript">

	function $(el) {
		return document.getElementById(el);
	}
	
	function validGroup(el) {

		if (el[el.selectedIndex].value != "") {
			$("btn-executar").disabled = "";
		} else {
			$("btn-executar").disabled = "disabled";			
		}

	}

	function validActivity(el) {

		var ativ1 = $("atv1")[$("atv1").selectedIndex].value;
		var ativ2 = $("atv1")[$("atv2").selectedIndex].value;

		$("error-session").style.display = "none";

		if (ativ1 != "" && ativ2 != "") {
			if (ativ1 != ativ2) {
				$("btn-save-session").disabled = "";
			} else {
				$("btn-save-session").disabled = "disabled";
				$("error-session").style.display = "block";
			}
		} else {
			$("btn-save-session").disabled = "disabled";
		}

	}

</script>


<div id="quadrados" style="display: none;">

	<center><input type="button" style="background: red;color:white;font-weight: bold;padding:5px 10px" value="Fechar esta Janela" onclick="document.getElementById('quadrados').style.display = 'none'" />
		<br />
		<br />
	</center>

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