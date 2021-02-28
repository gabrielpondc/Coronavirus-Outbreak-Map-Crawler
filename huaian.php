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
$sqld="select world,times from  wc";
$resd=mysqli_query($dbc,$sqld);
$resultd=mysqli_fetch_array($resd);
?>
<!DOCTYPE html>
<head>
  <meta charset="UTF-8">
  <title>淮安市疫情状况</title>
    <script>
        var _hmt = _hmt || [];
        (function() {
            var hm = document.createElement("script");
            hm.src = "https://hm.baidu.com/hm.js?c2be75c7b1373fe7c0712b4ee41fc07e";
            var s = document.getElementsByTagName("script")[0];
            s.parentNode.insertBefore(hm, s);
        })();
    </script>

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
    <h2>淮安市疫情状况</h2>
    <h5>数据来源：淮安发布</h5>
    <table  width='50%' style="font-size: 28px;"rules=none frame=void  class="table">

        <tr style="border:0px;">
            <th style="text-align: center;border:0px;">确诊</span></th>
            <th style="border:0px;text-align: center;">治愈</span></th>
            <th style="border:0px;text-align: center;">死亡</span></th>
        </tr>

        <?php
        foreach ($resh as $row){
            echo "<tr style='border:0px;'>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #fb776b\">{$row['dia']}</span></td>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #74a500\">{$row['res']}</span></td>";
            echo "<td style='border: 0px' align=\"center\"><span class=\"counter-value\" style=\"color: #B7C4CA\">{$row['de']}</span></td>";

            echo "</tr>";
        };
        ?>

    </table>
<div id="main" style="width: auto;height: 600px"></div>


