<?php
DEFINE ('DB_USER','root');
DEFINE ('DB_PASSWORD','gjk19961226');
DEFINE ('DB_HOST','localhost');
DEFINE ('DB_NAME','virus');
$dbc=@mysqli_connect(DB_HOST,DB_USER,DB_PASSWORD,DB_NAME) OR die('Could not to connect to Mysql:'.mysqli_connect_error());
mysqli_set_charset($dbc, 'utf8');
$sqlb="select id,dia,sus,cur,de from  kr";
$resb=mysqli_query($dbc,$sqlb);
$resultb=mysqli_fetch_array($resb);
$sqld="select id,city,dia from  krcity where city!='其他'";
$resd=mysqli_query($dbc,$sqld);
$resultd=mysqli_fetch_array($resd);
$sqla="select city,dia from  krcity order by dia desc";
$resa=mysqli_query($dbc,$sqla);
$resulta=mysqli_fetch_array($resa);
$sqlh="select id,time,dia,sus,cur,de from  krhistory";
$resh=mysqli_query($dbc,$sqlh);
$resulth=mysqli_fetch_array($resh);
$sqle="select updatetime,catchtime  from  time";
$rese=mysqli_query($dbc,$sqle);
$resulte=mysqli_fetch_array($rese);
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
</head>

<body bgcolor="#030303">
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
<div style="width: 100%;height:100%;text-align: center;color: whitesmoke;background:#010101 ">
    <img src='yq.png'style="max-width:100%;"/>
    <h2>韩国</h2>
    <h4 style="align-content: center"><? foreach ($rese as $row){echo "更新时间：<span style=\"color: #fb776b\">{$row['catchtime']}</span>";}; ?>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onClick="document.location.reload()"><img src="refresh.png"></a> </h4>
    <h5>数据来源：韩国疾病管理本部</h5>
    <table  width='50%' style="font-size: 28px;"rules=none frame=void  class="table">

        <tr style="border:0px;">
            <th style="text-align: center;border:0px;">确诊</span></th>
            <th style="border:0px;text-align: center;">疑似</span></th>
            <th style="border:0px;text-align: center;">治愈</span></th>
            <th style="border:0px;text-align: center;">死亡</span></th>
        </tr>

        <?php
        foreach ($resb as $row){
            echo "<tr style='border:0px;'>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #fb776b\">{$row['dia']}</span></td>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #f7ab1a\">{$row['sus']}</span></td>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #74a500\">{$row['cur']}</span></td>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #B7C4CA\">{$row['de']}</span></td>";
            echo "</tr>";
        };
        ?>

    </table>
<div id="main" style="width: auto;height: 600px"></div>


<script>

  var mydata = [
      <?php
      foreach ($resd as $row){
          echo " {name: '{$row['city']}', value: '{$row['dia']}'},";
      };
      ?>

  ]
  $.get('js/map/kr.json', function (geoJson) {
    //console.log(geoJson)
    echarts.registerMap('KOREA', geoJson);

    // 可从这里提取每个城市对应的json

    var option_map = {
        textStyle:{

            color:'white'

        },
        backgroundColor: '#00101a',
      tooltip: {
        trigger: 'item',
        formatter: function (params) {
            return params.data.name+'<br>确诊:'+params.data.value+'例';

        }
      },
      visualMap: {
          textStyle:{

              color:'white'

          },
        type: 'piecewise',
        show: true,
        left: 'left',
        top: 'bottom',
          splitList: [
              {start: 100,color:'#380909'},{start: 50,end:100,color:'#4b0906'},
              {start: 21, end: 40,color:'#a21508'},{start: 11, end: 20,color:'#be3128'},
              {start: 6, end: 10,color: '#e86832'},{start: 1, end: 5,color:'#f6b791'},
              {value:0,color:'#b5b5b5'}
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
              color: '#fff'
            }
          },
          emphasis: {
            show: true
          }
        },
        itemStyle: {
          normal: {
            borderColor: '#005a86',
          }
        },
        data: mydata
      }]
    };
    var myChart = echarts.init(document.getElementById('main'));
    //使用制定的配置项和数据显示图表
    myChart.setOption(option_map);
    myChart.on('click', function (params) {
      // 通过点击事件下钻到下级
      console.log(params)
    })
  });
