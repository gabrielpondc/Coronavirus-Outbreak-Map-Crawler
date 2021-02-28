<!doctype html>
<?php
DEFINE ('DB_USER','root');
DEFINE ('DB_PASSWORD','gjk19961226');
DEFINE ('DB_HOST','localhost');
DEFINE ('DB_NAME','virus');
$dbc=@mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) OR die('Could not to connect to Mysql:'.mysqli_connect_error());
mysqli_set_charset($dbc, 'utf8');
$sqlb="select id,location,Diagnosis,death,cure  from  content";
$resb=mysqli_query($dbc,$sqlb);
$resultb=mysqli_fetch_array($resb);
$sqla="select updatetime,catchtime  from  time";
$resa=mysqli_query($dbc,$sqla);
$resulta=mysqli_fetch_array($resa);
$sqlc="select dia,sus,de,res  from  dom";
$resc=mysqli_query($dbc,$sqlc);
$resultc=mysqli_fetch_array($resc);
$sqld="select location,dia,res,de from  global";
$resd=mysqli_query($dbc,$sqld);
$resultd=mysqli_fetch_array($resd);
$sqle="select id,con  from  news";
$rese=mysqli_query($dbc,$sqle);
$resulte=mysqli_fetch_array($rese);
$sqlf="select loc,dia,res,de  from  jiangsu";
$resf=mysqli_query($dbc,$sqlf);
$resultf=mysqli_fetch_array($resf);
$sqlg="select dia,cur,de  from  js";
$resg=mysqli_query($dbc,$sqlg);
$resultg=mysqli_fetch_array($resg);
$sqlh="select time,dia,sus,cur,de from  history";
$resh=mysqli_query($dbc,$sqlh);
$resulth=mysqli_fetch_array($resh);
?>
<html>

<head>
<meta charset="utf-8">
<title>武汉新型冠状肺炎2019-nCoV疫情地图</title>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/echarts.min.js"></script>
<script src="js/china.js"></script>
<link rel="stylesheet" type="text/css" href="normalize.css">
<link rel="stylesheet" type="text/css" href="component.css">
<script type="text/javascript" src="js/world.js"></script>
<link rel="stylesheet" href="bootstrap.min.css">
<script type="text/javascript" src="js/jquery-1.8.0.js"></script>
<script type="text/javascript" src="./js/map/province/jiangsu.js"></script>
<script src="js/echarts.js" charset="UTF-8"></script>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?c2be75c7b1373fe7c0712b4ee41fc07e";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

    <script type="text/javascript">
        $(document).ready(function(){
            $('.counter-value').each(function(){
                $(this).prop('Counter',0).animate({
                    Counter: $(this).text()
                },{
                    duration: 3500,
                    easing: 'swing',
                    step: function (now){
                        $(this).text(Math.ceil(now));
                    }
                });
            });
        });
    </script>
    <style>

        * {
            margin: 0px;
            padding: 0px;            /*  去掉所有标签的marign和padding的值  */
        }
        ul {
            list-style: none;           /*  去掉ul标签默认的点样式  */
        }
        #mar {
            width: auto;
            -moz-border-radius: 1px;      /* Gecko browsers */
            -webkit-border-radius: 1px;   /* Webkit browsers */

            text-align: center;               /* 让新闻内容靠左 */
        }
        #marBox {
            height: 24px;//可改为24，则只显示一条;
            width: auto;
            overflow: hidden;    /*  这个一定要加，超出的内容部分要隐藏，免得撑高中间部分 */
        }
        #mar ul li {
            height: 24px;
        }
        #mar ul li a {
            width: 180px;
            float: left;
            display: block;
            overflow: hidden;
            text-indent: 15px;
            height: 24px;
        }

    </style>
