<?php
    

    session_start();
	$conn = mysqli_connect('localhost','root','','projectea');
   error_reporting(0);
	if(!$conn)
	{
		echo "The Connection is not established.";
	}
	if($_SERVER["REQUEST_METHOD"]=="POST"){
	$state=$_POST['State'];
	$discom=$_POST['DIsName'];
	$billno=$_POST['billno'];
	$supplyvoltage=$_POST['VoltageLevel'];
	$contractdemand=$_POST['contractdemand'];
	$billperiod=$_POST['billperiod'];
	$loadfactor=$_POST['loadfactor'];
	$utilisationfactor=$_POST['utilisationfactor'];
	$energyconsumedkvah=$_POST['energyconsumedkvah'];
	$energyconsumedkva=$_POST['energyconsumedkva'];
	$todkvah=$_POST['todkvah'];
	$todkva=$_POST['todkva'];
    $username = $_SESSION['susername'];
        $val="33";
        echo $todkva
        $res3=mysqli_query($conn,"SELECT SID FROM `category` WHERE voltagelevel=\'33\'");
            $res2=mysqli_query($conn,"SELECT TariffId from tariff where sid='".$res3."' and disno IN(SELECT DisNo FROM state where disname='"APEPDCL"')");
             $res4=mysqli_query($conn,"SELECT onpeaktime FROM todcharges where tariffid='".$res2."'");
            echo $res4;
	
	$qry="INSERT INTO userbillinfo VALUES ('".$state."','".$discom."','".$supplyvoltage."','".$contractdemand."','".$energyconsumedkva."','".$energyconsumedkvah."','".$todkva."','".$billperiod."','".$loadfactor."','".$utilisationfactor."','".$billno."','".$username."')";
	$res=mysqli_query($conn,$qry);
	$res1=mysqli_query($conn,"SELECT * FROM userbillinfo where billno='".$billno."'");
		
		
		if(mysqli_num_rows($res1)==1)
 		{
 			if($contractdemand<$energyconsumedkva+$todkva)
				echo"Please Increase the Contract demand.";
			if($loadfactor<1)
				echo"Please maintain the load factor to 1 to minimize the cost in the electricity bill.";
			if($todkvah!="")
				echo"Please maximise the tod working time.";
			if($utilisationfactor<1)
				echo"Please maintain the utilizationfactor factor to 1 to minimize the cost in the electricity bill.";
            $res3=mysqli_query($conn,"SELECT SID FROM category where voltagelevel='".$supplyvoltage."'");
            $res2=mysqli_query($conn,"SELECT TariffId from tariff where sid='".$res3."' and disno IN(SELECT DisNo FROM state where disname='".$discom."')");
             $res4=mysqli_query($conn,"SELECT onpeaktime FROM todcharges where tariffid='".$res2."'");
            echo $res4;
            
 		}
 		else
 		{
 			echo "NOT INSERTED";
 		}
 		$conn->close();
}
?>