</script>
    <div id="qingkuang" style="height: 300px;width: auto;margin:20px 0 0;position: relative;top: 25%;"></div>
    <div id="zhuangtai" style="height: 300px;width: auto;margin:20px 0 0;position: relative;top: 25%;"></div>
    <script type="text/javascript">
        var dom = document.getElementById("qingkuang");
        var myChart = echarts.init(dom);
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
                data: ['现有确诊', '新增确诊']
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
                    name: '现有确诊',
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
                    name: '新增确诊',
                    type: 'line',
                    itemStyle: {
                        normal: {
                            color: "#f7e900",
                            lineStyle: {
                                color: "#f7e900"
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
                data: ['累计治愈', '累计死亡']
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
                    name: '累计治愈',
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
                    name: '累计死亡',
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
            myChart.setOption(option, true);
        }
    </script>
    <h4>每日新增确诊情况</h4>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
    <div id="c" style="height: 250px"></div>
    <script type="text/javascript">
        var dom = document.getElementById("c");
        var myChart = echarts.init(dom);
        var app = {};
        option = null;

        option = {
            backgroundColor: '#404a59',
            tooltip: { trigger: 'item'},
            visualMap: {
                min: 0,
                max: 100,
                show: false,
                calculable: true,
                orient: 'horizontal',
                left: 'center',
                top: 'top',
                color: [ '#811100','#bb2d00', '#ff4500', '#ff8604', '#ffffff']
            },
            calendar: [{
                range: ['2020-01-01','2020-10-30'],

            }],
            yearLabel:{
                color:'#fff',
              show:false,
              margin: 10
            },
            monthLabel: {
                color: '#fff',
                show: true,
                margin: 10
            },
            dayLabel: {
                nameMap: 'cn'
            },
            yearLabel: {
                show: false
            },
            series: [{

                hoverAnimation: true,
                type: 'heatmap',
                coordinateSystem: 'calendar',
                calendarIndex: 0,
                data: [<?php
                    foreach ($resh as $row){
                        echo "[\"2020-{$row['time']}\",{$row['sus']}],";
                    };
                    ?>]
            }]

        };
        ;
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    </script>
<br><br><h3>各地区分布情况</h3>
    <h5>*其他为非韩国居民或从华入境韩国公民</h5>
    <div id="container" style="height: 500px;width: auto"><br></div>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/echarts.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-gl/dist/echarts-gl.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts-stat/dist/ecStat.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/dataTool.min.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/china.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/map/js/world.js"></script>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/echarts/dist/extension/bmap.min.js"></script>

    <script type="text/javascript">
        var dom = document.getElementById("container");
        var myChart = echarts.init(dom);
        var app = {};
        option = null;
        option = {
            backgroundColor: '#00101a',
            tooltip: {

                trigger: 'item',
                formatter: '{a} <br/>{b}: {c} ({d}%)'
            },
            legend: {
                textStyle:{
                    color:'white'
                },
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
                    type: 'pie',
                    radius: ['50%', '70%'],
                    color: [ '#b3faff','#FFD306', '#7373B9', '#ff4330',
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
                        foreach ($resa as $row){
                            echo " {name: '{$row['city']}', value: '{$row['dia']}'},";
                        };
                        ?>
                    ]
                }
            ]
        };
        ;
        if (option && typeof option === "object") {
            myChart.setOption(option, true);
        }
    </script>
    <br>
    <table  width='100%' style="font-size: 25px;" class="table-condensed">

        <tr>
            <th style="text-align: center;background: #010101">地区</th>
            <th style="text-align: center;background:  #222222"><span style="color: #ff3131">确诊人数</span></th>
        </tr>

        <?php
        foreach ($resa as $row){
            echo "<tr>";
            echo "<td style='background: #010101;font-style: inherit; font-family: inherit;' align=\"center\"><span style=\"color:#fff\">{$row['city']}</span></td>";
            echo "<td style='background: #222222' align=\"center\"><span style=\"color: #ff3131\">{$row['dia']}</span>&nbsp&nbsp&nbsp例</td>";

            echo "</tr>";
        };
        ?>
        </h2>

    </table>
    <section class="link-flip" style="font-size: 25px"><a href="https://github.com/gabrielpondc/wuhanfeiyan">仓库地址</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:gabrielpondc@cau.ac.kr">反馈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #999">CopyRight©<a herf="https://github.com/gabrielpondc">GabrielPondC</a></span></section>

</div>
</body>
</html>
