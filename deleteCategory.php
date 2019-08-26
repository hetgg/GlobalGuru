<?php 
include_once("header.php");
?>
<h3 class="header smaller lighter blue">delete details</h3>
								<form class="form-horizontal" role="form" method="post">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Category id: </label>

										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="catid" name="catid" class="col-xs-10 col-sm-5" />
										</div>
										<br>
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<input type="submit" name="Submit" class="btn btn-info">

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>
										</div>
									</div>
								</div>
								</form>

<?php 
	
	if(isset($_POST['Submit'])){
        echo "hi";
		$sid=$_POST['catid'];
		$cnn=mysqli_connect("localhost","root","","dbglobalguru");
		$qry="DELETE FROM category WHERE catid = '$sid'";
		echo $qry;
		$result=$cnn->query($qry);
	}
?>								

<?php 
include_once("footer.php");
?>