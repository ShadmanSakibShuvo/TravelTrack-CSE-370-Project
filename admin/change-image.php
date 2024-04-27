<!--glitched-->
<?php
session_start();
error_reporting(0);
include('includes/config.php');

if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}

else{
	$imgid=intval($_GET['imgid']);
if(isset($_POST['submit']))
{

$pimage=$_FILES["packageimage"]["name"];
move_uploaded_file($_FILES["packageimage"]["tmp_name"],"pacakgeimages/".$_FILES["packageimage"]["name"]);
$sql="update TblTourPackages set PackageImage=:pimage where PackageId=:imgid";

$query = $dbh->prepare($sql);
$query->bindParam(':imgid',$imgid,PDO::PARAM_STR);
$query->bindParam(':pimage',$pimage,PDO::PARAM_STR);
$query->execute();

$msg="Package Created";
}
?>

<?php
} 
?>