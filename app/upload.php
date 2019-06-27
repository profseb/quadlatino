<?php

$foto = $_FILES["foto"];
$id = $_POST["id"];

if (is_uploaded_file($foto["tmp_name"])) {

	$filename = "foto-{$id}_" . time() . ".jpg";

	$res = move_uploaded_file($foto["tmp_name"],"pictures/$filename");

	if ($res) {

		echo "<script type='text/javascript'>parent.document.getElementById('upload-$id').innerHTML = 'Ok<input type=\'hidden\' name=\'foto[]\' value=\'$filename\' />';</script>";

	} else {
		echo "<script type='text/javascript'>alert('Falha no Upload!');</script>";
	}

}


?>

