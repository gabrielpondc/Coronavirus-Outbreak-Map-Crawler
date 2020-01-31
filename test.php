<?php
DEFINE ('DB_USER','root');
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
$sqld="select location,dia  from  global";
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
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <title></title>

    <style>


    </style>

    <script src="js/jquery.min.js"></script>

    <script type="text/javascript" src="https://cdn.bootcss.com/echarts/4.2.0-rc.2/echarts.min.js"></script>

    <!--<script type="text/javascript" src="./js/map/china.js"></script>-->

    <script type="text/javascript" src="./js/map/province/jiangsu.js"></script>



</head>

<body>



<div id="js" style="width:760px;height:660px;margin:auto;">



</div>



<script>

    var mydata = [
        <?php
        foreach ($resf as $row){
            echo "{name: '{$row['loc']}市',value: '{$row['dia']}',num:{$row['res']},sw:{$row['de']} },";
        };
        ?>];



    var optionMap = {

        backgroundColor: '#FFFFFF',

        tooltip : {

            trigger: 'item',

            formatter: function(params) { // 鼠标滑过显示的数

                 return '治愈'+params.data.num;
                return'确诊'+params.data.value;

            }

        },



        //左侧小导航图标

        visualMap: {
            show : true,
            x: 'left',
            y: 'center',
            splitList: [
                {start: 1000,end:9999},{start: 100, end: 999},
                {start: 10, end: 99},{start: 5, end: 9}
                ,{start: 0, end: 5}
            ],

            color: ['#801508','#be3128', '#be3128', '#e86832','#f6b791']

        },



        //配置属性

        series: [{

            name: '数据',

            type: 'map',

            mapType: '江苏',

            roam: true,

            label: {

                normal: {

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

    var myChart = echarts.init(document.getElementById('js'));

	 myChart.on('click', function(param) {



		 	    console.log(param,param.name);

// 	    if (param.data && param.data.provinceKey) {

// 	        var key = param.data.provinceKey;

// 	        // province(key);  省份请求

// 	        if (provinceData.length) {

// 	            $('#back').removeClass('hidden');

// 	            // 遍历取到provincesText 中的下标  去拿到对应的省js

// 	            for (var i = 0; i < provincesText.length; i++) {

// 	                if (param.name === provincesText[i]) {

// 	                    mapName = provincesText[i];

// 	                    //显示对应省份的方法

// 	                    showProvince(provinces[i], provincesText[i]);

// 						$(".butns_fa").show();

// 	                    break;

// 	                }

// 	            }

// 	        }

// 	    }

	});



    //使用制定的配置项和数据显示图表

    myChart.setOption(optionMap);

</script>

</body>

</html>