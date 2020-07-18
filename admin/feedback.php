<?php 
$q=mysqli_query($conn,"select * from feedback");
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
        window.location.href='delete_feedback.php?id='+id;
     }
}
</script>	


<div class="row">
	<div class="col-sm-12" style="color:orange;">
		<h1 align="center" ><u>Feedback</u></h1>
	</div>
</div>
<div class="row">

<div class="col-sm-12">

<table class="table table-bordered">

	<thead >
	
	<tr class="success">
		<th>Sr.No</th>
		<th>student_id</th>
		<th>Teacher</th>
		<th>Q1</th>
		<th>Q2</th>
		<th>Q3</th>
		<th>Q4</th>
		<th>Q5</th>
		<th>Q6</th>
		<th>Q7</th>
		<th>Q8</th>
		<th>Q9</th>
		<th>Q10</th>
		<th>Q11</th>
		<th>Q12</th>
		<th>Q13</th>
		<th>Q14</th>
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
			

            $col=$row['lol']+$row['ball']+$row['sell']+$row['mall'] +$row['doll'] +$row['low']+$row['high']+$row['may']+$row['june']+$row['july']+$row['aug']+$row['sep'];
            $ag=(($col/12)*100)/5;
            echo "<td>$ag</td>";
            echo "<td>".$row[17]."</td>";
           
            
            
            $total=$total+$ag;
             $sum=$sum+$ag;
           $div=$sum/$i;
         

             
            

			
			echo "</tr>";
		$i++;
		}

		 echo "<h1><center>The Average feedback given to the Faculties is:<u>". $div. "%</u></center></h1>";  
		
if ($div <25) {
    echo "<h1><center>FACULTY PERFORMANCE:<u>POOR!</u></center></h1>";
} 
elseif ($div <50) {
    echo "<h1><center>FACULTY PERFORMANCE:<u>AVERAGE!</u></center></h1>";
} elseif ($div <75) {
    echo "<h1><center>FACULTY PERFORMANCE:<u>GOOD!</u></center></h1>";
}
  elseif ($div <100) {
    echo "<h1><center>FACULTY PERFORMANCE:<u>EXCELLENT!</u></center></h1>";
}
    else {
    echo "quit!";
}


         
            
            /*$c=$row[5];
            $d=$row[6];
            $e=$row[7];
	        $f=$row[8];
	        $g=$row[9];
	        $h=$row[10];
	        $i=$row[11];
	        $j=$row[12];
	        $k=$row[13];
	        $l=$row[14];          

            $add=$m+$b+$c+$d+$e+$f+$g+$h+$i+$j+$k+$l;*/
                                                                              

			//echo "<td><a href='#' onclick='deletes($row[id])'>Delete</a></td>";
		
		
		
		?>
		
	
		
</table>
</div>
</div>
<?php }?>