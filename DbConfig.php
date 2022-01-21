<?php

class DbConfig{

	protected $conn;
	public function connect(){
		try {
		    $conn = new PDO("mysql:host=localhost;dbname=fc-mborijnland", "root", "");
		    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		    return $conn;
		} catch (PDOException $e) {
		    echo 'Connection failed: ' . $e->getMessage();
		}
		
	}
}