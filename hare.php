<?php
DEFINE ('DB_USER','root');
DEFINE ('DB_PASSWORD','gjk19961226');
DEFINE ('DB_HOST','localhost');
DEFINE ('DB_NAME','virus');
$dbc=@mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) OR die('Could not to connect to Mysql:'.mysqli_connect_error());
mysqli_set_charset($dbc, 'utf8');
$sqlh="select dia,res,de from  jiangsu where loc='淮安'";
$resh=mysqli_query($dbc,$sqlh);
$resulth=mysqli_fetch_array($resh);
$sqla="select id,location,dia,res,de from  huaian";
$resa=mysqli_query($dbc,$sqla);
$resulta=mysqli_fetch_array($resa);
$sqlb="select id,lo,content,title from  huai";
$resb=mysqli_query($dbc,$sqlb);
$resultb=mysqli_fetch_array($resb);
?>
<head>
    <meta name="viewport" content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <meta charset="UTF-8">
  <title>淮安疫情记录</title>
    <!--必要样式-->
<link href="bootstrap.min.css" rel="stylesheet">
    <script src="js/jquery-1.11.1.min.js"></script>
    <script src="js/echarts.min.js"></script>
    <script src="js/china.js"></script>
    <link rel="stylesheet" type="text/css" href="normalize.css">
    <link rel="stylesheet" type="text/css" href="component.css">
    <script type="text/javascript" src="js/world.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js">
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.8.0.js"></script>
    <script type="text/javascript" src="./js/map/province/jiangsu.js"></script>
    <script src="js/echarts.js" charset="UTF-8"></script>
    <script src="js/jquery-1.8.0.js" type="text/javascript"></script>
</head>
<body>
<div style="text-align: center">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion"
                   href="#collapse">各区疫情数值</a>
            </h3>
        </div>
        <div id="collapse" class="panel-collapse collapse in">
            <div class="panel-body">

                <table  width=100% class="table table-striped">
                    <tr>
                        <th style="text-align: center">地区</th>
                        <th style="text-align: center">确诊</th>
                        <th style="text-align: center">治愈</th>
                        <th style="text-align: center">死亡</th>
                        <th style="text-align: center">编辑</th>
                    </tr>
                    <?php

                    foreach ($resa as $row){
                        echo "<td align='center'>{$row['location']}</td>";
                        echo "<td align='center'>{$row['dia']}</td>";
                        echo "<td align='center'>{$row['res']}</td>";
                        echo "<td align='center'>{$row['de']}</td>";
                        echo "<td align='center'><a href='hade.php?id={$row['id']}'><img src='http://computercau.top/library/image/xiugai.png'></a> </td>";
                        echo "</tr>";
                    };
                    ?>
                </table>
            </div>
        </div>
    </div>
<div style="text-align: center">
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion"
               href="#collapseOne">每日疫情记录</a>
            </h3>
    </div>
    <div id="collapseOne" class="panel-collapse collapse">
    <div class="panel-body">
        <form  action="hare.php" method="POST" style="text-align: center" class="bs-example bs-example-form" role="form">
            <div id="login">
                <div class="input-group"><span class="input-group-addon">地区</span><input name="title" type="text" placeholder="地区" class="form-control"></div><br/>
                <div class="input-group"><span class="input-group-addon">日期</span><input name="lo" type="text" placeholder="日期" class="form-control"></div><br/>
                <div class="input-group"><span class="input-group-addon">内容</span><textarea name="co" rows="4" placeholder="内容" class="form-control" style="resize: none;"></textarea></div><br/>

                <label><input type="submit" value="增加" class="btn btn-default"></label>
                <label><input type="reset" value="重置" class="btn btn-default"></label>
            </div>
        </form>


    </div>
</div>
</div>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    $riqi = $_POST["title"];
    $qz = $_POST["lo"]."淮安市新型冠状病毒感染的肺炎疫情通报";
    $ys = $_POST["co"];

    $sqle="insert into huai VALUES (NULL,'{$riqi}','{$qz}','{$ys}' )";
    $rese=mysqli_query($dbc,$sqle);
    if($rese==1)
    {
        echo "<script>alert('添加成功！')</script>";
        echo "<script>window.location.href='hare.php'</script>";
    }
    else
    {
        echo "<script>alert('添加失败！');</script>";
    }
}
?>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion"
               href="#collapseTwo">信息查修</a>
                </h3>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
    <div class="panel-body">

        <table  width=100% class="table table-striped"style="table-layout:fixed; word-wrap:break-word;">
            <tr>
                <th style="text-align: center">地区</th>
                <th width="30%" style="text-align: center">标题</th>
                <th width="40%" style="text-align: center">内容</th>
                <th width="5%" style="text-align: center">编辑</th>
                <th width="5%"style="text-align: center">删除</th>
            </tr>
            <?php

            foreach ($resb as $row){
                echo "<td align='center'>{$row['lo']}</td>";
                echo "<td style='white-space:nowrap;overflow: hidden;text-overflow:ellipsis' align='center'>{$row['title']}</td>";
                echo "<td style='white-space:nowrap;overflow: hidden;text-overflow:ellipsis' align='center'>{$row['content']}</td>";
                echo "<td  align='center'><a href='hae.php?id={$row['id']}'><img src='http://computercau.top/library/image/xiugai.png'></a> </td>";
                echo "<td align='center'><a href='hared.php?id={$row['id']}'><img src='http://computercau.top/library/image/delete.png'></a></td>";
                echo "</tr>";
            };
            ?>
        </table>
        </div>
    </div>
</div>
</div>
    <div style="text-align: center;font-size: 15px">
        <section class="link-arrow" style="font-size: 25px"><a href="index.php">主页</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/gabrielpondc/wuhanfeiyan">仓库地址</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:gabrielpondc@cau.ac.kr">反馈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #999">CopyRight©<a herf="https://github.com/gabrielpondc">GabrielPondC</a></span></section>
    </div>
</body>
</html>

