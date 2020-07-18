<?php 
$q=mysqli_query($conn,"select * from kiet");
$r=mysqli_num_rows($q);
if($r==false)
{
echo "<h3 style='color:Red'>No any records found ! </h3>";
}
else
{
?>

<script type="text/javascript">
function deletes(id)
{
	a=confirm('Are You Sure To Remove This Record ?')
	 if(a)
     {
        window.location.href='delete_kiet.php?id='+id;
     }
}
</script>	


<div class="row">
	<div class="col-sm-12" style="color:orange;">
		<h1 align="center" ><u>Feedback On KIET</u></h1>
	</div>
</div>
<div class="row">

<div class="col-sm-12">

<table class="table table-bordered">

	<thead >
	
	<tr class="success">
		<th>Sr.No</th>
		<th>faculty_id</th>
		<th>PLEASE ENTER YOUR INSTITUTION NAME</th>
		<th>Que1</th>
		<th>Que2</th>
		<th>Que3</th>
		<th>Que4</th>
		<th>Que5</th>
		<th>Que6</th>
		<th>Que7</th>
		<th>Que8</th>
		<th>Que9</th>
		<th>Que10</th>
		<th>Que11</th>
		<th>Que12</th>
		<th>Que13</th>
		<th>Que14</th>
		<th>Average</th>
		<th>Date</th>
		</tr>
		</thead>
		
		<?php
		$i=1;
		$total=0;
		$sum=0;
	while($row=mysqli_fetch_array($q))
		{
			echo "<tr>";
			echo "<td>".$i."</td>";
			echo "<td>".$row[1]."</td>";
			echo "<td>".$row[2]."</td>";
			echo "<td>".$row[3]."</td>";
			echo "<td>".$row[4]."</td>";
			echo "<td>".$row[5]."</td>";
			echo "<td>".$row[6]."</td>";
			echo "<td>".$row[7]."</td>";
			echo "<td>".$row[8]."</td>";
			echo "<td>".$row[9]."</td>";
			echo "<td>".$row[10]."</td>";
			echo "<td>".$row[11]."</td>";
			echo "<td>".$row[12]."</td>";
			echo "<td>".$row[13]."</td>";
			echo "<td>".$row[14]."</td>";
			echo "<td>".$row[15]."</td>";
			echo "<td>".$row[16]."</td>";
			

            $col=$row['who r u']+$row['what r u']+$row['ok']+$row['single']+$row['kids']+$row['salary']+$row['teacher']+$row['hard']+$row['smile']+$row['best']+$row['satisfy'];
            $ag=(($col/12)*100)/5;
            echo "<td>$ag</td>";
            echo "<td>".$row[17]."</td>";
           
            
            
            $total=$total+$ag;
           $sum=$sum+$ag;
           $div=$sum/$i;
         
			echo "</tr>";
		$i++;
		}

		 echo "<h1><center>The Average feedback given to this Institution is:<u>". $div. "%</u></center></h1>";  
		
if ($div <25) {
    echo "<h1><center>Institution PERFORMANCE:<u>POOR!</u></center></h1>";
} 
elseif ($div <50) {
    echo "<h1><center>Institution PERFORMANCE:<u>AVERAGE!</u></center></h1>";
} elseif ($div <75) {
    echo "<h1><center>Institution PERFORMANCE:<u>GOOD!</u></center></h1>";
}
  elseif ($div <100) {
    echo "<h1><center>Institution PERFORMANCE:<u>EXCELLENT!</u></center></h1>";
}
    else {
    echo "quit!";
}



        
		
		?>
		
	
		
</table>
</div>
</div>
<?php }?>