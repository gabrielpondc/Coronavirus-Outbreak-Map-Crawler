<?php
DEFINE ('DB_USER','root');
DEFINE ('DB_PASSWORD','gjk19961226');
DEFINE ('DB_HOST','localhost');
DEFINE ('DB_NAME','virus');
$xgid=$_GET['id'];
$dbc=@mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) OR die('Could not to connect to Mysql:'.mysqli_connect_error());
mysqli_set_charset($dbc, 'utf8');
$sqlh="select id,lo,content,title from  huai where id=$xgid";
$resh=mysqli_query($dbc,$sqlh);
$resulth=mysqli_fetch_array($resh);
?>
<head>
    <meta name="viewport" content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <meta charset="UTF-8">
  <title><?php echo $resulth['lo']; ?>-<?php echo $resulth['title']; ?></title>
    <!--必要样式-->
<link href="bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/echarts.min.js"></script>
    <script src="js/china.js"></script>
    <link rel="stylesheet" type="text/css" href="normalize.css">
    <link rel="stylesheet" type="text/css" href="component.css">
    <script type="text/javascript" src="js/world.js"></script>
    <link rel="stylesheet" href="//cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js">
    <script type="text/javascript" src="js/jquery-1.8.0.js"></script>
    <script type="text/javascript" src="./js/map/province/jiangsu.js"></script>
    <script src="js/echarts.js" charset="UTF-8"></script>
    <script src="js/jquery-1.8.0.js" type="text/javascript"></script>
</head>
<body>
<div style="text-align: center">
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title"> <?php echo $resulth['title']; ?></h3>
    </div>
    <div class="panel-body">
        <h4>通报地区：<?php echo $resulth['lo']; ?></h4>
        <h4>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $resulth['content']; ?></h4>
        <a style="text-decoration:none;" href="huaian.php"><--返回上一页</a>|<input type='button' VALUE='关闭' onClick='window.close()'></form>
        <h6><span style="color: #4c8fbb">关闭按钮无法使用的情况下请点击返回上一页返回，其他情况不建议点此链接返回</span> </h6>


    </div>
</div>
</div>
</body>
</html>

