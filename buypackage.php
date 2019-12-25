<?php
include_once("theader.php");
?>

<h3 class="header smaller lighter blue">Packages</h3>
<?php
    if(isset($_POST['buy']))
        header("Location:addtocart.php");
?>
<?php
        $cnn=mysqli_connect("localhost","root","","dbglobalguru");
        $qry="Select * from package";
 				
        $result=$cnn->query($qry);
 
    
								$str="<div class='row' style='margin:0 auto;'>";

 
        while($row=$result->fetch_assoc())
        {
                                            
									$str.="<div class='col-xs-6 col-sm-3 pricing-box' >";
										$str.="<div class='widget-box widget-color-green'>";
											$str.="<div class='widget-header'>";
												$str.="<h5 class='widget-title bigger lighter'>Ultimate Package</h5>";
											$str.="</div>";

											$str.="<div class='widget-body'>";
												$str.="<div class='widget-main'>";
													$str.="<ul class='list-unstyled spaced2'>";
														$str.="<li>";
                                                $str.="<center>";        
                                                                $str.= "<img src='img//".$row["pimg"]."' height='100px' width='100px'><br><span class='widget-header'>";
                                                                  $str.="</center>";
            
                                                        
												

													$str.="<hr>";
													
													$str.="<div class='price'> ".$row["pprice"]." Rs.";
														$str.="<small>/month</small>";
													$str.="</div>";
												$str.="</div>";

												$str.="<div>";
													$str.="<a href='addtocart.php?id=".$row["pid"]."' class='btn btn-block btn-success'>";
														$str.="<i class='ace-icon fa fa-shopping-cart bigger-110'></i>";
													$str.="</a>";
												$str.="</div>";
											$str.="</div>";
										$str.="</div>";
									$str.="</div>";
            $str.="<tab>";
          
     
            }

        	$str.="</div>";			
							
        echo $str;

        		

 
 
 
?>
  
<?php
include_once("tfooter.php");
?>