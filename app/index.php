<?php

require_once "includes/App.class.php";

$app = new App();

?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<title>Quadrado Latino - Experimento</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">

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

		.error {display: none;padding-bottom:10px;color:red;}

	</style>
</head>
<body>

	<h2>Quadrado Latino - Experimento</h2>


	<ul>
		<li><a href="/quadlatino/app/">Início</a></li>
		<li><a href="/quadlatino/app/?module=participante">Participantes</a></li>
		<li><a href="/quadlatino/app/?module=atividade">Atividades</a></li>
	</ul>



	<?php 


		if (empty($_GET["module"]) or $_GET["module"] == "experimento") { 
			require_once "modules/experimento.php";
		}

		if ($_GET["module"] == "participante") { 			
			require_once "modules/participante.php";
		}

		if ($_GET["module"] == "atividade") { 			
			require_once "modules/atividade.php";
		}
	?>


</body>
</html>