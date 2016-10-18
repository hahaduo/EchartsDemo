<%--
  Created by IntelliJ IDEA.
  User: lihongjun
  Date: 2016/10/10
  Time: 21:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>产能符合</title>
    <script src="/js/echarts.min.js"></script>
  </head>
  <body>
  <div id="main" style="width: 600px;height:400px;"></div>
  <script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var option = {
      title: {
        text: '产能符合'
      },
      tooltip: {},
      legend: {
        data:['产能']
      },
      xAxis: {
        data: ["Y-101","Y-102","Y-103","Y-104","Y-105","Y-106"]
      },
      yAxis: {},
      series: [{
        name: '产能',
        type: 'bar',
        data: [5, 20, 36, 10, 10, 20]
      }]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
  </script>

  <a href="index.html">返回<a/>
  </body>
</html>
