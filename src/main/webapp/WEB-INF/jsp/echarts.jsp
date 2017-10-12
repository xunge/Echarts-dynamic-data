<%--
  Created by IntelliJ IDEA.
  User: xunge
  Date: 2017/10/10
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>ECharts</title>
    <!-- 引入 echarts.js -->
    <script src="js/echarts.js" type="text/javascript"></script>
    <script src="js/jquery.min.js" type="text/javascript"></script>
    

</head>
<body>
    <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
    <div id="main" style="width: 600px;height:400px;"></div>
    <script type="text/javascript">
        // 基于准备好的dom，初始化echarts实例
        var myChart = echarts.init(document.getElementById('main'));

        // 指定图表的配置项和数据
        var option = {
            title: {
                text: 'ECharts 入门示例'
            },
            tooltip: {},
            legend: {
                data:['销量']
            },
            xAxis: {

            },
            yAxis: {},
            series: [{
                name: '销量',
                type: 'bar',

            }]
        };
		
        //加载数据
        loadDATA(option);
        // 使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);
        
        
        
        function loadDATA(option){
        	$.ajax({
            	type : "post",
                async : false, //同步执行
                url : "echartsJson.do",//路径配置
                data : {},
                dataType : "json", //返回数据形式为json
                success : function(result) {
                	if (result) {
                    	//初始化option.xAxis[0]中的data
                        option.xAxis.data=[];
                        for(var i=0;i<result.length;i++) {
                       		option.xAxis.data.push(result[i].name);
                   		}
                        //初始化option.series[0]中的data
                        option.series[0].data=[];
                        for(var i=0;i<result.length;i++) {
                            option.series[0].data.push(result[i].num);
                        }
                    }
                }
            });
        }
    </script>
    
    
</body>
</html>
