<?php
DEFINE ('DB_USER','root');
DEFINE ('DB_PASSWORD','gjk19961226');
DEFINE ('DB_HOST','localhost');
DEFINE ('DB_NAME','virus');
$dbc=@mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) OR die('Could not to connect to Mysql:'.mysqli_connect_error());
mysqli_set_charset($dbc, 'utf8');
$xgid=$_GET['id'];
$sqlh="select time,dia,sus,cur,de from  history where id ={$xgid}";
$resh=mysqli_query($dbc,$sqlh);
$resulth=mysqli_fetch_array($resh);
$sql = "delete  from history where id={$xgid} ;";
 $res = mysqli_query($dbc, $sql);
if ($res == 1) {
        echo "<script>alert('删除成功！')</script>";
        echo "<script>window.location.href='re.php'</script>";
    }
else {
        echo "删除失败！";
        echo "<script>window.location.href='re.php'</script>";
    }

?>
<head>
    <meta name="viewport" content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <meta charset="UTF-8">
  <title>删除疫情记录</title>
    <!--必要样式-->
</head>
<body>

</body>
</html>

