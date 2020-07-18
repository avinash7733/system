<?php 
$q=mysqli_query($conn,"select * from labs");
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
        window.location.href='delete_labs.php?id='+id;
     }
}
</script>	


<div class="row">
	<div class="col-sm-12" style="color:blue;">
		<u><h1 align="center">Feedback:LAB 1</h1></u>
	</div>
</div>
<div class="row">

<div class="col-sm-12">

<table class="table table-bordered">

	<thead >
	
	<tr class="success">
		<th>Sr.No</th>
		<th>Student</th>
		<th>Quest1</th>
		<th>Quest2</th>
		<th>Quest3</th>
		<th>Quest4</th>
		<th>Quest5</th>
		<th>Quest6</th>
		<th>Quest7</th>
		<th>Quest8</th>
		<th>Quest9</th>
	    </tr>
		</thead>
		
		<?php
		$i=1;
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
		
			//echo "<td><a href='#' onclick='deletes($row[id])'>Delete</a></td>";
			echo "</tr>";
		$i++;
		}
		
		?>
		
	
		
</table>
</div>
</div>
<?php }?>





















<?php 
$q=mysqli_query($conn,"select * from labss");
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
        window.location.href='delete_labss.php?id='+id;
     }
}
</script>	


<div class="row">
	<div class="col-sm-12" style="color:purple;">
		<u><h1 align="center" >Feedback:LAB 2</h1></u>
	</div>
</div>
<div class="row">

<div class="col-sm-12">

<table class="table table-bordered">

	<thead >
	
	<tr class="success">
		<th>Sr.No</th>
		<th>Student</th>
		<th>Quest1</th>
		<th>Quest2</th>
		<th>Quest3</th>
		<th>Quest4</th>
		<th>Quest5</th>
		<th>Quest6</th>
		<th>Quest7</th>
		<th>Quest8</th>
		<th>Quest9</th>
	    </tr>
		</thead>
		
		<?php
		$i=1;
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
			//echo "<td><a href='#' onclick='deletes($row[id])'>Delete</a></td>";
			echo "</tr>";
		$i++;
		}
		
		?>

</table>
</div>
</div>
<?php }?>


















<?php 
$q=mysqli_query($conn,"select * from labsss");
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
        window.location.href='delete_labsss.php?id='+id;
     }
}
</script>	


<div class="row">
	<div class="col-sm-12" style="color:red;">
		<u><h1 align="center" >Feedback:LAB 3</h1></u>
	</div>
</div>
<div class="row">

<div class="col-sm-12">

<table class="table table-bordered">

	<thead >
	
	<tr class="success">
		<th>Sr.No</th>
		<th>Student</th>
		<th>Quest1</th>
		<th>Quest2</th>
		<th>Quest3</th>
		<th>Quest4</th>
		<th>Quest5</th>
		<th>Quest6</th>
		<th>Quest7</th>
		<th>Quest8</th>
		<th>Quest9</th>
	    </tr>
		</thead>
		
		<?php
		$i=1;
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
			
		
			//echo "<td><a href='#' onclick='deletes($row[id])'>Delete</a></td>";
			echo "</tr>";
		$i++;
		}
		
		?>
				
</table>
</div>
</div>
<?php }?>
