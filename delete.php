<?php 
include_once("header.php");
?>

<?php 
	
	if(isset($_POST['submit'])){
		$sid=$_POST['txtsubcatid'];

		$cnn=mysqli_connect("localhost","root","","dbglobalguru");
		$qry="DELETE FROM  subcategory WHERE subcatid ='$sid'";
		$resul=$cnn->query($qry);
	}

?>								

<h3 class="header smaller lighter blue">delete details</h3>
								<form class="form-horizontal" role="form" method="post">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Subcategory id: </label>

										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="subcatid" name="txtsubcatid" class="col-xs-10 col-sm-5" />
										</div>
										<br>
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<input type="submit" class="btn btn-info" name="submit" value="Submit">
												
											&nbsp; &nbsp; &nbsp;
											<input type="reset" class="btn" type="reset" name="Reset">
												

										</div>
								</div>
								</form>


<?php 
include_once("footer.php");
?>
