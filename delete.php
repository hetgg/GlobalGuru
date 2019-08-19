<?php 
include_once("header.php");
?>
<h3 class="header smaller lighter blue">delete details</h3>
								<form class="form-horizontal" role="form" action="post">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> Subcategory id: </label>

										<div class="col-sm-9">
											<input type="text" id="form-field-1" placeholder="subcatid" name="sname" class="col-xs-10 col-sm-5" />
										</div>
										<br>
									<div class="clearfix form-actions">
										<div class="col-md-offset-3 col-md-9">
											<button class="btn btn-info" type="button">
												<i class="ace-icon fa fa-check bigger-110"></i>
												Submit
											</button>

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
		$sid=$subcatid['subcatid'];

		$cnn=mysqli_connect("localhost","root","","dbglobalguru");
		$qry="DELETE FORM  subcateory WHERE $subcatid =$sid";
		echo $qry;
		$resul=$cnn->query($qry);
	}

?>								

<?php 
include_once("footer.php");
?>
