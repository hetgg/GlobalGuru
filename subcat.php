<?php
include_once("header.php");
?>
<a href='sinsert.php' class='btn btn-info' style='float:right'>Insert</a>
<h3 class="header smaller lighter blue"> Subcategory details</h3>

<?php 
		$cnn=mysqli_connect("localhost","root","","dbglobalguru");
		$qry="Select subcatid,subcatname,catname,subcateimg from subcategory,category 
where category.catid=subcategory.catid ";

		$result=$cnn->query($qry);

		$str="<table class='table  table-bordered table-hover'><tr><th>Update</th><th>Delete</th><th>Subcategory</th><th>Category name</th><th>Image</th></tr>";

		while($row=$result->fetch_assoc())
		{
				$str.="<tr><td><a href='supdate.php?id=".$row["subcatid"]."'class='btn btn-xs btn-success'><i class='ace-icon fa fa-check bigger-120'></i></a></td><td><a href='sdelete.php?id=".$row["subcatid"]."' class='btn btn-xs btn-danger'><i class='ace-icon fa fa-trash-o bigger-120'></i></a></td><td>".$row["subcatname"]."</td><td>".$row["catname"]."</td><td><img src='img//".$row["subcateimg"]."'height='100px' width='100px'></td></tr>";
			}

		$str.="</table>";

		echo $str;


?>


<?php
include_once("footer.php");
?>