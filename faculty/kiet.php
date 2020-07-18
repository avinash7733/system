<?php 
extract($_POST);
if(isset($sub))
{
$user=$_SESSION['faculty'];
$sql=mysqli_query($conn,"select * from kiet where faculty_id='$faculty' and PLEASE ENTER YOUR INSTITUTION NAME='$quest1'");
$r=mysqli_num_rows($sql);
if($r==true)
{
echo "<h2 style='color:red'>You already given feedback to this INSTITUTION</h2>";
}
else
{
$query="insert into kiet values('','$faculty','$quest1','$quest2','$quest3','$quest4','$quest5','$quest6','$quest7','$quest8','$quest9','$quest10','$quest11','$quest12','$quest13','$quest14','$quest15',now())";

mysqli_query($conn,$query);

echo "<h2 style='color:green'>Thank you </h2>";
}
}
?>
<form method="post">
<fieldset>
<center><u>Faculty's FeedBack Form</u></center><br>
 
<fieldset>



<h3>Please give your answer about the following question by circling the given grade on the scale:</h3>
<center>

<button type="button" style="font-size:12pt;color:white;background-color:green;border:2px solid #336600;padding:3px">Strongly Agree 5</button>
<button type="button" style="font-size:12pt;color:white;background-color:brown;border:2px solid #336600;padding:3px">Agree 4</button>
<button type="button" style="font-size:12pt;color:white;background-color:blue;border:2px solid #336600;padding:3px">Neutral 3</button>
<button type="button" style="font-size:12pt;color:white;background-color:purple;border:2px solid #336600;padding:3px"> Disagree 2</button>
<button type="button" style="font-size:12pt;color:white;background-color:red;border:2px solid #336600;padding:3px">Strongly Disagree 1</button><br> 

</center>

<b>1:</b><h2>PLEASE ENTER YOUR INSTUTUTION NAME:</h2><br><br>
<center>
<textarea name="quest1" rows="2" cols="30" id="comments" style="font-family:sans-serif;font-size:1.2em;">

</textarea></center><br><br>
<table>

<table class="table table-bordered">
<tr>
<td><b>2:</b> Management attitude:</td>  
<td>
  <input type="radio" name="quest2" value="5" > 5
  <input type="radio" name="quest2" value="4">4
  <input type="radio" name="quest2" value="3"> 3
<input type="radio" name=" quest2" value="2">2
<input type="radio" name="quest2" value="1">1 </td>
</tr>
  
<tr>
<td><b>3:</b>Attitude of the administration:</td> 
<td><input type="radio" name="quest3" value="5" >5
  <input type="radio" name="quest3" value="4">4
  <input type="radio" name="quest3" value="3">3
<input type="radio" name=" quest3" value="2">2
<input type="radio" name="quest3" value="1">1</td>
</tr>

<tr>
<td>
<b>4:</b> Motivational incentives:</td> 
<td>
<input type="radio" name="quest4" value="5"  > 5
  <input type="radio" name="quest4" value="4">4
  <input type="radio" name="quest4" value="3"> 3
<input type="radio" name="quest4" value="2">2
<input type="radio" name="quest4" value="1">1</td>
</tr>


 
<Td><b>5:</b> Salary and other professional growth:</td>
<td> <input type="radio" name="quest5" value="5" > 5
  <input type="radio" name="quest5" value="4">4
  <input type="radio" name="quest5" value="3"> 3
<input type="radio" name="quest5" value="2">2
<input type="radio" name="quest5" value="1">1
</td>

<tr>
<td>
<b>6:</b>Service conditions :</td>
<td> 
<input type="radio" name="quest6" value="5" > 5
<input type="radio" name="quest6" value="4">4
  <input type="radio" name="quest6" value="3"> 3
<input type="radio" name="quest6" value="2">2
<input type="radio" name="quest6" value="1">1</td>
</tr>
<tr>
<td><b>7:</b>Oppurtunities for personal growth:</td>
<td>
 <input type="radio" name="quest7" value="5" > 5
  <input type="radio" name="quest7" value="4">4
  <input type="radio" name="quest7" value="3"> 3
<input type="radio" name=" quest7" value="2">2
<input type="radio" name="quest7" value="1">1</td>
</tr>

<tr><td>
<b>8:</b>Infrastructure facilities :</td>
<td> <input type="radio" name="quest8" value="5"> 5
  <input type="radio" name="quest8" value="4">4
  <input type="radio" name="quest8" value="3"> 3
<input type="radio" name="quest8" value="2">2
<input type="radio" name="quest8" value="1">1</td>
<tr>
<td>
<b>9:</b>  Computing and internet facilities:</td><td> 
<input type="radio" name="quest9" value="5"> 5
  <input type="radio" name="quest9" value="4">4
  <input type="radio" name="quest9" value="3">3
<input type="radio" name="quest9" value="2">2
<input type="radio" name="quest9" value="1">1</td>
</tr>
<tr>
<td>
<b>10:</b> Opportunities for R&D:</td> 
<td><input type="radio" name="quest10" value="5">5
  <input type="radio" name="quest10" value="4">4
  <input type="radio" name="quest10" value="3"> 3
<input type="radio" name="quest10" value="2">2
<input type="radio" name="quest10" value="1">1</td>
</tr>
<tr>
<td>
<b>11:</b> Sports,Extra curricular activities:</td>
<td>
 <input type="radio" name="quest11" value="5"> 5
  <input type="radio" name="quest11" value="4">4
  <input type="radio" name="quest11" value="3"> 3
<input type="radio" name="quest11" value="2">2
<input type="radio" name="quest11" value="1">1</td>
</tr>


 
<tr>
<td><b>12:</b> Mess/canteen facilities :</td>
<td>
 <input type="radio" name="quest12" value="5"> 5
  <input type="radio" name="quest12" value="4">4
  <input type="radio" name="quest12" value="3"> 3
<input type="radio" name="quest12" value="2">2
<input type="radio" name="quest12" value="1">1</td>
</tr>
<tr>
<td><b>13:</b> Transport faclities:</td>
<Td>
 <input type="radio" name="quest13" value="5"> 5
  <input type="radio" name="quest13" value="4">4
  <input type="radio" name="quest13" value="3"> 3
<input type="radio" name="quest13" value="2">2
<input type="radio" name="quest13" value="1">1</td>
</tr>
</table>
<b>14:</b>What I liked about the course:<br><br>
<center>
<textarea name="quest14" rows="5" cols="60" id="comments" style="font-family:sans-serif;font-size:1.2em;">

</textarea></center><br><br>
<b>15:</b>Why I disliked about the course:<br><br>
<center>
<textarea name="quest15" rows="5" cols="60" id="comments" style="font-family:sans-serif;font-size:1.2em;">

</textarea></center>

<p align="center"><button type="submit" style="font-size:7pt;color:white;background-color:brown;border:2px solid #336600;padding:7px" name="sub">Submitt</button></p>


</form>
</fieldset>


<!--<a href="transport.html"><p align="right"><button type="Button"style="font-size:7pt;color:white;background-color:green;border:2px solid #336600;padding:7px">Next</button></p></a>
<a href="About.php"><p align="right"><button type="Button" style="font-size:7pt;color:white;background-color:green;border:2px solid #336600;padding:7px">Back</button></p></a>-->

</div><!--close content_item-->
      </div><!--close content-->   
  
  </div><!--close site_content-->   
  
    
    </div><!--close main-->
  </form>
<center>



  
  