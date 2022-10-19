<?php
define('HOST', 'localhost');
define('USERNAME', 'root');
define('PASSWORD', '');
define('DATABASE', 'database');
// insert, update, delete,
function execute($sql){
	$conn = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE, 3307) or die("connect fail");
	mysqli_query($conn, $sql);
}
function executeresult($sql){
	$conn = mysqli_connect(HOST, USERNAME, PASSWORD, DATABASE, 3307) or die("connect fail");
	$resultset = mysqli_query($conn, $sql);
	$List = [];
	while ($row = mysqli_fetch_array($resultset,1)) {
		$List[] = $row;
	}return $List;
}
?>