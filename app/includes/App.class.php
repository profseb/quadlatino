<?php

class App {

	public static $base_url = "http://localhost/";
	var $con;

	public function __construct() {
		$this->con = new Mysqli("localhost","root","ifma","unplugged_opencv");
	}

	public function insert($table, $values, $debug = false) {

		$cols = array();
		foreach($values as $key=>$item) {
			$cols[] = "'{$item}'";
		}
		$cols = implode(", ",$cols);

		$sql = "insert into $table values (null, $cols)";

		if ($debug) {
			echo $sql;exit;
		}

		$res = $this->con->query($sql);

		return $this->con->insert_id;

	}

	public function update($table,$columns, $id) {

		$cols = array();
		foreach($columns as $field=>$value) {
			$cols[] = "$field = '$value'";
		}
		$cols = implode(", ",$cols);

		$sql = "update $table set $cols where $id";

		$this->con->query($sql);

	}

	public function execSQL($sql) {

		return $this->con->query($sql);	

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

		$res = $this->query($sql);
		
		return $res[0];

	}

	public function getTable($table, $where = null) {

		if (!is_null($where)) {
			$where = " where $where";
		}

		$sql = "select * from $table $where";

		return $this->query($sql);

	}

	public static function goToURL($url) {
		header("location: $url");	
		exit;
	}

	public static function redirect($module, $action = "", $id = "") {

		if (!empty($id)) {
			header("location: " . App::$base_url . "quadlatino/app/?module=$module&action=$action&id=$id");	
			exit;
		}

		if (!empty($action)) {
			header("location: " . App::$base_url . "quadlatino/app/?module=$module&action=$action");			
		} else {
			header("location: " . App::$base_url . "quadlatino/app/?module=$module");	
		}
		
		exit;
	}

}

