<?php
include_once("header.php");
?>

<h3 class="header smaller lighter blue">Packages</h3>

<?php
        $cnn=mysqli_connect("localhost","root","","dbglobalguru");
        $qry="Select * from package";
 
        $result=$cnn->query($qry);
 
        $str="<table class ='table  table-bordered table-hover'><tr><th>Edit</th><th>Delete</th><th>Packages</th><th>Image</th><th>Price</th></tr>";
 
        while($row=$result->fetch_assoc())
        {
                $str.= "<tr><td><a href='pupdate.php?Id=".$row["pid"]."' class='btn btn-xs btn-success'> <i class='ace-icon fa fa-check bigger-120'></i></a></td> <td><a href='pdelete.php' class='btn btn-xs btn-danger'> <i class='ace-icon fa fa-trash-o bigger-120'></i></a></td><td> ".$row["pname"]."</td><td><img src='img//".$row["pimg"]."' height='100px' width='100px'>.</td><td>".$row["pimg"]."</td></tr>";
            }
 
        $str.="</table>";
 
        echo $str;
 
 
 
?>
  
<?php
include_once("footer.php");
?>