<?php 
include_once("header.php");
?>
<h3 class="header smaller lighter blue">Insert details</h3>
								<form class="form-horizontal" role="form" method="post">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Category name: </label>

										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="catname" name="catname" class="col-xs-10 col-sm-5" />
										</div>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> category id: </label>	
										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="catid" name="catid" class="col-xs-10 col-sm-5" />
										</div>
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> category image: </label>
										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="catimg" name="catimg" class="col-xs-10 col-sm-5" />
										</div>
									</div>
					

									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<input type="submit" class="btn btn-info"
                                                   name="Submit">
								
											

											&nbsp; &nbsp; &nbsp;
											<button class="btn" type="reset">
												<i class="ace-icon fa fa-undo bigger-110"></i>
												Reset
											</button>
										</div>
									</div>
								</form>

<?php 
	
	if(isset($_POST['Submit'])){
        echo "hi";
		$catname=$_POST['catname'];
		$catid=$_POST['catid'];
		$catimg=$_POST['catimg'];
		$cnn=mysqli_connect("localhost","root","","dbglobalguru");
		$qry="INSERT INTO category(catname,catid,catimg) VALUES ('$catname','$catid','$catimg')";
		echo $qry;
		$result=$cnn->query($qry);
	}
?>								

<?php 
include_once("footer.php");
?>