<?php
include_once("theader.php");
?>

<h3 class="header smaller lighter blue">Packages</h3>
<?php
$cnn=mysqli_connect("localhost","root","","dbglobalguru");
$id=$_GET['id'];
$qry1="Select * from package where pid=$id";
$result=$cnn->query($qry1);
$row=$result->fetch_assoc();


?>  

					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								

								<div class="hr dotted"></div>

								
									

								<div>
									<div id="user-profile-2" class="user-profile">
										<div class="tabbable">

											<div class="tab-content no-border padding-24">
												<div id="home" class="tab-pane in active">
													<div class="row">
														<div class="col-xs-12 col-sm-3 center">
															<span class="profile-picture">
																<img class="editable img-responsive" alt="Alex's Avatar" id="avatar2" src="assets/images/avatars/profile-pic.jpg" />
															</span>

															<div class="space space-4"></div>

															<a href="#" class="btn btn-sm btn-block btn-success">
																<i class="ace-icon fa fa-plus-circle bigger-120"></i>
																<span class="bigger-110">Buy Now!</span>
															</a>

															<a href="#" class="btn btn-sm btn-block btn-primary">
																<i class="ace-icon fa fa-envelope-o bigger-110"></i>
																<span class="bigger-110">Send a message</span>
															</a>
														</div><!-- /.col -->

														<div class="col-xs-12 col-sm-9">
															<h4 class="blue">
																<span class="middle"><?php echo $x;?></span>

																<span class="label label-purple arrowed-in-right">
																	<i class="ace-icon fa fa-circle smaller-80 align-middle"></i>
																	GOLD
																</span>
															</h4>

															<div class="profile-user-info">
																<div class="profile-info-row">
																	<div class="profile-info-name"> Username </div>

																	<div class="profile-info-value">
																		<span><?php echo $y;?></span>
																	</div>
																</div>

																




															</div>

															<div class="hr hr-8 dotted"></div>

															
														</div><!-- /.col -->
													</div><!-- /.row -->

													<div class="space-20"></div>

													



											</div>
										</div>
									</div>
								</div>

								

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->


	
							

 

        		
<?php
include_once("tfooter.php");
?>