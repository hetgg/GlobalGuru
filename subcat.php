<?php
include_once("header.php");
?>

<h3 class="header smaller lighter blue"> Subcategory details</h3>
<?php 
		$cnn=mysqli_connect("localhost","root","","dbglobalguru");
		$qry="Select * from subcategory";

		$result=$cnn->query($qry);

		$str="<table class='table  table-bordered table-hover'><tr><th>subacatid</th><th>subcatname</th><th>catid</th><th>subcateimage</th></tr>";

		while($row=$result->fetch_assoc())
		{
				$str.="<tr><td><a href='supdate.php?id=".$row["subcatid"]."'class='btn btn-xs btn-success'><i class='ace-icon fa fa-check bigger-120'></i></a><a href='sdelete.php?id=".$row["subcatid"]."' class='btn btn-xs btn-danger'><i class='ace-icon fa fa-trash-o bigger-120'></i></a></td><td>".$row["subcatname"]."</td><td>".$row["catid"]."</td><td>".$row["subcateimg"]."</td></tr>";
			}

		$str.="</table>";

		echo $str;

		echo "<a href='sinsert.php' class='btn btn-info'>Insert</a>";


?>


<?php
include_once("footer.php");
?>