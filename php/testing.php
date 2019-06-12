<?php
    

    session_start();
	$conn = mysqli_connect('localhost','root','','projectea');
   error_reporting(0);
	if(!$conn)
	{
		echo "The Connection is not established.";
	}
$res3=mysqli_query($conn,"SELECT SID FROM `category` WHERE voltagelevel=\'33\'");
$res5=mysqli_query($conn,"SELECT DisNo FROM state where disname=\'APEPDCL\'");
            $res2=mysqli_query($conn,"SELECT TariffId from tariff where sid=".$res3." and disno=".$res5.""); 
            
             $res4=mysqli_query($conn,"SELECT onpeaktime FROM todcharges where tariffid='".$res2."'");
           while ($row = mysql_fetch_row($res4)) {
    echo "Table: {$row[0]}\n";
}

?>