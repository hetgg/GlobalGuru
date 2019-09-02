<?php
include_once("header.php");
?>
<a href='insertcategory.php' class='btn btn-info' style='float:right'>Insert</a>
<h3 class="header smaller lighter blue"> Category details</h3>

<?php 

        		 

		$cnn=mysqli_connect("localhost","root","","dbglobalguru");
		$qry="Select * from category";

		$result=$cnn->query($qry);

		$str="<table class='table  table-bordered table-hover'><tr><th>Update</th><th>Delete</th><th>Category</th><th>Image</th></tr>";

		while($row=$result->fetch_assoc())
		{
				$str.="<tr><td><a href='updatecategory.php?id=".$row["catid"]."'class='btn btn-xs btn-success'><i class='ace-icon fa fa-check bigger-120'></i></a></td><td><a href='deletecategory.php?id=".$row["catid"]."' class='btn btn-xs btn-danger'><i class='ace-icon fa fa-trash-o bigger-120'></i></a></td><td>".$row["catname"]."</td><td><img src='img//".$row["catimg"]."'height='100px' width='100px'></td></tr>";
			}

		$str.="</table>";

		echo $str;



?>


<?php
include_once("footer.php");
?>