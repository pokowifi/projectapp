<?php
	include 'connected.php';
	header("Access-Control-Allow-Origin: *");

if (!$link) {
    echo "Error: Unable to connect to MySQL." . PHP_EOL;
    echo "Debugging errno: " . mysqli_connect_errno() . PHP_EOL;
    echo "Debugging error: " . mysqli_connect_error() . PHP_EOL;
    
    exit;
}

if (!$link->set_charset("utf8")) {
    printf("Error loading character set utf8: %s\n", $link->error);
    exit();
	}

if (isset($_GET)) {
	if ($_GET['isAdd'] == 'true') {
				
		
		$ code_rice= $_GET['code_rice'];
		$ rice_type= $_GET['rice_type'];
		$ rice= $_GET['rice'];
		$ price= $_GET['price'];
		$ num_in= $_GET['num_in'];
		$ datein= $_GET['datein'];
		
							
		$sql = "INSERT INTO `122`(`code_rice`, `rice_type`, `rice`, `price`, `num_in`, `datein`) VALUES (null,'code_rice','rice_type','rice','price','num_in',''datein')";

		$result = mysqli_query($link, $sql);

		if ($result) {
			echo "true";
		} else {
			echo "false";
		}

	} else echo "Welcome Master UNG";
   
}
	mysqli_close($link);
?>