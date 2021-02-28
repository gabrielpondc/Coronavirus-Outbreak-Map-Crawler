<?php
DEFINE ('DB_USER','root');
DEFINE ('DB_PASSWORD','gjk19961226');
DEFINE ('DB_HOST','localhost');
DEFINE ('DB_NAME','virus');
$dbc=@mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) OR die('Could not to connect to Mysql:'.mysqli_connect_error());
mysqli_set_charset($dbc, 'utf8');
$sqlb="select id,dia-(de+cur) nowdia,dia,sus,cur,de,FORMAT(cur/(dia-de),5) swl from  kr";
$resb=mysqli_query($dbc,$sqlb);
$resultb=mysqli_fetch_array($resb);
$sqld="SELECT city,dia-(de+cu) nowdia,cu,de,dia,newdia FROM krcity";
$resd=mysqli_query($dbc,$sqld);
$resultd=mysqli_fetch_array($resd);
$sqla="select a.*,b.de,b.cu FROM (SELECT * FROM krcity) a LEFT OUTER JOIN (SELECT * FROM krc ) b ON a.city=b.city order by a.dia desc";
$resa=mysqli_query($dbc,$sqla);
$resulta=mysqli_fetch_array($resa);
$sqlh="select id,time,dia,sus,cur,de,convert(de/(dia+de+cur),decimal(12,4))*100 derate,convert(cur/(dia+de+cur),decimal(12,4))*100 curate from  krhistory";
$resh=mysqli_query($dbc,$sqlh);
$resulth=mysqli_fetch_array($resh);
$sqle="select updatetime,catchtime  from  time";
$rese=mysqli_query($dbc,$sqle);
$resulte=mysqli_fetch_array($rese);
$sqlc="select dia,sus,de,res  from  dom";
$resc=mysqli_query($dbc,$sqlc);
$resultc=mysqli_fetch_array($resc);
$sqlf="select location,dia,res,de,dia-(res+de) nowdia from  global order by nowdia desc";
$resf=mysqli_query($dbc,$sqlf);
$resultf=mysqli_fetch_array($resf);
$sqlg="select * from  krc where id=18";
$resg=mysqli_query($dbc,$sqlg);
$resultg=mysqli_fetch_array($resg);
$sqli="select * from  krnews ";
$resi=mysqli_query($dbc,$sqli);
$resulti=mysqli_fetch_array($resi);
$sqlj="SELECT city,dia-(de+cu) dia,cu,de FROM krcity order by dia asc";
$resj=mysqli_query($dbc,$sqlj);
$resultj=mysqli_fetch_array($resj);
$sqlk="select kr.dia-(b.dia+b.cur+b.de) ondia,kr.cur-b.cur oncur,kr.de-b.de onde,kr.dia-(kr.cur+kr.de+b.dia) onnow from (SELECT * FROM krhistory WHERE DATEDIFF(time,NOW())=-1) b,kr";
$resk=mysqli_query($dbc,$sqlk);
$resultk=mysqli_fetch_array($resk);
?>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>韩国疫情状况</title>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?c2be75c7b1373fe7c0712b4ee41fc07e";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

    <script type="text/javascript" src="js/world.js"></script>
    <link rel="stylesheet" href="bootstrap.min.css">
    <script type="text/javascript" src="js/echarts.min.js"></script>
    <script type="text/javascript" src="js/jquery-1.12.4.min.js"></script>
    <link rel="stylesheet" type="text/css" href="normalize.css">
    <link rel="stylesheet" type="text/css" href="component.css">
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
        @-webkit-keyframes rotate-animation {
            0% {
                -webkit-transform: rotate(0deg);
                transform: rotate(0deg);
            }
            100% {
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
            }
        }
        @keyframes rotate-animation {
            0% {
                -webkit-transform: rotate(0deg);
                transform: rotate(0deg);
            }
            100% {
                -webkit-transform: rotate(360deg);
                transform: rotate(360deg);
            }
        }
        @-webkit-keyframes move-animation {
            0% {
                -webkit-transform: translate(0, 0);
                transform: translate(0, 0);
            }
            25% {
                -webkit-transform: translate(-64px, 0);
                transform: translate(-64px, 0);
            }
            75% {
                -webkit-transform: translate(32px, 0);
                transform: translate(32px, 0);
            }
            100% {
                -webkit-transform: translate(0, 0);
                transform: translate(0, 0);
            }
        }
        @-webkit-keyframes move-animation {
            0%{
                -webkit-transform: translate(0,0);
                transform: translate(0,0);
            }
        }
        @keyframes move-animation {
            0% {
                -webkit-transform: translate(0, 0);
                transform: translate(0, 0);
            }
            25% {
                -webkit-transform: translate(-64px, 0);
                transform: translate(-64px, 0);
            }
            75% {
                -webkit-transform: translate(32px, 0);
                transform: translate(32px, 0);
            }
            100% {
                -webkit-transform: translate(0, 0);
                transform: translate(0, 0);
            }
        }

        .circle-loader {
            display: block;
            width: 64px;
            height: 64px;
            margin-left: -32px;
            margin-top: -32px;
            position: absolute;
            left: 50%;
            top: 50%;
            -webkit-transform-origin: 16px 16px;
            transform-origin: 16px 16px;
            -webkit-animation: rotate-animation 5s infinite;
            animation: rotate-animation 5s infinite;
            -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
        }
        .circle-loader .circle {
            -webkit-animation: move-animation 2.5s infinite;
            animation: move-animation 2.5s infinite;
            -webkit-animation-timing-function: linear;
            animation-timing-function: linear;
            position: absolute;
            left: 50%;
            top: 50%;
        }
        .circle-loader .circle-line {
            width: 64px;
            height: 24px;
            position: absolute;
            top: 4px;
            left: 0;
            -webkit-transform-origin: 4px 4px;
            transform-origin: 4px 4px;
        }
        .circle-loader .circle-line:nth-child(0) {
            -webkit-transform: rotate(0deg);
            transform: rotate(0deg);
        }
        .circle-loader .circle-line:nth-child(1) {
            -webkit-transform: rotate(90deg);
            transform: rotate(90deg);
        }
        .circle-loader .circle-line:nth-child(2) {
            -webkit-transform: rotate(180deg);
            transform: rotate(180deg);
        }
        .circle-loader .circle-line:nth-child(3) {
            -webkit-transform: rotate(270deg);
            transform: rotate(270deg);
        }
        .circle-loader .circle-line .circle:nth-child(1) {
            width: 8px;
            height: 8px;
            top: 50%;
            left: 50%;
            margin-top: -4px;
            margin-left: -4px;
            border-radius: 4px;
            -webkit-animation-delay: -0.3s;
            animation-delay: -0.3s;
        }
        .circle-loader .circle-line .circle:nth-child(2) {
            width: 16px;
            height: 16px;
            top: 50%;
            left: 50%;
            margin-top: -8px;
            margin-left: -8px;
            border-radius: 8px;
            -webkit-animation-delay: -0.6s;
            animation-delay: -0.6s;
        }
        .circle-loader .circle-line .circle:nth-child(3) {
            width: 24px;
            height: 24px;
            top: 50%;
            left: 50%;
            margin-top: -12px;
            margin-left: -12px;
            border-radius: 12px;
            -webkit-animation-delay: -0.9s;
            animation-delay: -0.9s;
        }
        .circle-loader .circle-blue {
            background-color: #1f4e5a;
        }
        .circle-loader .circle-red {
            background-color: #ff5955;
        }
        .circle-loader .circle-yellow {
            background-color: #ffb265;
        }
        .circle-loader .circle-green {
            background-color: #00a691;
        }
        .page{
            background-color: white;
        }
    </style>
