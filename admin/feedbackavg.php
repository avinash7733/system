<?php

$conn=mysqli_connect("localhost","root","","feedback_system")or die(mysqli_error());
 }
 $query="select  avg('$quest1','$quest2','$quest3','$quest4','$quest5','$quest6','$quest7','$quest8','$quest9','$quest10','$quest11') as 'avgscore' from feedback";

 $res=mysql_query( {$conn,$query});
 $data=mysqli_fetch_array({$res});

 echo "avg of salary".$data['avgscore'];
 ?>