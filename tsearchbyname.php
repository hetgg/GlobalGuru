<?php

	include_once("adminheader.php");

?>

<?php 
	if(isset($_POST['submit'])){
		$optselect=$_POST['optselect'];
        $z=trim($optselect);
        
        
        
		$cnn=mysqli_connect("localhost","root","","dbglobalguru");
		$qry="SELECT * FROM teacher WHERE uname like '%$z%'";
        
            


		$result=$cnn->query($qry);
		echo $qry;

		$str="<table class='table  table-bordered table-hover'><tr><th>teacherid</th><th>username</th><th>Gender</th><th>Degree</th><th>contactno</th><th>email</th></tr>";

			while($row=$result->fetch_assoc())
			{
				$str.="<tr><td>".$row["tid"]."</td><td>".$row["uname"]."</td><td>".$row["gender"]."</td><td>".$row["degree"]."</td><td>".$row["contactno"]."</td><td>".$row["email"]."</td><td>".$row["doj"]."</td></tr>";
			}

		$str.="</table>";

		echo $str;

	}
?>
<br>
<br>
		<form class="form-horizontal" role="form" method="post">
									
								<div class="form-group">

										<label class="col-sm-3 control-label no-padding-right" for="form-field-1" > Enter Name: </label>

										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="Enter Name" name="optselect" class="col-xs-10 col-sm-5" />
										</div>
                                    <br>
                                    <br>
										
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<input type="submit" class="btn btn-info" name="submit" value="Submit">
												
											&nbsp; &nbsp; &nbsp;
											<input type="reset" class="btn" type="reset" name="Reset">
												

										</div>
									</div>
                                </div>
								</form>
<?php


	include_once("adminfooter.php");

?>