</head>

<body>
<div class="page" id="none">
    <div class="circle-loader">
        <div class="circle-line">
            <div class="circle circle-blue"></div>
            <div class="circle circle-blue"></div>
            <div class="circle circle-blue"></div>
        </div>
        <div class="circle-line">
            <div class="circle circle-yellow"></div>
            <div class="circle circle-yellow"></div>
            <div class="circle circle-yellow"></div>
        </div>
        <div class="circle-line">
            <div class="circle circle-red"></div>
            <div class="circle circle-red"></div>
            <div class="circle circle-red"></div>
        </div>
        <div class="circle-line">
            <div class="circle circle-green"></div>
            <div class="circle circle-green"></div>
            <div class="circle circle-green"></div>
        </div>
    </div>
</div>

<script>
    document.onreadystatechange = function(){
        if(document.readyState=="complete")
        {
            document.getElementById('none').style.display="none"
        }
    }
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
<div style="width: 100%;height:100%;text-align: center; ">
    <img src='hd.jpg'style="max-width:100%;"/>
    <h2>韩国</h2>
    <h4 style="align-content: center"><? foreach ($rese as $row){echo "更新时间：<span style=\"color: #fb776b\">{$row['catchtime']}</span>";}; ?>&nbsp;<a href="#" onClick="document.location.reload()"><img src="refresh.png"></a> </h4>
    <h5>数据来源：韩国疾病管理本部</h5>
    <table align="center" width='20px' class="table">
        <th style="background: rgba(3,3,3,0);border:0px;">
            <div  id="mar">
                <div  id="marBox">
                    <ul>
                        <?php
                        foreach ($resi as $row){
                            echo "<li>{$row['title']}</li>";
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

    <table  width='50%' style="font-size: 28px;"rules=none frame=void  class="table">

        <tr style="border:0px;">
            <th style="text-align: center;border:0px;">累计确诊</span></th>
            <th style="text-align: center;border:0px;">现有确诊</span></th>
            <th style="border:0px;text-align: center;">疑似</span></th>
            <th style="border:0px;text-align: center;">治愈</span></th>
            <th style="border:0px;text-align: center;">死亡</span></th>
        </tr>

        <?php
        foreach ($resb as $row){
            echo "<tr style='border:0px;'>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #FB4A3E\">{$row['dia']}</span></td>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #fb776b\">{$row['nowdia']}</span></td>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #f7ab1a\">{$row['sus']}</span></td>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #74a500\">{$row['cur']}</span></td>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #5C656B\">{$row['de']}</span></td>";
            echo "</tr>";
        };
        ?>
        <?php
        if($resultk["ondia"]>0){
            $v='+'.$resultk["ondia"];
        }elseif ($resultk["ondia"]==0){
            $v='-';
        }else{
            $v=$resultk["ondia"];
        };
        if($resultk["onnow"]>0){
            $y='+'.$resultk["onnow"];
        }elseif ($resultk["onnow"]==0){
            $y='-';
        }else{
            $y=$resultk["onnow"];
        };
        if($resultk["oncur"]>0){
            $ez='+'.$resultk["oncur"];
        }
        elseif ($resultk["oncur"]==0){
            $ez='-';
        }else{
            $ez=$resultk["oncur"];
        };
        if($resultk["onde"]>0){
            $ef='+'.$resultk["onde"];
        }elseif ($resultk["onde"]==0){
            $ef='-';
        }
        else{
            $ef=$resultk["onde"];
        };
            echo "<tr style='border:0px;'>";
            echo "<td style='border: 0px;font-size: 15px' align=\"center\">(较昨日<span  style=\"color: #FB4A3E;font-size: 15px\">$v</span>)</td>";
            echo "<td style='border: 0px;font-size: 15px' align=\"center\">(较昨日<span  style=\"color: #fb776b;font-size: 15px\">$y</span>)</td>";
            echo "<td style='border: 0px;font-size: 15px' align=\"center\">(<span  style=\"color: #f7ab1a;font-size: 15px\">此数据为瞬时数据</span>)</td>";
            echo "<td style='border: 0px;font-size: 15px' align=\"center\">(较昨日<span  style=\"color: #74a500;font-size: 15px\">$ez</span>)</td>";
            echo "<td style='border: 0px;font-size: 15px' align=\"center\">(较昨日<span  style=\"color: #5C656B;font-size: 15px\">$ef</span>)</td>";
            echo "</tr>";
        ?>
    </table>
<div id="main" style="width: 100%;height: 600px"></div>

<script>

  var mydata = [
      <?php
      foreach ($resd as $row){
          echo " {name: '{$row['city']}', value: '{$row['nowdia']}',death:'{$row['de']}',cure:'{$row['cu']}',dia: '{$row['dia']}'},";
      };
      ?>

  ]
  $.get('js/map/kr.json', function (geoJson) {
    //console.log(geoJson)
    echarts.registerMap('KOREA', geoJson);

    // 可从这里提取每个城市对应的json

    var option_map = {
      tooltip: {
        trigger: 'item',
        formatter: function (params) {
            return params.data.name+'<br>现有确诊:'+params.data.value+'例'+'<br>累计确诊:'+params.data.dia+'例'+'<br>治愈:'+params.data.cure+'例'+'<br>死亡:'+params.data.death+'例';

        }
      },
      visualMap: {
          type: 'piecewise',
          orient: 'horizontal',
          left: 'center',
          top: 'bottom',
          splitList: [
              {start: 3000,color:'#380909',label:'3000人以上'},{start: 1000,end:2999,color:'#4b0906',label:'1000-2999人'},
              {start: 500, end: 999,color:'#a21508',label:'500-999人'},{start: 100, end: 499,color:'#be3128',label:'100-499人'},
              {start: 10, end: 99,color: '#e86832',label:'10-99人'},{start: 1, end: 9,color:'#f6b791',label:'1-9人'},
              {value:0,color:'rgba(181,181,181,0.5)',label:'0人'}
          ]
      },
      geo: {
        map: 'KOREA',
        roam: false
      },
      series: [{
        type: 'map',
        mapType: 'KOREA',
        roam: false,
        label: {
          normal: {
            show: true,
            position: 'inside',
            textStyle: {
                fontWeight: 'bold',
                fontSize: 11,
              color: '#ffffff'
            }
          },
          emphasis: {
            show: true
          }
        },
        itemStyle: {
          normal: {
              borderRadius: 10,
            borderColor: '#777777',
          }
        },
        data: mydata
      }]
    };

  window.addEventListener('resize',function () {
      cdma.resize()
  });
      var cdma = echarts.init(document.getElementById('main'));
      cdma.setOption(option_map);
      cdma.on('click', function (params) {
          console.log(params)
      })
  });
</script>
    <div id="qingkuang" style="height: 400px;width: auto;margin:20px 0 0;position: relative;top: 25%;"></div>
    <div id="zhuangtai" style="height: 300px;width: auto;margin:20px 0 0;position: relative;top: 25%;"></div>
    <script type="text/javascript">
        var dom = document.getElementById("qingkuang");
        var qk = echarts.init(dom);
        var app = {};
        option = null;
        option = {
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['现有确诊', '新增确诊'],
                icon:"circle"
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
            grid: {
                bottom: '70px',
            },
            dataZoom: [{
                textStyle: {
                    color: '#8392A5'
                },
                start: 70,
                handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
                handleSize: '50%',
                left:"center",                           //组件离容器左侧的距离,'left', 'center', 'right','20%'
                top:"90%",                                //组件离容器上侧的距离,'top', 'middle', 'bottom','20%'
                right:"auto",                             //组件离容器右侧的距离,'20%'
                bottom:"auto",
                orient:"horizontal",
                dataBackground: {
                    areaStyle: {
                        color: '#8392A5'
                    },
                    lineStyle: {
                        opacity: 0.8,
                        color: '#8392A5'
                    }
                }
            }, {
                type: 'inside',
                zoomOnMouseWheel:false,                   //如何触发缩放。可选值为：true：表示不按任何功能键，鼠标滚轮能触发缩放。false：表示鼠标滚轮不能触发缩放。'shift'：表示按住 shift 和鼠标滚轮能触发缩放。'ctrl'：表示按住 ctrl 和鼠标滚轮能触发缩放。'alt'：表示按住 alt 和鼠标滚轮能触发缩放。
                moveOnMouseMove:false,
            }],
            series: [
                {
                    name: '现有确诊',
                    type: 'line',
                    smooth: true,
                    symbolSize :7,
                    itemStyle: {
                        normal: {
                            color: "#fb776b",
                            lineStyle: {
                                color: "#fb776b",
                                width:5//设置线条粗细
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
                    name: '新增确诊',
                    type: 'bar',
                    symbolSize :7,
                    itemStyle: {
                        normal: {
                            color: "#f7ab1a",
                            lineStyle: {
                                color: "#f7ab1a",
                                width:5//设置线条粗细
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
            qk.setOption(option, true);
        };
        window.addEventListener('resize',function () {
            qk.resize()
        });
    </script>

    <script type="text/javascript">
        var dom = document.getElementById("zhuangtai");
        var zt = echarts.init(dom);
        var app = {};
        option = null;
        option = {
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data: ['累计治愈', '累计死亡'],
                icon:"circle"
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
            grid: {
                bottom: '70px',
            },
            dataZoom: [{
                textStyle: {
                    color: '#8392A5'
                },
                handleIcon: 'M10.7,11.9v-1.3H9.3v1.3c-4.9,0.3-8.8,4.4-8.8,9.4c0,5,3.9,9.1,8.8,9.4v1.3h1.3v-1.3c4.9-0.3,8.8-4.4,8.8-9.4C19.5,16.3,15.6,12.2,10.7,11.9z M13.3,24.4H6.7V23h6.6V24.4z M13.3,19.6H6.7v-1.4h6.6V19.6z',
                handleSize: '50%',
                left:"center",                           //组件离容器左侧的距离,'left', 'center', 'right','20%'
                top:"90%",                                //组件离容器上侧的距离,'top', 'middle', 'bottom','20%'
                right:"auto",                             //组件离容器右侧的距离,'20%'
                bottom:"auto",
                orient:"horizontal",
                start: 70,
                dataBackground: {
                    areaStyle: {
                        color: '#8392A5'
                    },
                    lineStyle: {
                        opacity: 0.8,
                        color: '#8392A5'
                    }
                }
            }, {
                zoomOnMouseWheel:false,                   //如何触发缩放。可选值为：true：表示不按任何功能键，鼠标滚轮能触发缩放。false：表示鼠标滚轮不能触发缩放。'shift'：表示按住 shift 和鼠标滚轮能触发缩放。'ctrl'：表示按住 ctrl 和鼠标滚轮能触发缩放。'alt'：表示按住 alt 和鼠标滚轮能触发缩放。
                moveOnMouseMove:false,
                type: 'inside'
            }],
            series: [

                {
                    name: '累计治愈',
                    type: 'line',
                    smooth: true,
                    symbolSize :7,
                    itemStyle: {
                        normal: {
                            color: "#74a500",
                            lineStyle: {
                                color: "#74a500",
                                width:5
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
                    name: '累计死亡',
                    type: 'line',
                    smooth: true,
                    symbolSize :7,
                    itemStyle: {
                        normal: {
                            color: "#51585e",
                            lineStyle: {
                                color: "#51585e",
                                width:5
                            }
                        }
                    },
                    data: [<?php
                        foreach ($resh as $row){
                            echo "{$row['de']},";
                        };
                        ?>]
                },

            ]
        };
        ;
        if (option && typeof option === "object") {
            zt.setOption(option, true);
        };
        window.addEventListener('resize',function () {
            zt.resize()
        });
    </script>
    <h4>每日新增确诊情况</h4>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
    <div id="c" style="height: 250px"></div>
    <script type="text/javascript">
        var dom = document.getElementById("c");
        var m = echarts.init(dom);
        var app = {};
        option = null;
        option = {
            tooltip: {},
            visualMap: {
                min: 0,
                max: 1000,
                type: 'piecewise',
                orient: 'horizontal',
                left: 'center',
                top: 65,
                pieces: [
                    {max:0,label:"0增长",color:'#ffffff'},
                    {min: 1, max: 50, label: '1-50例', color: '#ffa26b'},
                    {min: 51, max: 100, label: '50-100例', color: '#ff8604'},
                    {min: 101, max: 200, label: '100-200例', color: '#bb2d00'},
                    {min: 201, max: 800, label: '200-800例', color: '#811100'},
                    {min: 801, label: '800例以上', color: '#3b0c00'}
                ],
                textStyle: {
                    color: '#000'
                }
            },
            calendar: {
                top: 120,
                left: 30,
                right: 30,
                cellSize: ['auto', 'auto'],
                range: '2020',
                itemStyle: {
                    borderWidth: 0.5
                },
                monthLabel:{
                    nameMap: 'cn'
                },
                dayLabel:{
                    nameMap: ['日', '一', '二', '三', '四', '五', '六'],
                    firstDay: 1
                },
                yearLabel: {show: false}
            },
            series: {
                type: 'heatmap',
                coordinateSystem: 'calendar',
                data: [<?php
                    foreach ($resh as $row){
                        echo "[\"{$row['time']}\",{$row['sus']}],";
                    };
                    ?>]
            }
        };
        ;
        if (option && typeof option === "object") {
            m.setOption(option, true);
        };
        window.addEventListener("resize",function (){
            m.resize()
        });
    </script>
<br><br><h3>各地区分布情况&疾病状况</h3>
    <h5>*其他为非韩国居民或从华入境韩国公民</h5>
    <div id="container" style="height: 500px;width: auto"><br></div>
    <div id="bar" style="height: 500px;width: auto"><br></div>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/world.js"></script>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>

    <script type="text/javascript">
        var dom = document.getElementById("container");
        var Chart = echarts.init(dom);
        var app = {};
        option = null;
        option = {
            tooltip: {

                trigger: 'item',
                formatter: '{a} <br/>{b}: {c} ({d}%)'
            },
            legend: {
                show:false,
                orient: 'vertical',
                left:'left',
                top:'center',
                data: [<?php
                    foreach ($resa as $row){
                        echo "'{$row['city']}',";
                    };
                    ?>]
            },
            series: [
                {

                    name: '确诊',
                    center: ["30%", "45%"], // 默认全局居中
                    type: 'pie',
                    radius: ['50%', '70%'],
                    color: [ '#005a86','#FFD306', '#7373B9', '#ff4330',
                        '#90B44B','#91B493', '#0089A7', '#0d087a',
                        '#8A6BBE', '#E03C8A','#707C74', '#d0d0d0',
                        '#F4A7B9','#F0A986', '#DAC9A6', '#BEC23F',
                        '#c84fbd',],
                    avoidLabelOverlap: false,
                    label: {
                        normal: {
                            show: false,
                            position: 'center'
                        },
                        emphasis: {
                            show: true,
                            textStyle: {
                                fontSize: '30',
                                fontWeight: 'bold'
                            }
                        }
                    },
                    labelLine: {
                        normal: {
                            show: false
                        }
                    },
                    data: [
                        <?php
                        foreach ($resd as $row){
                            echo " {name: '{$row['city']}', value: '{$row['nowdia']}'},";
                        };
                        ?>
                    ]
                },
                {  axisLine : {
                        show : true,
                        lineStyle : { // 属性lineStyle控制线条样式
                            color : [ //表盘颜色
                                [ 0.2, "#9d1e23" ],//0-50%处的颜色
                                [ 0.4, "#db484a" ],//0-50%处的颜色
                                [ 0.6, "#f88845" ],//0-50%处的颜色
                                [ 0.8, "#ffad60" ],//51%-70%处的颜色
                                [ 1,"#96ceb4" ]//90%-100%处的颜色
                            ],
                            width : 30//表盘宽度
                        }
                    },
                    max:100,
                    center: ["70%", "45%"], // 默认全局居中
                    radius: "73%", //仪表大小
                    name:"治愈已完成",
                    type: 'gauge',
                    detail: {formatter: '{value}%'},
                    data: [ <?php
                        foreach ($resb as $row){
                            $a=number_format($row['swl']*100,"2");
                            $b="已完成治愈：".$row['cur'];
                            echo "{value:$a , name: '$b'}";

                        };
                        ?>]
                }
            ]
        };
        ;
        if (option && typeof option === "object") {
            Chart.setOption(option, true);
        };
        window.addEventListener('resize',function () {
            Chart.resize()
        });
    </script>
    <br>
    <table  width='100%' style="font-size: 25px;" class="table-bordered">

        <tr>
            <th style="text-align: center;background: #f5f6f7">地区</th>
            <th style="text-align: center;background:  rgba(251,74,62,0.71)"><span style="color:#fff">新增确诊</span></th>
            <th style="text-align: center;background:  rgba(251,119,107,0.71)"><span style="color: #fff">现有确诊</span></th>
            <th style="text-align: center;background: rgba(116,165,0,0.71)"><span style="color: #fff">治愈</span></th>
            <th style="text-align: center;background:  rgba(77,80,84,0.71)"><span style="color:#fff">死亡</span></th>
        </tr>

        <?php
        foreach ($resd as $row){
            echo "<tr>";
            echo "<td style='background: rgba(55,139,201,0.71);font-style: inherit; font-family: inherit;' align=\"center\"><span style=\"color:#fff\">{$row['city']}</span></td>";
            echo "<td  align=\"center\"><span style=\"color: #FB4A3E\">{$row['newdia']}</span>&nbsp&nbsp&nbsp例</td>";
            echo "<td  align=\"center\"><span style=\"color: #fb776b\">{$row['nowdia']}</span>&nbsp&nbsp&nbsp例</td>";
            echo "<td  align=\"center\"><span style=\"color:#74a500\">{$row['cu']}</span>&nbsp&nbsp&nbsp例</td>";
            echo "<td  align=\"center\"><span style=\"color: #4d5054\">{$row['de']}</span>&nbsp&nbsp&nbsp例</td>";
            echo "</tr>";
        };
        ?>
        </h2>


    </table>
    <h4 style="text-align: right;"><span style="color: #999;">*未知区域发生死亡<?php echo $resultg['de'];?>例，治愈<?php echo $resultg['cu'];?>例</span></h4>
    <div style="text-align: center">
                <h2>全球</h2>
                <div id="global" style="width: auto;height: 450px;margin:20px;position:relative;top: 25%;"></div>
                <table  width='100%' style="font-size: 25px;" class="table-bordered">

                    <tr>
                        <th style="text-align: center;background: rgba(245,246,247,0.7)"><span style="color:rgba(0, 0, 0, 0.65)"> 地区</span></th>
                        <th style="text-align: center;background:  rgba(251,119,107,0.71)"><span style="color: #fff">现存确诊</span></th>
                        <th style="text-align: center;background: rgba(116,165,0,0.71)"><span style="color: #fff">治愈</span></th>
                        <th style="text-align: center;background:  rgba(77,80,84,0.71)"><span style="color:#fff">死亡</span></th>
                    </tr>

                    <?php
                    foreach ($resf as $row){
                        echo "<tr>";
                        echo "<td style='background: rgba(55,139,201,0.71);font-style: inherit; font-family: inherit;' align=\"center\"><span style=\"color:#fff\">{$row['location']}</span></td>";
                        echo "<td align=\"center\"><span style=\"color: #fb776b\">{$row['nowdia']}</span>&nbsp&nbsp&nbsp例</td>";
                        echo "<td align=\"center\"><span style=\"color: #74a500\">{$row['res']}</span>&nbsp&nbsp&nbsp例</td>";
                        echo "<td align=\"center\"><span style=\"color: #4d5054\">{$row['de']}</span>&nbsp&nbsp&nbsp例</td>";

                        echo "</tr>";
                    };
                    ?>
                    </h2>

                </table>

                <script>

                    //初始化echarts实例
                    var wmap = echarts.init(document.getElementById('global'));
                    //使用制定的配置项和数据显示图表
                    wmap.setOption({
                        // backgroundColor: "#02AFDB",
                        title: {
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
                            "Congo": "刚果（布）",
                            "Costa Rica": "哥斯达黎加",
                            "Croatia": "克罗地亚",
                            "Cuba": "古巴",
                            "Cyprus": "塞浦路斯",
                            "Czech Rep.": "捷克",
                            "Côte d'Ivoire": "科特迪瓦",
                            "Dem. Rep. Congo": "刚果（金）",
                            "Dem. Rep. Korea": "朝鲜",
                            "Denmark": "丹麦",
                            "Djibouti": "吉布提",
                            "Dominican Rep.": "多米尼加",
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
                            "Macedonia": "北马其顿",
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
                            "Mongolia": "蒙古国",
                            "Montenegro": "黑山",
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
                            type: 'piecewise',
                            orient: 'horizontal',
                            left: 'center',
                            top: 'bottom',
                            splitList: [
                                {start: 10000,color:'#380909',label:'10000人以上'},{start: 7001,end:9999,color:'#4b0906',label:'7000-9999人'},
                                {start: 3001, end: 7000,color:'#a21508',label:'3000-7000人'},{start: 1001, end: 3000,color:'#be3128',label:'1000-3000人'},
                                {start: 100, end: 1000,color: '#e86832',label:'100-1000人'},{start: 1, end: 99,color:'#f6b791',label:'1-99人'},
                                {value:0,color:'#b5b5b5',label:'0人'}
                            ]
                        },
                        tooltip: {

                            trigger: 'item',
                            formatter: function(params) { // 鼠标滑过显示的数
                                return params.data.name+'<br>现存确诊:'+params.data.value+'<br>治愈:'+params.data.res+'<br>死亡:'+params.data.de;
                            }
                        },
                        geo: {
                            map: 'world',
                            label: {
                                title:{text:'确诊'},
                                emphasis: {
                                    show: false
                                }
                            },
                            show:false,
                            roam: false,
                            silent: true,
                            itemStyle: {
                                normal: {
                                    areaColor: '#fff',
                                    borderColor: '#000'
                                },
                                emphasis: {
                                    areaColor: '#2a333d'
                                }
                            }
                        },
                        toolbox:{
                            show:true,
                            orient:"vertical",                        //工具栏 icon 的布局朝向'horizontal' 'vertical'
                            itemSize:40,                                 //工具栏 icon 的大小
                            itemGap:10,                                  //工具栏 icon 每项之间的间隔
                            showTitle:true,
                            zlevel:3,                                   //所属图形的Canvas分层，zlevel 大的 Canvas 会放在 zlevel 小的 Canvas 的上面
                            z:2,                                         //所属组件的z分层，z值小的图形会被z值大的图形覆盖
                            left:"right",                              //组件离容器左侧的距离,'left', 'center', 'right','20%'
                            top:"bottom",                                   //组件离容器上侧的距离,'top', 'middle', 'bottom','20%'
                            right:"10%",                               //组件离容器右侧的距离,'20%'
                            bottom:"auto",                              //组件离容器下侧的距离,'20%'
                            width:"auto",                               //图例宽度
                            height:"auto",
                            feature : {
                                restore : {                             //配置项还原。
                                    show: true,                         //是否显示该工具。
                                    icon:"image:// reload.png",
                                    title:"还原",
                                },
                            },
                        },
                        series: [{
                            roam:'scale',
                            zoom: 1, //当前视角的缩放比例
                            scaleLimit: { //滚轮缩放的极限控制
                                min: 1,
                                max: 6
                            },

                            type: 'map',
                            mapType: 'world',
                            // zoom: 1.2,
                            mapLocation: {
                                y: 100
                            },
                            data: [
                                <?php
                                foreach ($resf as $row){
                                    echo "{name: '{$row['location']}',value: {$row['nowdia']},res: {$row['res']},de: {$row['de']}},";
                                };
                                ?>
                                {name:'中国',value:<?php echo $resultc['dia'];?>,res:<?php echo $resultc['res'];?>,de:<?php echo $resultc['de'];?>}

                            ],
                            symbolSize: 12,
                            label: {
                                title:{text:'现存确诊'},
                                normal: {
                                    show: false
                                },
                                emphasis: {
                                    show: false
                                }
                            },
                            itemStyle: {
                                emphasis: {
                                    borderColor: '#fff',
                                    borderWidth: 1
                                }
                            }
                        }],
                    });
                    window.addEventListener('resize',function () {
                        wmap.resize()
                    });
                </script>
        <script type="text/javascript">
            var dom = document.getElementById("bar");
            var myChart = echarts.init(dom);
            var app = {};
            option = null;
            option = {
                tooltip: {
                    trigger: 'axis',
                    axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                        type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                    },
                },
                legend: {
                    data: ['现有确诊', '治愈', '死亡'],
                    icon:"circle"
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    type: 'value',

                },
                yAxis: {
                    type: 'category',
                    data: [ <?php
                        foreach ($resj as $row){
                            echo "'{$row['city']}',";
                        };
                        ?>]

                },
                series: [
                    {
                        name: '现有确诊',
                        type: 'bar',
                        stack: '总量',
                        barWidth: 10,
                        color:"#fb776b",
                        label: {
                            show: false,
                            position: 'insideRight'
                        },
                        data: [<?php
                            foreach ($resj as $row){
                                echo "{$row['dia']},";
                            };
                            ?>]
                    },
                    {
                        name: '治愈',
                        type: 'bar',
                        stack: '总量',
                        barWidth: 10,
                        color:"#74a500",
                        label: {
                            show: false,
                            position: 'insideRight'
                        },
                        data: [<?php
                            foreach ($resj as $row){
                                echo "{$row['cu']},";
                            };
                            ?>]
                    },
                    {
                        name: '死亡',
                        type: 'bar',
                        stack: '总量',
                        barWidth: 5,
                        color:"#4d5054",
                        label: {
                            show: false,
                            position: 'insideRight'
                        },
                        data: [<?php
                            foreach ($resj as $row){
                                echo "{$row['de']},";
                            };
                            ?>]
                    },

                ]
            };;
            if (option && typeof option === "object") {
                myChart.setOption(option, true);
            };
            window.addEventListener('resize',function () {
                myChart.resize()
            });
        </script>
            </div>


    <section class="link-flip" style="font-size: 25px"><a href="https://github.com/gabrielpondc/wuhanfeiyan">仓库地址</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:gabrielpondc@cau.ac.kr">反馈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #999">CopyRight©</span> <a herf="https://github.com/gabrielpondc">GabrielPondC</a></section>
</div>
</body>
</html>
