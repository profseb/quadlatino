<?php

class App {

	var $con;

	public function __construct() {
		$this->con = new Mysqli("localhost","root","ifma","unplugged_opencv");
	}

	public function insert($table, $values) {

		$cols = array();
		foreach($values as $key=>$item) {
			$cols[] = "'{$item}'";
		}
		$cols = implode(", ",$cols);

		$sql = "insert into $table values (null, $cols)";

		$res = $this->con->query($sql);

		return $this->con->insert_id;

	}

	public function query($sql) {

		$res = $this->con->query($sql);

		$rows = array();

		while($row = $res->fetch_assoc()) {
			$rows[] = $row;
		}	

		return $rows;

	}

	public function getOne($table, $id) {

		$sql = "select * from $table where $id";

		$res = $this->con->query($sql);

		$rows = array();

		while($row = $res->fetch_assoc()) {
			$rows[] = $row;
		}	

		return $rows[0];

	}

	public static function redirect($module, $action) {
		header("location: http://localhost/quadlatino/app/?module=$module&action=$action");
		exit;
	}

}

