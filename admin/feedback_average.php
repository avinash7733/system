<form method="post">
<table class="table table-hover">
<tr>
<th> Select Faculty</th>
<td>
<select name="faculty" class="form-control">
	<?php
	
	$sql=mysqli_query($conn,"select * from faculty");
	while($r=mysqli_fetch_array($sql))
	{

	echo "<option value='".$r['email']."'>".$r['Name']."</option>";
	}
		 ?>
</select>
</td>
<td><input name="sub" type="submit" value="Check Average" class="btn btn-success"/></td>
</tr>
</table>
</form>
<hr style="border:1px solid red"/>

<?php
extract($_POST);
if(isset($sub))
{
//Count total Votes
$r=mysqli_query($conn,"select * from feedback where faculty_id='$faculty'");   
$c=mysqli_num_rows($r);	
echo "<h4>Total Student Attempts : ".$c."</h4>";
echo "<center><h2>FACULTY NAME:<u>".$faculty."</u></h2></center>";
}
?>
<?php
extract($_POST);
if(isset($sub))
{
$r=mysqli_query($conn,"select * from feedback where faculty_id='$faculty'");
$k=mysqli_num_rows($r);


		$i=1;
		$total=0;
		$sum=0;
	    $div=0;
	while($row=mysqli_fetch_array($r))
		{
			

            $col=$row['lol']+$row['ball']+$row['sell']+$row['mall'] +$row['doll']+$row['low']+$row['high']+$row['may']+$row['june']+$row['july']+$row['aug']+$row['sep'];
            $ag=(($col/12)*100)/5;;
            
           
            
            
            $total=$total+$ag;
             $sum=$sum+$ag;
           $div=$sum/$i;
         

             
            

			
			echo "</tr>";
		$i++;
		}

		 echo "<h1><center>The Average feedback given to this faculty is:<u>". $div. "%</u></center></h1>";  

        


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
}}
?> 
