<?php

	include_once("adminheader.php");

?>

<?php 
	if(isset($_POST['submit'])){
		$optselect=$_POST['form-field-radio'];
		$cnn=mysqli_connect("localhost","root","","dbglobalguru");
		$qry="Select * from teacherpackage where pid='$optselect' ";

		$result=$cnn->query($qry);

		$str="<table class='table  table-bordered table-hover'><tr><th>Teacher Purchase id</th><th>Teacher id</th><th>Date of Purchase</th></tr>";

			while($row=$result->fetch_assoc())
			{
				$str.="<tr><td>".$row["tpid"]."</td><td>".$row["tid"]."</td><td>".$row["dop"]."</td></tr>";
			}

		$str.="</table>";

		echo $str;

	}
?>
<script src="cities.js"></script>
<br>
<br>
<form class="form-horizontal" role="form" method="post">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right control-label bolder blue" for="form-field-1">Select Package </label>
										<div class="col-xs-12 col-sm-6">
											<div class="control-group">
												<div class="radio">
													<label>
														<input name="form-field-radio" type="radio" class="ace" value="1" />
														<span class="lbl">Gold</span>
													</label>
												</div>

												<div class="radio">
													<label>
														<input name="form-field-radio" type="radio" class="ace" value="2" />
														<span class="lbl">Diamond</span>
													</label>
												</div>
                                                
                                                <div class="radio">
													<label>
														<input name="form-field-radio" type="radio" class="ace" value="3" />
														<span class="lbl">Platinum</span>
													</label>
												</div>
                                                
											</div>
										</div>
									</div>
					

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<input type="submit" class="btn btn-info" name="submit" value="Submit">
												
											&nbsp; &nbsp; &nbsp;
											<input type="reset" class="btn" type="reset" name="Reset">
												

										</div>
									</div>
								</form>

<?php

	include_once("adminfooter.php");

?>