<script>

  var mydata = [
      <?php
      foreach ($resa as $row){
          echo " {name: '{$row['location']}', value: '{$row['dia']}',de:'{$row['de']}',cu:'{$row['res']}'},";
      };
      ?>

  ]
  $.get('js/map/ha.json', function (geoJson) {
    //console.log(geoJson)
    echarts.registerMap('淮安', geoJson);

    // 可从这里提取每个城市对应的json

    var option_map = {
        backgroundColor: '#00101a',
      tooltip: {
        trigger: 'item',
        formatter: function (params) {
            return params.data.name+'<br>确诊:'+params.data.value+'例'+'<br>治愈:'+params.data.cu+'例'+'<br>死亡:'+params.data.de+'例';

        }
      },
      visualMap: {
          textStyle:{

              color:'white'

          },
        type: 'piecewise',
        show: true,
        min: 0,
        max: 15,
        left: 'left',
        top: 'bottom',
          splitList: [
              {start: 21,color:'#4b0906'},
              {start: 15, end: 20,color:'#a21508'},{start: 8, end: 14,color:'#be3128'},
              {start: 3, end: 8,color: '#e86832'},{start: 1, end: 2,color:'#f6b791'},
              {value:0,color:'#fff'}
          ]
      },
      geo: {
        map: '淮安',
        roam: false
      },
      series: [{
        type: 'map',
        mapType: '淮安',
        roam: false,
        label: {
          normal: {
            show: true,
            position: 'inside',
            textStyle: {
              color: '#000000'
            }
          },
          emphasis: {
            show: true
          }
        },
        itemStyle: {
          normal: {
            borderColor: '#00101a',
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
<br><br><h3>各区分布情况</h3>
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
                left: 10,
                data: [<?php
                    foreach ($resa as $row){
                        echo "'{$row['location']}',";
                    };
                    ?>]
            },
            series: [
                {
                    name: '确诊',
                    type: 'pie',
                    radius: ['50%', '70%'],
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
                            echo "{value:{$row['dia']},name:'{$row['location']}'},";
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
            <th style="text-align: center;background:  #222222"><span style="color: #ff3131">确诊</span></th>
            <th style="text-align: center;background:  #222222"><span style="color: #74a500">治愈</span></th>
            <th style="text-align: center;background:  #222222"><span style="color:#B7C4CA">死亡</span></th>
        </tr>

        <?php
        foreach ($resa as $row){
            echo "<tr>";
            echo "<td style='background: #010101;font-style: inherit; font-family: inherit;' align=\"center\"><span style=\"color:#fff\">{$row['location']}</span></td>";
            echo "<td style='background: #222222' align=\"center\"><span style=\"color: #ff3131\">{$row['dia']}</span>&nbsp&nbsp&nbsp例</td>";
            echo "<td style='background: #222222' align=\"center\"><span style=\"color: #74a500\">{$row['res']}</span>&nbsp&nbsp&nbsp例</td>";
            echo "<td style='background: #222222' align=\"center\"><span style=\"color: #B7C4CA\">{$row['de']}</span>&nbsp&nbsp&nbsp例</td>";

            echo "</tr>";
        };
        ?>
        </h2>

    </table>
    <br><br><h3>各病例轨迹公告</h3><br>
    <h4>公告词云分析</h4>
    <div id="charts" style="height:600px;width:auto;"></div>
    <script type="text/javascript" src="https://echarts.baidu.com/build/dist/echarts.js"></script>
    <script type="text/javascript">
        function createRandomItemStyle(d) {
            d = d || Math.floor((Math.random() * 20) + 1);
            var colors = ['#ff715e','#759aa0','#e69d87','#8dc1a9','#ea7e53','#eedd78','#73a373','#73b9bc','#7289ab','#91ca8c','#f49f42','#8c6ac4','#ffee51'];
            if(d > colors.length) {
                d = 0;
            }
            return {
                normal: {
                    color: colors[d]
                }
            };
        }

        require.config({
            paths: {
                echarts: "https://echarts.baidu.com/build/dist"
            }
        })
        require(["echarts/echarts", "echarts/chart/wordCloud"], function(ec) {
            var myEchart = ec.init(document.getElementById("charts"));

            function createRandomItemStyle() {
                return {
                    normal: {
                        color: 'rgb(' + [
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160),
                            Math.round(Math.random() * 160)
                        ].join(',') + ')'
                    }
                };
            }

            option = {
                backgroundColor: '#00101a',
                tooltip: {
                    show: true
                },
                series: [{
                    name: '关键词',
                    type: 'wordCloud',
                    size: ['300%', '100%'],
                    textRotation: [0, 45, 90, -45],
                    textPadding: 0,
                    autoSize: {
                        enable: true,
                        minSize: 14
                    },
                    data: [ <?php
                        foreach ($resd as $row){
                            echo "{name:'{$row['world']}',value:{$row['times']},itemStyle: createRandomItemStyle()},";
                        };
                        ?>]
                }]
            };

            myEchart.setOption(option);
        });
    </script>
    <table  width='100%' style="font-size: 25px;" class="table-condensed">

        <tr>
            <th style="text-align: center;background: #00101a">地区</th>
            <th style="text-align: center;background:  #222222"><span style="color: #fff">标题</span></th>
            <th style="text-align: center;background:  #222222"><span style="color: #fff">详情</span></th>
        </tr>
        　
        <?php
        foreach ($resb as $row){

            echo "<tr>";
            echo "<td style='background: #00101a;font-style: inherit; font-family: inherit;' align=\"center\"><span style=\"color:#fff\">{$row['lo']}</span></td>";
            echo "<td style='background: #222222' align=\"center\">{$row['title']}</td>";
            echo "<td style='background: #222222' align=\"center\"><a href=\"read.php?id={$row['id']}\" target=\"_blank\">查看</a></td>";



            echo "</tr>";
        };
        ?>
        </h2>

    </table>
    <section class="link-flip" style="font-size: 25px"><a href="index.php">回到全国</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="https://github.com/gabrielpondc/wuhanfeiyan">仓库地址</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="mailto:gabrielpondc@cau.ac.kr">反馈</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span style="color: #999">CopyRight©<a herf="https://github.com/gabrielpondc">GabrielPondC</a></span></section>

</div>
</body>
</html>
