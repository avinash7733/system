<?php
	extract($_POST);
	if(isset($save))
	{	
	
	mysqli_query($conn,"update user set n='$n',e='$e',p='$pass',mob='$mob',pro='$pro',sem='$sem' where id='".$_GET['id']."'");	

$err="<font color='green'>STUDENT Details updated</font>";

	}

$con=mysqli_query($conn,"select * from user where id='".$_GET['id']."'");

$res=mysqli_fetch_assoc($con);	

?>


<h1 class="page-header">Update  USER</h1>
<div class="col-lg-8" style="margin:15px;">
	<form method="post">
	
	<div class="control-group form-group">
    	<div class="controls">
        	<label><?php echo @$err;?></label>
        </div>
   	</div>
	
	<div class="control-group form-group">
    	<div class="controls">
        	<label>Name:</label>
            	<input type="text" value="<?php echo @$res['Name'];?>" name="n" class="form-control" required>
        </div>
   	</div>
	
	
 	<div class="control-group form-group">
    	<div class="controls">
        	<label>email :</label>
            	<input type="email" value="<?php echo @$res['email'];?>"  name="e" class="form-control" required>
        </div>
    </div>
	
	<div class="control-group form-group">
    	<div class="controls">
        	<label>Password :</label>
          <input type="password" value="<?php echo @$res['password'];?>"  name="pass" class="form-control" required>
        </div>
    </div>
   

	<div class="control-group form-group">
    	<div class="controls">
        	<label>Programme:</label>
             <select  name="pro" value="<?php echo @$res['programme'];?>" class="form-control" required>
            
                    <option>BCA</option>
                    <option>MCA</option>
                    <option>BTECH</option>
                    <option>MTECH</option>
                    </select>

        </div>

	
	<div class="control-group form-group">
    	<div class="controls">
        	<label>Semester</label>
  <select  name="sem" value="<?php echo @$res['semester'];?>" class="form-control" required>
            
                    <option>i</option>
                    <option>ii</option>
                    <option>iii</option>
                    <option>iv</option>
                    <option>v</option>
                    <option>vi</option>
                    <option>vii</option>
                    <option>viii</option>
                    </select>

        </div>
    </div>
 
                  
	<div class="control-group form-group">
    	<div class="controls">
        	<label>Mobile Number:</label>
            	<input type="number" id="mob" value="<?php echo @$res['mobile'];?>" class="form-control" maxlength="10" name="mob"  required>
        </div>
  	</div>
	
	<div class="control-group form-group">
    	<div class="controls">
            	<input type="submit" class="btn btn-success" name="save" value="Update  STUDENT">
        </div>
  	</div>
	</form>


</div>