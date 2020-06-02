<?php

class sms_recipients {
	public $id;
	public $id_client;
	public $name;
	public $tel;

public function __construct($id, $id_client, $name, $tel) {
	$this->id = $id;
	$this->id_client = $id_client;
	$this->name = $name;
	$this->tel = $tel;
}

public function getListeRecipients() {
	global $conn;
	$res = $conn->prepare("SELECT * FROM sms_recipients");
	$res->execute();
	foreach ($res as $rec) {
		$ListeRec[] = new sms_recipients($rec["id"], $rec["id_client"], $rec["name"], $rec["tel"]);
	}
	return $ListeRec;
}

public function getTel($tel) {
	global $conn;
	$res = $conn->prepare("SELECT tel FROM sms_recipients");
	$res->execute(array('tel' => $tel));
	$rec = $res->fetch();
	$telRec = new sms_recipients($rec["id"], $rec["id_client"], $rec["name"], $rec["tel"]);
	return $telRec;
	
	}
}
?>