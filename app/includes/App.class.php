<?php

class App {

	var $con;

	public function __construct() {
		$this->con = new Mysqli("localhost","root","ifma","unplugged_opencv");
	}

	public function query($sql) {

		$res = $this->con->query($sql);

		$rows = array();

		while($row = $res->fetch_assoc()) {
			$rows[] = $row;
		}	

		return $rows;

	}

}

