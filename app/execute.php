<?php

require_once "includes/App.class.php";

$app = new App();

$id = (int)$_GET["id"];

$item = $app->getOne("sessoes_atividades sa, atividades a, sessoes s","sa.id_sess_ativ = $id and a.id_atividade = sa.id_atividade and s.id_sessao = sa.id_sessao");

$itens = $app->query("select * from atividades_participantes ap, participantes p where ap.id_participante = p.id_participante and id_sess_ativ = $id");
	

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Executando - <?=$item["atividade"]?></title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">


	<style type="text/css">
		body {margin:0;padding:20px;font-family: arial;font-size: 80%;}
		h2 {font-size: 140%;}
		p {font-weight: bold;color:blue;}
		strong {color:red;}
		label {font-weight: normal;vertical-align: middle;}
		#blocks input {font:bold 30px courier new;padding:10px 20px;}
		#blocks td {text-align: center;}
		button.block {border:none;font:bold 18px courier new;color:yellow;display: inline-block;padding:6px 12px;background: #00B0BD;}
		.get {background:#FC9A03 !important;color:black !important}
		.make {background:#FFE200 !important;color:blue !important;}
		.last-line td {padding-top:12px;}

		a.clear {display:inline-block;background: red;color:white;padding:10px 20px;text-decoration: none;}
		#splash {display:none;position:absolute;background: black;width:100%;left:0;top: 0;height: 1000px;opacity: 0.6;}
		#container-blocks {display:none;width:87%;margin:10px;position: absolute;top:0;left:0;z-index: 10;background: white;padding:4%;}
		a.close {border-radius:50%;font:bold 14px courier new;background: black;color:white;text-decoration: none;padding:5px 8px;float:right;}

		#upload-area {display: none;}

	</style>
</head>
<body>

	<form action="/quadlatino/app/save.php" method="post">

		<h2><?=$item["atividade"]?></h2>

		<h3>Game:
			&nbsp;&nbsp;&nbsp;&nbsp;
			<label><input type="radio" name="game" value="bee" checked> Abelha</label>
			<label><input type="radio" name="game" value="birds"> Angry Birds</label>
		</h3>

		<table class="levels" width="100%" border="0">
			<tr>
				<td rowspan="5" width="60" valign="top">
					<h3>Level:</h3>
				</td>
			</tr>
			<tr>
				<td>
					<label><input type="radio" name="level" value="1"> 1</label>
				</td>
				<td>
					<label><input type="radio" name="level" value="4"> 4</label>
				</td>
				<td>
					<label><input type="radio" name="level" value="7"> 7</label>
				</td>
				<td>
					<label><input type="radio" name="level" value="10"> 10</label>
				</td>
			</tr>
			<tr>
				<td>
					<label><input type="radio" name="level" value="2"> 2</label>
				</td>
				<td>
					<label><input type="radio" name="level" value="5"> 5</label>
				</td>
				<td>
					<label><input type="radio" name="level" value="8"> 8</label>
				</td>
				<td>
					<label><input type="radio" name="level" value="11"> 11</label>
				</td>
			</tr>
			<tr>
				<td>
					<label><input type="radio" name="level" value="3"> 3</label>
				</td>
				<td>
					<label><input type="radio" name="level" value="6"> 6</label>
				</td>
				<td>
					<label><input type="radio" name="level" value="9"> 9</label>
				</td>
				<td>
					<label><input type="radio" name="level" value="12"> 12</label>
				</td>
				
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td>
					<label><input type="radio" name="level" value="13"> 13</label>
				</td>			
			</tr>
			
		</table>
		

		<h3>Participantes</h3>

		<table border="1" cellpadding="10" cellspacing="0" width="100%">
			<tr>
				<th>ID</th>
				<th>Participante</th>				
				<th>Ações</th>							
			</tr>
			<?php foreach($itens as $key=>$it) { ?>
			<tr>
				<td align="center">
					<?=$it["id_ativ_part"]?>
					<input type="hidden" name="id[]" value="<?=$it["id_ativ_part"]?>" />		
				</td>
				<td><?=str_replace(" / "," e <br />",$it["participante"])?></td>		
				<td align="center" id="upload-<?=$it["id_ativ_part"]?>">		
					<input type="button" value="Foto" onclick="getPicture(<?=$it["id_ativ_part"]?>)" />
				</td>				
			</tr>
			<?php } ?>
		</table>

		<br>

		<input type="hidden" name="id_sess_ativ" value="<?=$id?>" />
		<input type="submit" value="Enviar Soluções para Análise" />

	</form>

	<div id="container-blocks">

		<a href="javascript:void(0)" class="close" onclick="closeBlocks()">X</a>

		<br clear="all" />
		<br clear="all" />
		

		<table id="blocks" border="0" width="100%">
			<tr>
				<td>
					
				</td>
				<td><input type="button" value="N" onclick="addBlock(this)" /></td>
				<td>&nbsp;</td>
				
				<td width="40%">
					<input type="button" value="G" onclick="addBlock(this)"  />
				</td>
			</tr>
			<tr>
				<td style="text-align:right">
					<input type="button" value="O" onclick="addBlock(this)"  />
				</td>
				<td><a href="javascript:void(0)" onclick="clearBlocks()" class="clear">C</a></td>
				<td style="text-align:left">
					<input type="button" value="L" onclick="addBlock(this)"  />
				</td>
							
			</tr>
			<tr>
				<td>
					
				</td>
				<td><input type="button" value="S" onclick="addBlock(this)"  /></td>
				<td></td>			
				<td>
					<input type="button" value="M" onclick="addBlock(this)"  />
				</td>
			</tr>
			<tr class="last-line">
				
				<td colspan="4" id="result" style="text-align: left">
					
				</td>
						
			</tr>
		</table>

	</div>

	<script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript">
		
		var blockList = [];
		var solutionId = "";
		var solution = "";


		function showBlocks(id) {
			$("#splash, #container-blocks").show();			
			solutionId = id;
		}

		function addBlock(el) {

			blockList.push(el.value);

			console.log(blockList);

			renderBlocks();

		}

		function renderBlocks() {
			solution = "";

			var lines = "";
			for(i in blockList) {
				var val = blockList[i];
				className = "letter";
				if (val == "G") {
					className = "get";
				} else if (val == "M") {
					className = "make";
				}
				lines += '<button onclick="removeBlock(' + i + ')" class="block ' + className + '">' + blockList[i] +'</button> ';
				solution += val + "-";
			}
			$("#result").html(lines);
		}

		function removeBlock(idx) {
			blockList.splice(idx,1);
			renderBlocks();
		}

		function clearBlocks() {
			blockList.length = 0;
			renderBlocks();
		}

		function closeBlocks() {

			$("#upload-"+solutionId).append('<input type="hidden" name="solution[]" value="'+ solution +'" />');
			

			solution = "";
			solutionId = "";
			clearBlocks();

			$("#splash, #container-blocks").hide();
			
		}

		function getPicture(id) {

			iframe = document.createElement("iframe");
			iframe.name = "iframe-"+id;

			$("#upload-area").append(iframe);


			var form = document.createElement("form");
			form.action = "/quadlatino/app/upload.php";
			form.method = "post";
			form.enctype = "multipart/form-data";
			form.target = "iframe-" + id;

			file = document.createElement("input");
			file.type = 'file';
			file.name = 'foto';

			el = document.createElement("input");
			el.type = 'hidden';
			el.name = 'id';
			el.value = id;

			file.onchange = function() {				
				form.submit();
				showBlocks(id);
			}			
			
			file.click();

			form.appendChild(el);
			form.appendChild(file);

			$("#upload-area").append(form);
		

		}

		

	</script>

	<div id="splash">

	</div>

	<div id="upload-area">

	</div>

</body>
</html>