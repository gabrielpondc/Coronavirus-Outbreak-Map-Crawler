<?php
DEFINE ('DB_USER','root');
DEFINE ('DB_PASSWORD','gjk19961226');
DEFINE ('DB_HOST','localhost');
DEFINE ('DB_NAME','virus');
$dbc=@mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) OR die('Could not to connect to Mysql:'.mysqli_connect_error());
mysqli_set_charset($dbc, 'utf8');
$sqlh="select id,time,dia,sus,cur,de from  krhistory";
$resh=mysqli_query($dbc,$sqlh);
$resulth=mysqli_fetch_array($resh);
$sqlf="select * from  krc";
$resf=mysqli_query($dbc,$sqlf);
$resultf=mysqli_fetch_array($resf);
?>
<head>
    <meta name="viewport" content="width=device-width,target-densitydpi=high-dpi,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
  <meta charset="UTF-8">
  <title>每日疫情记录</title>
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
    <style>
        * {
            box-sizing: border-box;
            outline: none;
        }


        .btn {
            border: none;
            color: white;
            overflow: hidden;
            margin: 1rem;
            padding: 0;
            text-transform: uppercase;
            width: 150px;
            height: 40px;
        }
        .btn.color-1 {
            background-color: #426fc5;
        }
        .btn.color-2 {
            background-color: #00897b;
        }
        .btn.color-3 {
            background-color: #f6774f;
        }
        .btn.color-4 {
            background-color: #e94043;
        }

        .btn-border.color-1 {
            background-color: transparent;
            border: 2px solid #95d7ff;
            color: #95d7ff;
        }
        .btn-border.color-2 {
            background-color: transparent;
            border: 2px solid #00897b;
            color: #00897b;
        }
        .btn-border.color-3 {
            background-color: transparent;
            border: 2px solid #f6774f;
            color: #f6774f;
        }
        .btn-border.color-4 {
            background-color: transparent;
            border: 2px solid #e94043;
            color: #e94043;
        }

        .btn-round {
            border-radius: 10em;
        }

        .material-design {
            position: relative;
        }
        .material-design canvas {
            opacity: 0.25;
            position: absolute;
            top: 0;
            left: 0;
        }

    </style>
</head>
<body>
<div style="text-align: center">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion"
                   href="#collapse">疫情走势</a>
            </h3>
        </div>
        <div id="collapse" class="panel-collapse collapse in">
            <div class="panel-body">
                <div id="qingkuang" style="height: 300px;width: auto;margin:20px 0 0;position: relative;top: 25%;"></div>
                <div id="zhuangtai" style="height: 300px;width: auto;margin:20px 0 0;position: relative;top: 25%;"></div>
                <script type="text/javascript">
                    var dom = document.getElementById("qingkuang");
                    var myChart = echarts.init(dom);
                    var app = {};
                    option = null;
                    option = {

                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data: ['现有确诊', '当日新增']
                        },
                        grid: {
                            left: '3%',
                            right: '4%',
                            bottom: '3%',
                            containLabel: true
                        },
                        toolbox: {
                        },
                        xAxis: {
                            type: 'category',
                            boundaryGap: false,
                            data: [<?php
                                foreach ($resh as $row){
                                    echo "'{$row['time']}',";
                                };
                                ?>]
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [
                            {
                                name: '现有确诊',
                                type: 'line',
                                itemStyle: {
                                    normal: {
                                        color: "#fb776b",
                                        lineStyle: {
                                            color: "#fb776b"
                                        }
                                    }
                                },
                                data: [<?php
                                    foreach ($resh as $row){
                                        echo "{$row['dia']},";
                                    };
                                    ?>]
                            },
                            {
                                name: '当日新增',
                                type: 'bar',
                                itemStyle: {
                                    normal: {
                                        color: "#f7ab1a",
                                        lineStyle: {
                                            color: "#f7ab1a"
                                        }
                                    }
                                },
                                data: [<?php
                                    foreach ($resh as $row){
                                        echo "{$row['sus']},";
                                    };
                                    ?>]
                            }
                        ]
                    };
                    ;
                    if (option && typeof option === "object") {
                        myChart.setOption(option, true);
                    }
                </script>

                <script type="text/javascript">
                    var dom = document.getElementById("zhuangtai");
                    var myChart = echarts.init(dom);
                    var app = {};
                    option = null;
                    option = {

                        tooltip: {
                            trigger: 'axis'
                        },
                        legend: {
                            data: ['治愈', '死亡']
                        },
                        grid: {
                            left: '3%',
                            right: '4%',
                            bottom: '3%',
                            containLabel: true
                        },
                        toolbox: {
                        },
                        xAxis: {
                            type: 'category',
                            boundaryGap: false,
                            data: [<?php
                                foreach ($resh as $row){
                                    echo "'{$row['time']}',";
                                };
                                ?>]
                        },
                        yAxis: {
                            type: 'value'
                        },
                        series: [

                            {
                                name: '治愈',
                                type: 'line',
                                itemStyle: {
                                    normal: {
                                        color: "#178b50",
                                        lineStyle: {
                                            color: "#178b50"
                                        }
                                    }
                                },
                                data: [<?php
                                    foreach ($resh as $row){
                                        echo "{$row['cur']},";
                                    };
                                    ?>]
                            },
                            {
                                name: '死亡',
                                type: 'line',
                                itemStyle: {
                                    normal: {
                                        color: "#4d5054",
                                        lineStyle: {
                                            color: "#4d5054"
                                        }
                                    }
                                },
                                data: [<?php
                                    foreach ($resh as $row){
                                        echo "{$row['de']},";
                                    };
                                    ?>]
                            }
                        ]
                    };
                    ;
                    if (option && typeof option === "object") {
                        myChart.setOption(option, true);
                    }
                </script>
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
        <form  action="krre.php" method="POST" style="text-align: center" class="bs-example bs-example-form" role="form">
            <div id="login">
                <div class="input-group"><span class="input-group-addon">日期</span><input name="date" type="date"  class="form-control"></div><br/>
                <div class="input-group"><span class="input-group-addon">现有确诊</span><input name="confirm" type="text" placeholder="输入确诊人数" class="form-control"></div><br/>
                <div class="input-group"><span class="input-group-addon">当日新增</span><input name="suspect" type="text" placeholder="输入疑似人数" class="form-control"></div><br/>
                <div class="input-group"><span class="input-group-addon">治愈</span><input name="cure" type="text" placeholder="输入治愈人数" class="form-control"></div><br/>
                <div class="input-group"><span class="input-group-addon">死亡</span><input name="death" type="text" placeholder="输入死亡人数" class="form-control"></div><br/>
                <label><input type="submit" value="增加" class="btn btn-round color-2 material-design" data-color="#ffffff"></label>
            </div>
        </form>
    </div>
