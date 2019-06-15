<?php

$file = file("participantes.txt");

$participantes = array();

foreach($file as $key=>$item) {
	$nomes = explode(" ",$item);
	$participantes[] = trim(mb_strtoupper($nomes[0] . " " . $nomes[count($nomes)-1]));

}

shuffle($participantes);


$variaveis = array(
				array("UNPLUGGED","COMPUTADOR"),
				array("ABELHA","ANGRY BIRDS")
				);

$t1 = array(
				"UNPLUGGED (ABELHA) / COMPUTADOR (ANGRY BIRDS)",
				"COMPUTADOR (ANGRY BIRDS) / UNPLUGGED (ABELHA)",
				"UNPLUGGED (ANGRY BIRDS) / COMPUTADOR (ABELHA)",
				"COMPUTADOR (ABELHA) / UNPLUGGED (ANGRY BIRDS)",
				);

$t2 = array(
				"UNPLUGGED (ABELHA) / COMPUTADOR (ANGRY BIRDS)",
				"COMPUTADOR (ABELHA) / UNPLUGGED (ANGRY BIRDS)"				
				);

$tratamentos = $t1;


$quadrados = array();
$replicas = array();
$t = 0;
$r = 0;

foreach($participantes as $key=>$item) {
	
	$quadrados[$t][] = $item;

	$replicas[$r][] = array("aluno"=>$item,"tratamento"=>$tratamentos[$t]);

	$t++;

	if ($t > count($tratamentos)-1) {
		$t = 0;
		$r++;
	}


}

//echo "<pre>";
//var_dump($replicas);exit;

?>
<!DOCTYPE html>
<html>
<head>
	<title>Quadrados Latinos (Unpluggy Experiment)</title>
	<style type="text/css">
		body {padding-left:40px;font-family: arial;font-size: 80%;}
		p {font-weight: bold;color:blue;}
		strong {color:red;}
		
		.aba {padding-top:30px;margin:0 15px;padding-bottom:30px;}
		#arranjos, #replicas {background-color: #FFF;}
		.links {margin-left:15px;text-align:center;color:red;text-decoration:none;font:bold 12px verdana;display: inline-block;padding:10px 20px;background:#FFFCDE;width:200px;}
		#quadrados {padding-top:20px;position: fixed;right:30px;top:30px;width:600px;height:550px;background:#E1E1E1;border: 1px solid #CCC;}
		#replicas {display:none;height:440px;overflow: auto;}
		.active {background: #FFF;color:blue;}

		.replicas {margin-bottom: 20px;}		
		.replicas tr td {font:normal 12px arial;}
		summary {text-align: center;font:bold 12px arial;}

	</style>
</head>
<body>

<h2>Quadrados Latinos</h2>

<?php foreach($tratamentos as $key=>$trat) { ?>

	<p><strong>Sessão <?=$key+1?>: </strong><?=$trat?></p>
	<ul>
	<?php foreach($quadrados[$key] as $k=>$p) { ?>
		<li><?=$p?></li>
	<?php } ?>	
	</ul>

<?php } ?>

<div id="quadrados">

	<a href="#arranjos" class="links active">Arranjos</a>
	<a href="#replicas" class="links">Réplicas</a>

	<div id="arranjos" class="aba">

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
				<td>COMPUTADOR</td>
				<td>UNPLUGGED</td>
			</tr>
			<tr>
				<td>Unidade Experimental 1</td>
				<td>ABELHA</td>
				<td>ANGRY BIRDS</td>
			</tr>
			<tr>
				<td>Unidade Experimental 2</td>
				<td>ANGRY BIRDS</td>
				<td>ABELHA</td>
			</tr>
		</table> 

	</div>

	<div id="replicas" class="aba">

		<?php foreach($replicas as $key=>$replica) { ?>
		<table class="replicas" border="1" cellpadding="5" width="500" cellspacing="0" align="center">
			<summary>Réplica <?=$key+1?></summary>
			<?php foreach($replica as $key=>$item) { ?>
			<tr>
				<td><?=$item["aluno"]?></td>
				<td width="70%"><?=$item["tratamento"]?></td>				
			</tr>
			<?php } ?>
			
		</table> 

		<?php } ?>

	</div>

</div>

<script type="text/javascript">
	
	var l = document.getElementsByClassName('links');

	for(var i = 0; i < l.length; i++) {
		l[i].onclick = function(el){
			var t = this.href.split("#");
			
			if (t[1] == "replicas") {
				document.getElementById("arranjos").style.display = "none";							
			} else {
				document.getElementById("replicas").style.display = "none";							
			}

			document.getElementById(t[1]).style.display = "block";			

			var li = document.getElementsByClassName('links');
			for(var j = 0; j < li.length; j++) {
				li[j].className = "links";
			}

			this.className = "links active";
			
		}
	}

</script>

</body>
</html>