</head>
<body bgcolor="#030303">
<div style="text-align: center;color: whitesmoke;background:#010101 ">


        <div id="main" style="width:100%;">
            <img src='yq.png'style="max-width:100%;"/>
            <h4 style="align-content: center"><? foreach ($resa as $row){echo "更新时间：<span style=\"color: #fb776b\">{$row['updatetime']}</span>";}; ?></h4>
            <h5>数据来源：各省市卫建委<span style="color: #999">（全国信息包含港澳台）</span></h5>
            <table align="center" width='20px' class="table">
                <th style="background: #030303;border:0px;">
            <div  id="mar">
                <div  id="marBox">
                     <ul>
                        <?php
                        foreach ($rese as $row){
                            echo "<li>{$row['con']}</li>";
                        };
                        ?>
                    </ul>
                </div>

            </div>
            <!-- 公告结束 -->
                </th>
            </table>

            <script type="text/javascript">
                var aera=document.getElementById("marBox");
                aera.innerHTML+=aera.innerHTML;//实现无缝滚动，克隆自身
                aera.scrollTop=0;//初始值
                var iLiHeight=24;//行间距，可改为48，则两行显示
                var timer;//定时器
                var speed=50;
                var delay=3000;
                function startMove(){
                    aera.scrollTop++;
                    timer=setInterval('scrollUp()',speed)
                }
                function scrollUp(){
                    //aera.scrollTop++;
                    if (aera.scrollTop%iLiHeight==0) {
                        clearInterval(timer);
                        setTimeout('startMove()',delay);
                    } else{
                        aera.scrollTop++;
                        if (aera.scrollTop>=aera.scrollHeight/2) {
                            aera.scrollTop=0;
                        }
                    }
                }
                setTimeout("startMove()",delay);

            </script>

            <h2>中国</h2>
            <table  width='50%' style="font-size: 28px;"rules=none frame=void  class="table">

                <tr style="border:0px;">
                    <th style="text-align: center;border:0px;">确诊</span></th>
                    <th style="border:0px;text-align: center;">疑似</span></th>
                    <th style="border:0px;text-align: center;">治愈</span></th>
                    <th style="border:0px;text-align: center;">死亡</span></th>
                </tr>

                <?php

                foreach ($resc as $row){

                    echo "<tr style='border:0px;'>";
                    echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #fb776b\">{$row['dia']}</span></td>";
                    echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #f7ab1a\">{$row['sus']}</span></td>";
                    echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #74a500\">{$row['res']}</span></td>";
                    echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #B7C4CA\">{$row['de']}</span></td>";

                    echo "</tr>";
                };
                ?>

            </table>

            <div id="mainMap" style="height:633px;width:auto;background:white;margin:20px;position: relative;top: 25%;"></div>
            <script>
                var mydata = [
                    <?php
                    foreach ($resb as $row){
                        echo " {name: '{$row['location']}', value: '{$row['Diagnosis']}',de:'{$row['death']}',cu:'{$row['cure']}'},";
                    };
                    ?>

                ];
                var optionMap = {
                    textStyle:{

                        color:'white'

                    },
                    backgroundColor: '#00101a',
                    tooltip : {
                        trigger: 'item',
                        formatter: function(params) { // 鼠标滑过显示的数
                            return params.data.name+'<br>确诊:'+params.data.value+'例'+'<br>治愈:'+params.data.cu+'例'+'<br>死亡:'+params.data.de+'例';
                        }
                    },

                    //左侧小导航图标
                    visualMap: {
                        normal:{
                            textStyle: {
                                fontSize: 10,
                                color:'white'
                            }},
                        textStyle:{

                            color:'white'

                        },
                        type: 'piecewise',
                        orient: 'horizontal',
                        left: 'center',
                        top: 'bottom',
                        splitList: [
                            {start: 5000,color:'#4b0906'},{start: 1000, end: 5000,color:'#861608'},
                            {start: 500, end: 999,color:'#a21508'},{start: 100, end: 499,color:'#be3128'},
                            {start: 10, end: 99,color: '#e86832'},{start: 1, end: 9,color:'#f6b791'},
                            {value:0,color:'#fff'}
                        ]
                    },

                    //配置属性
                    series: [{
                        name: '确诊',
                        type: 'map',
                        mapType: 'china',
                        roam: false,
                        label: {
                            normal: {
                                show: true  ,//省份名称
                                textStyle:{
                                    color:'white'
                                }
                            },
                            emphasis: {
                                show: false
                            },
                        },
                        data:mydata  //数据
                    }]
                };
                //初始化echarts实例
                var t = echarts.init(document.getElementById('mainMap'));
                t.on('click', function(param) {
                    console.log(param,param.name);

                });
                //使用制定的配置项和数据显示图表
                t.setOption(optionMap);
                window.addEventListener('resize',function () {
                    t.resize()
                });
            </script>

            <h3>累计感染情况走势</h3>
            <div id="qingkuang" style="height: 300px;width: auto;margin:20px 0 0;position: relative;top: 25%;background: #222222"></div>
            <h3>累计患病后患者状况走势</h3>
            <div id="zhuangtai" style="height: 300px;width: auto;margin:20px 0 0;position: relative;top: 25%;background: #222222"></div>
            <script type="text/javascript">
                var dom = document.getElementById("qingkuang");
                var art = echarts.init(dom);
                var app = {};
                option = null;
                option = {
                    textStyle:{

                        color:'white'

                    },
                    tooltip: {
                        trigger: 'axis'
                    },
                    legend: {
                        textStyle:{

                            color:'white'

                        },
                        data: ['确诊', '疑似']
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
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
                        splitLine :{    //网格线
                            lineStyle:{
                                type:'dashed'    //设置网格线类型 dotted：虚线   solid:实线
                            }},
                        type: 'value'
                    },
                    series: [
                        {
                            name: '确诊',
                            type: 'line',
                            itemStyle: {
                                normal: {
                                    color: "#fb776b",
                                    lineStyle: {
                                        color: "#fb776b",
                                        shadowColor: '#fb776b',
                                        shadowBlur: 150
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
                            name: '疑似',
                            type: 'line',
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
                    art.setOption(option, true);
                }
                window.addEventListener('resize',function () {
                    art.resize()
                });
            </script>

            <script type="text/javascript">
                var dom = document.getElementById("zhuangtai");
                var Chart = echarts.init(dom);
                var app = {};
                option = null;
                option = {
                    textStyle:{

                        color:'white'

                    },
                    tooltip: {
                        trigger: 'axis'
                    },
                    legend: {
                        textStyle:{

                            color:'white'

                        },
                        data: ['治愈', '死亡']
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
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
                        splitLine :{    //网格线
                            lineStyle:{
                                type:'dashed'    //设置网格线类型 dotted：虚线   solid:实线
                            },
                    },
                        type: 'value'
                    },
                    series: [

                        {
                            name: '治愈',
                            type: 'line',
                            itemStyle: {
                                normal: {
                                    color: "#74a500",
                                    lineStyle: {
                                        color: "#74a500"
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
                                    color: "#B7C4CA",
                                    lineStyle: {
                                        color: "#B7C4CA"
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
                    Chart.setOption(option, true);
                }
                window.addEventListener('resize',function () {
                    Chart.resize()
                });
            </script>
<br>
            <table  width='100%' style="font-size: 25px;" class="table-condensed">

                <tr>
                    <th style="text-align: center;background: #00101a">地区</th>
                    <th style="text-align: center;background:  #222222"><span style="color: #ff3131">确诊</span></th>
                    <th style="text-align: center;background:  #222222"><span style="color: #74a500">治愈</span></th>
                    <th style="text-align: center;background:  #222222"><span style="color:#B7C4CA">死亡</span></th>
                </tr>

                        <?php
                        foreach ($resb as $row){
                            echo "<tr>";
                            echo "<td style='background: #00101a;font-style: inherit; font-family: inherit;' align=\"center\"><span style=\"color:#fff\">{$row['location']}</span></td>";
                            echo "<td style='background: #222222' align=\"center\"><span style=\"color: #ff3131\">{$row['Diagnosis']}</span>&nbsp&nbsp&nbsp例</td>";
                            echo "<td style='background: #222222' align=\"center\"><span style=\"color: #74a500\">{$row['cure']}</span>&nbsp&nbsp&nbsp例</td>";
                            echo "<td style='background: #222222' align=\"center\"><span style=\"color: #B7C4CA\">{$row['death']}</span>&nbsp&nbsp&nbsp例</td>";

                            echo "</tr>";
                        };
                        ?>
                    </h2>

            </table>
            <h6 style="text-align: right;"><span style="color: #999;">抓取时间：<?php echo $resulta['catchtime'];?></span></h6>

</div>



        <h2>江苏省</h2>
        <table  width='50%' style="font-size: 28px;"rules=none frame=void class="table">

            <tr>
                <th style="text-align: center;">确诊</span></th>
                <th style="text-align: center;">治愈</span></th>
                <th style="text-align: center;">死亡</span></th>
            </tr>

            <?php
            foreach ($resg as $row){
                echo "<tr>";
                echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #fb776b\">{$row['dia']}</span></td>";;
                echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #74a500\">{$row['cur']}</span></td>";
                echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #B7C4CA\">{$row['de']}</span></td>";

                echo "</tr>";
            };
            ?>
        </table>
            <div id="js" style="width:auto;height:660px;margin:20px;position:relative;top: 25%;"></div>
            <table  width='100%' style="font-size: 25px;" class="table-condensed">

                <tr>
                    <th style="text-align: center;background: #00101a"> 地区</th>
                    <th style="text-align: center;background:  #222222"><span style="color: #ff3131">确诊</span></th>
                    <th style="text-align: center;background:  #222222"><span style="color: #74a500">治愈</span></th>
                    <th style="text-align: center;background:  #222222"><span style="color:#B7C4CA">死亡</span></th>
                </tr>

                <?php
                foreach ($resf as $row){
                    echo "<tr>";
                    echo "<td style='background: #00101a;font-style: inherit; font-family: inherit;' align=\"center\"><span style=\"color:#fff\">{$row['loc']}</span></td>";
                    echo "<td style='background: #222222' align=\"center\"><span style=\"color: #ff3131\">{$row['dia']}</span>&nbsp&nbsp&nbsp例</td>";
                    echo "<td style='background: #222222' align=\"center\"><span style=\"color: #74a500\">{$row['res']}</span>&nbsp&nbsp&nbsp例</td>";
                    echo "<td style='background: #222222' align=\"center\"><span style=\"color: #B7C4CA\">{$row['de']}</span>&nbsp&nbsp&nbsp例</td>";

                    echo "</tr>";
                };
                ?>
                </h2>

            </table>
        <h6 style="text-align: right;"><span style="color: #999;">抓取时间：<?php echo $resulta['catchtime'];?></span></h6>





<script type="text/javascript">
    var mydata = [
        <?php
        foreach ($resf as $row){
            echo "{name: '{$row['loc']}市',value: '{$row['dia']}',cure:'{$row['res']}',death:'{$row['de']}' },";
        };
        ?>];
    var optionMap = {
        backgroundColor: '#00101a',
        tooltip : {
            trigger: 'item',
            formatter: function(params) { // 鼠标滑过显示的数
                return params.data.name+'<br>确诊:'+params.data.value+'例'+'<br>治愈:'+params.data.cure+'例'+'<br>死亡:'+params.data.death+'例';
            }
        },
        //左侧小导航图标
        visualMap: {
            textStyle:{
                color:'white'
            },
            type: 'piecewise',
            orient: 'horizontal',
            left: 'center',
            top: 'bottom',
            splitList: [
                {start: 40,color:'#4b0906'},
                {start: 31, end: 40,color:'#a21508'},{start: 21, end: 30,color:'#be3128'},
                {start: 11, end: 20,color: '#e86832'},{start: 1, end: 10,color:'#f6b791'},
                {value:0,color:'#fff'}
            ]


        },
        //配置属性
        series: [{
            name: '数据',
            type: 'map',
            mapType: '江苏',
            roam: false,
            label: {
                normal: {
                    textStyle:{
                        color:'white'
                    },
                    show: true  //省份名称
                },
                emphasis: {
                    show: false
                }
            },
            data:mydata  //数据
        }]
    };
    //初始化echarts实例
    var my = echarts.init(document.getElementById('js'));
    my.on('click', function(param) {
    console.log(param,param.name);

    });
    //使用制定的配置项和数据显示图表
    my.setOption(optionMap);
    window.addEventListener('resize',function () {
        my.resize()
    });
</script>

        <h2>境外</h2>
        <div id="global" style="width: auto;height: 450px;margin:20px;position:relative;top: 25%;"></div>
        <table  width='100%' style="font-size: 25px;" class="table-condensed">

            <tr>
                <th style="text-align: center;background: #00101a"> 地区</th>
                <th style="text-align: center;background:  #222222"><span style="color: #ff3131">确诊</span></th>
                <th style="text-align: center;background:  #222222"><span style="color: #74a500">治愈</span></th>
                <th style="text-align: center;background:  #222222"><span style="color:#B7C4CA">死亡</span></th>
            </tr>

            <?php
            foreach ($resd as $row){
                echo "<tr>";
                echo "<td style='background: #00101a;font-style: inherit; font-family: inherit;' align=\"center\"><span style=\"color:#fff\">{$row['location']}</span></td>";
                echo "<td style='background: #222222' align=\"center\"><span style=\"color: #ff3131\">{$row['dia']}</span>&nbsp&nbsp&nbsp例</td>";
                echo "<td style='background: #222222' align=\"center\"><span style=\"color: #74a500\">{$row['res']}</span>&nbsp&nbsp&nbsp例</td>";
                echo "<td style='background: #222222' align=\"center\"><span style=\"color: #B7C4CA\">{$row['de']}</span>&nbsp&nbsp&nbsp例</td>";

                echo "</tr>";
            };
            ?>
            </h2>

        </table>
        <h6 style="text-align: right;"><span style="color: #999;">抓取时间：<?php echo $resulta['catchtime'];?></span></h6>
        <script>

            //初始化echarts实例
            var myChart = echarts.init(document.getElementById('global'));
            //使用制定的配置项和数据显示图表
            myChart.setOption({
                 backgroundColor: "#00101a",
                title: {
                    // text: '在线设备分布',
                    left: '40%',
                    top: '0px',
                    textStyle: {
                        color: '#fff',
                        opacity: 0.7
                    }
                },
                nameMap:{
                    "Afghanistan": "阿富汗",
                    "Albania": "阿尔巴尼亚",
                    "Algeria": "阿尔及利亚",
                    "Angola": "安哥拉",
                    "Argentina": "阿根廷",
                    "Armenia": "亚美尼亚",
                    "Australia": "澳大利亚",
                    "Austria": "奥地利",
                    "Azerbaijan": "阿塞拜疆",
                    "Bahamas": "巴哈马",
                    "Bahrain": "巴林",
                    "Bangladesh": "孟加拉国",
                    "Belarus": "白俄罗斯",
                    "Belgium": "比利时",
                    "Belize": "伯利兹",
                    "Benin": "贝宁",
                    "Bhutan": "不丹",
                    "Bolivia": "玻利维亚",
                    "Bosnia and Herz.": "波斯尼亚和黑塞哥维那",
                    "Botswana": "博茨瓦纳",
                    "Brazil": "巴西",
                    "British Virgin Islands": "英属维京群岛",
                    "Brunei": "文莱",
                    "Bulgaria": "保加利亚",
                    "Burkina Faso": "布基纳法索",
                    "Burundi": "布隆迪",
                    "Cambodia": "柬埔寨",
                    "Cameroon": "喀麦隆",
                    "Canada": "加拿大",
                    "Cape Verde": "佛得角",
                    "Cayman Islands": "开曼群岛",
                    "Central African Rep.": "中非共和国",
                    "Chad": "乍得",
                    "Chile": "智利",
                    "China": "中国",
                    "Colombia": "哥伦比亚",
                    "Comoros": "科摩罗",
                    "Congo": "刚果",
                    "Costa Rica": "哥斯达黎加",
                    "Croatia": "克罗地亚",
                    "Cuba": "古巴",
                    "Cyprus": "塞浦路斯",
                    "Czech Rep.": "捷克共和国",
                    "Côte d'Ivoire": "科特迪瓦",
                    "Dem. Rep. Congo": "刚果民主共和国",
                    "Dem. Rep. Korea": "朝鲜",
                    "Denmark": "丹麦",
                    "Djibouti": "吉布提",
                    "Dominican Rep.": "多米尼加共和国",
                    "Ecuador": "厄瓜多尔",
                    "Egypt": "埃及",
                    "El Salvador": "萨尔瓦多",
                    "Equatorial Guinea": "赤道几内亚",
                    "Eritrea": "厄立特里亚",
                    "Estonia": "爱沙尼亚",
                    "Ethiopia": "埃塞俄比亚",
                    "Falkland Is.": "福克兰群岛",
                    "Fiji": "斐济",
                    "Finland": "芬兰",
                    "Fr. S. Antarctic Lands": "所罗门群岛",
                    "France": "法国",
                    "Gabon": "加蓬",
                    "Gambia": "冈比亚",
                    "Georgia": "格鲁吉亚",
                    "Germany": "德国",
                    "Ghana": "加纳",
                    "Greece": "希腊",
                    "Greenland": "格陵兰",
                    "Guatemala": "危地马拉",
                    "Guinea": "几内亚",
                    "Guinea-Bissau": "几内亚比绍",
                    "Guyana": "圭亚那",
                    "Haiti": "海地",
                    "Honduras": "洪都拉斯",
                    "Hungary": "匈牙利",
                    "Iceland": "冰岛",
                    "India": "印度",
                    "Indonesia": "印度尼西亚",
                    "Iran": "伊朗",
                    "Iraq": "伊拉克",
                    "Ireland": "爱尔兰",
                    "Isle of Man": "马恩岛",
                    "Israel": "以色列",
                    "Italy": "意大利",
                    "Jamaica": "牙买加",
                    "Japan": "日本",
                    "Jordan": "约旦",
                    "Kazakhstan": "哈萨克斯坦",
                    "Kenya": "肯尼亚",
                    "Korea": "韩国",
                    "Kuwait": "科威特",
                    "Kyrgyzstan": "吉尔吉斯斯坦",
                    "Lao PDR": "老挝",
                    "Latvia": "拉脱维亚",
                    "Lebanon": "黎巴嫩",
                    "Lesotho": "莱索托",
                    "Liberia": "利比里亚",
                    "Libya": "利比亚",
                    "Lithuania": "立陶宛",
                    "Luxembourg": "卢森堡",
                    "Macedonia": "马其顿",
                    "Madagascar": "马达加斯加",
                    "Malawi": "马拉维",
                    "Malaysia": "马来西亚",
                    "Maldives": "马尔代夫",
                    "Mali": "马里",
                    "Malta": "马耳他",
                    "Mauritania": "毛利塔尼亚",
                    "Mauritius": "毛里求斯",
                    "Mexico": "墨西哥",
                    "Moldova": "摩尔多瓦",
                    "Monaco": "摩纳哥",
                    "Mongolia": "蒙古",
                    "Montenegro": "黑山共和国",
                    "Morocco": "摩洛哥",
                    "Mozambique": "莫桑比克",
                    "Myanmar": "缅甸",
                    "Namibia": "纳米比亚",
                    "Nepal": "尼泊尔",
                    "Netherlands": "荷兰",
                    "New Caledonia": "新喀里多尼亚",
                    "New Zealand": "新西兰",
                    "Nicaragua": "尼加拉瓜",
                    "Niger": "尼日尔",
                    "Nigeria": "尼日利亚",
                    "Norway": "挪威",
                    "Oman": "阿曼",
                    "Pakistan": "巴基斯坦",
                    "Panama": "巴拿马",
                    "Papua New Guinea": "巴布亚新几内亚",
                    "Paraguay": "巴拉圭",
                    "Peru": "秘鲁",
                    "Philippines": "菲律宾",
                    "Poland": "波兰",
                    "Portugal": "葡萄牙",
                    "Puerto Rico": "波多黎各",
                    "Qatar": "卡塔尔",
                    "Reunion": "留尼旺",
                    "Romania": "罗马尼亚",
                    "Russia": "俄罗斯",
                    "Rwanda": "卢旺达",
                    "S. Geo. and S. Sandw. Is.": "南乔治亚和南桑威奇群岛",
                    "S. Sudan": "南苏丹",
                    "San Marino": "圣马力诺",
                    "Saudi Arabia": "沙特阿拉伯",
                    "Senegal": "塞内加尔",
                    "Serbia": "塞尔维亚",
                    "Sierra Leone": "塞拉利昂",
                    "Singapore": "新加坡",
                    "Slovakia": "斯洛伐克",
                    "Slovenia": "斯洛文尼亚",
                    "Solomon Is.": "所罗门群岛",
                    "Somalia": "索马里",
                    "South Africa": "南非",
                    "Spain": "西班牙",
                    "Sri Lanka": "斯里兰卡",
                    "Sudan": "苏丹",
                    "Suriname": "苏里南",
                    "Swaziland": "斯威士兰",
                    "Sweden": "瑞典",
                    "Switzerland": "瑞士",
                    "Syria": "叙利亚",
                    "Tajikistan": "塔吉克斯坦",
                    "Tanzania": "坦桑尼亚",
                    "Thailand": "泰国",
                    "Togo": "多哥",
                    "Tonga": "汤加",
                    "Trinidad and Tobago": "特立尼达和多巴哥",
                    "Tunisia": "突尼斯",
                    "Turkey": "土耳其",
                    "Turkmenistan": "土库曼斯坦",
                    "U.S. Virgin Islands": "美属维尔京群岛",
                    "Uganda": "乌干达",
                    "Ukraine": "乌克兰",
                    "United Arab Emirates": "阿联酋",
                    "United Kingdom": "英国",
                    "United States": "美国",
                    "Uruguay": "乌拉圭",
                    "Uzbekistan": "乌兹别克斯坦",
                    "Vanuatu": "瓦努阿图",
                    "Vatican City": "梵蒂冈城",
                    "Venezuela": "委内瑞拉",
                    "Vietnam": "越南",
                    "W. Sahara": "西撒哈拉",
                    "Yemen": "也门",
                    "Yugoslavia": "南斯拉夫",
                    "Zaire": "扎伊尔",
                    "Zambia": "赞比亚",
                    "Zimbabwe": "津巴布韦"
                },
                visualMap: {
                    textStyle: {
                        color: '#fff',
                        opacity: 0.7
                    },
                    type: 'piecewise',
                    orient: 'horizontal',
                    left: 'center',
                    top: 'bottom',
                    splitList: [
                        {start: 10000,color:'rgba(56,9,9,0.7)',label:'10000人以上'},{start: 7001,end:9999,color:'rgba(75,9,6,0.71)',label:'7000-9999人'},
                        {start: 3001, end: 7000,color:'rgba(162,21,8,0.71)',label:'3000-7000人'},{start: 1001, end: 3000,color:'rgba(190,49,40,0.71)',label:'1000-3000人'},
                        {start: 100, end: 1000,color: 'rgba(232,104,50,0.71)',label:'100-1000人'},{start: 1, end: 99,color:'rgba(246,183,145,0.71)',label:'1-99人'},
                        {value:0,color:'rgba(181,181,181,0.71)',label:'0人'}
                    ]
                },
                tooltip: {
                    trigger: 'item',
                    formatter: function(params) { // 鼠标滑过显示的数
                        return params.data.name+'<br>确诊:'+params.data.value+'<br>治愈:'+params.data.res+'<br>死亡:'+params.data.de;
                    }
                },
                geo: {
                    map: 'world',
                    label: {

                        emphasis: {
                            show: false
                        }
                    },
                    roam: false,
                    silent: true,
                    itemStyle: {
                        normal: {
                            areaColor: '#2a2b28',
                            borderColor: '#9c989f'
                        },
                        emphasis: {
                            areaColor: '#2a333d'
                        }
                    }
                },
                series: [{
                    type: 'map',
                    mapType: 'world',
                    // zoom: 1.2,
                    mapLocation: {
                        y: 100
                    },
                    data: [
                        <?php
                        foreach ($resd as $row){
                            echo "{name: '{$row['location']}',value: {$row['dia']},res: {$row['res']},de: {$row['de']}},";
                        };
                        ?>
                        {name:'中国',value:<?php echo $resultc['dia'];?>,res:<?php echo $resultc['res'];?>,de:<?php echo $resultc['de'];?>}

                    ],
                    symbolSize: 12,
                    label: {
                        title:{text:'确诊'},
                        normal: {
                            show: false
                        },
                        emphasis: {
                            show: false
                        }
                    },
                    itemStyle: {
                        normal:{
                            areaColor: '#2a2b28',
                            borderColor: '#9c989f'
                        },
                        emphasis: {
                            borderColor: '#fff',
                            borderWidth: 1
                        }
                    }
                }],
            });
            window.addEventListener('resize',function () {
                myChart.resize()
            });
        </script>


    <section class="link-flip" style="font-size: 25px"><a href="light.php">回到原版</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/gabrielpondc/wuhanfeiyan">仓库地址</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:gabrielpondc@cau.ac.kr">反馈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #999">CopyRight©<a herf="https://github.com/gabrielpondc">GabrielPondC</a></span></section>
</div>

</body>
</html>