<!doctype html>
<?php
DEFINE ('DB_USER','root');
DEFINE ('DB_PASSWORD','gjk19961226');
DEFINE ('DB_HOST','211.54.64.56');
DEFINE ('DB_NAME','virus');
$dbc=@mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) OR die('Could not to connect to Mysql:'.mysqli_connect_error());
mysqli_set_charset($dbc, 'utf8');
$sqlb="select id,location,Diagnosis,Suspected,death,cure  from  content";
$resb=mysqli_query($dbc,$sqlb);
$resultb=mysqli_fetch_array($resb);
$sqla="select updatetime  from  time";
$resa=mysqli_query($dbc,$sqla);
$resulta=mysqli_fetch_array($resa);
$sqlc="select dia,sus,de,res  from  dom";
$resc=mysqli_query($dbc,$sqlc);
$resultc=mysqli_fetch_array($resc);
?>
<html>

<head>
<meta charset="utf-8">
<title>疫情地图</title>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/echarts.min.js"></script>
<script src="js/china.js"></script>
</head>

<body>

<h1 style="align-content: center"> 2019-nCoV武汉新型冠状肺炎疫情地图</h1>
<h3 style="align-content: center"><? foreach ($resa as $row){echo "更新时间：{$row['updatetime']}";}; ?></h3>
<h3 style="align-content: center">全国：确诊<span style="color: #4169e2"><?php echo $resultc['dia'];?></span>例，疑似<span style="color: #4169e2"><?php echo $resultc['sus'];?></span>例</h3>
<h3 style="align-content: center">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp治愈<span style="color: #4169e2"><?php echo $resultc['res'];?></span>例，死亡<span style="color: #4169e2"><?php echo $resultc['de'];?></span>例</h3>
<div id="container" style="height: 800px;width:1200px;background:white;margin:20px 0 0;"></div>

<script type="text/javascript">
    // 全国省份列表
    var dataMap = [{ name: '北京' }, { name: '天津' }, { name: '上海' }, { name: '重庆' }, { name: '河北' }, { name: '河南' }, { name: '云南' }, { name: '辽宁' }, { name: '黑龙江' }, { name: '湖南' }, { name: '安徽' }, { name: '山东' },
    { name: '新疆' }, { name: '江苏' }, { name: '浙江' }, { name: '江西' }, { name: '湖北' }, { name: '广西' }, { name: '甘肃' }, { name: '山西' }, { name: '内蒙古' }, { name: '陕西' }, { name: '吉林' }, { name: '福建' }, { name: '贵州' },
    { name: '广东' }, { name: '青海' }, { name: '西藏' }, { name: '四川' }, { name: '宁夏' }, { name: '海南' }, { name: '台湾' }, { name: '香港' }, { name: '澳门' }]
    // 需要在页面上直接标记出来的城市
    var specialMap = [<? foreach ($resb as $row){echo "'{$row['location']}',";}; ?>]
    // 对dataMap进行处理，使其可以直接在页面上展示
    for (var i = 0; i < specialMap.length; i++) {
        for (var j = 0; j < dataMap.length; j++) {
            if (specialMap[i] == dataMap[j].name) {
                dataMap[j].selected = true;
                break;
            }

        }
    }
    // 绘制图表，准备数据
    var option = {

        series: [
            {
                name: '中国',
                type: 'map',
                mapType: 'china',
                selectedMode: 'multiple',
                label: {
                    normal: {
                        show: true,//显示省份标签
                        textStyle:{color:"#000000"}//省份标签字体颜色
                    },
                    emphasis: {
                        show: true,//对应的鼠标悬浮效果
                         textStyle:{color:"#0b3954"}
                    }
                },
                itemStyle: {
                    normal: {
                        borderWidth: .5,//区域边框宽度
                        // borderColor: '#009fe8',//区域边框颜色
                        // areaColor:"#ffefd5",//区域颜色
                    },
                    emphasis: {
                        borderWidth: .5,
                        borderColor: '#bfd7ea',
                        areaColor: "#ff6663",
                    }
                },
                data: dataMap
            }
        ]
    };
    //初始化echarts实例
    var myChart = echarts.init(document.getElementById('container'));
    //使用制定的配置项和数据显示图表
    myChart.setOption(option);
</script>

<div style="text-align:center;clear:both;">
<script src="/gg_bd_ad_720x90.js" type="text/javascript"></script>
<script src="/follow.js" type="text/javascript"></script>
</div>
<h3>
    <?php
foreach ($resb as $row){
    echo "<tr>";
    echo "<td>{$row['location']}&nbsp&nbsp&nbsp&nbsp&nbsp</td>";
    echo "<td>&nbsp确诊&nbsp&nbsp&nbsp<span style=\"color: #4169e2\">{$row['Diagnosis']}</span>&nbsp&nbsp&nbsp例,</td>";
    echo "<td>&nbsp疑似&nbsp&nbsp&nbsp<span style=\"color: #4169e2\">{$row['Suspected']}</span>&nbsp&nbsp&nbsp例,</td>";
    echo "<td>&nbsp死亡&nbsp&nbsp&nbsp<span style=\"color: #4169e2\">{$row['death']}</span>&nbsp&nbsp&nbsp例,</td>";
    echo "<td>&nbsp治愈&nbsp&nbsp&nbsp<span style=\"color: #4169e2\">{$row['cure']}</span>&nbsp&nbsp&nbsp例</td></br>";
    echo "</tr>";
};
?>
</h3>

</body>
</html>