</div>
</div>
<?php
if ($_SERVER["REQUEST_METHOD"] == "POST")
{
    $riqi = $_POST["date"];
    $qz = $_POST["confirm"];
    $ys = $_POST["suspect"];
    $zy = $_POST["cure"];
    $sw = $_POST["death"];
    $sqla="insert into krhistory VALUES (NULL,'{$riqi}','{$qz}','{$ys}','{$zy}','{$sw}' )";
    $resa=mysqli_query($dbc,$sqla);
    if($resa==1)
    {
        echo "<script>alert('添加成功！')</script>";
        echo "<script>window.location.href='krre.php'</script>";
    }
    else
    {
        $c = exec("python C:\\Users\\GabrielPondC\\Desktop\\dsrw.py", $out, $res);
        echo "<script>alert(\"已通过Python提交数据\");</script>";
        echo "<script>window.location.href='krre.php'</script>";
    }
}
?>
<div class="panel panel-primary">
    <div class="panel-heading">
        <h3 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion"
               href="#collapseTwo">疫情信息查修</a>
                </h3>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
    <div class="panel-body">

        <table  width=100% class="table table-striped">
            <tr>
                <th style="text-align: center">时间</th>
                <th style="text-align: center">现有确诊</th>
                <th style="text-align: center">当日新增</th>
                <th style="text-align: center">治愈</th>
                <th style="text-align: center">死亡</th>
                <th style="text-align: center">编辑</th>
                <th style="text-align: center">删除</th>
            </tr>
            <?php

            foreach ($resh as $row){
                echo "<td align='center'>{$row['time']}</td>";
                echo "<td align='center'>{$row['dia']}</td>";
                echo "<td align='center'>{$row['sus']}</a></td>";
                echo "<td align='center'>{$row['cur']}</td>";
                echo "<td align='center'>{$row['de']}</td>";
                echo "<td align='center'><a href='krree.php?id={$row['id']}'><img src='http://computercau.top/library/image/xiugai.png'></a> </td>";
                echo "<td align='center'><a href='krred.php?id={$row['id']}'><img src='http://computercau.top/library/image/delete.png'></a></td>";
                echo "</tr>";
            };
            ?>
        </table>
        </div>
    </div>
</div>
</div>
    <div style="text-align: center">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">
                <a data-toggle="collapse" data-parent="#accordion"
                   href="#collapse3">死亡\治愈详情编辑</a>
            </h3>
        </div>
        <div id="collapse3" class="panel-collapse collapse">
            <div class="panel-body">
                <table  width=100% class="table table-striped">
                    <tr>
                        <th style="text-align: center">地区</th>
                        <th style="text-align: center">治愈</th>
                        <th style="text-align: center">死亡</th>
                        <th style="text-align: center">编辑</th>
                    </tr>
                    <?php

                    foreach ($resf as $row){
                        echo "<td align='center'>{$row['city']}</td>";
                        echo "<td align='center'>{$row['cu']}</td>";
                        echo "<td align='center'>{$row['de']}</a></td>";
                        echo "<td align='center'><a href='krd.php?id={$row['id']}'><img src='http://computercau.top/library/image/xiugai.png'></a> </td>";
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

