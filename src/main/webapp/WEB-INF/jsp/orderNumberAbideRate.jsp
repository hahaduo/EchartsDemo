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
    <title>生产计划完成率</title>
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
        text: '数量遵守率'
      },
      tooltip: {
        trigger: 'axis'
      },
      legend: {
        data:['排产计划','实际日产','生产计划完成率']
      },
      grid: {
        left: '10%',
        right: '4%',
        bottom: '3%',
        containLabel: true
      },
      toolbox: {
        feature: {
          saveAsImage: {}
        }
      },
      xAxis: {
        type: 'category',
        boundaryGap: false,
        data: ['2016/3/7','2016/3/8','2016/3/9','2016/3/10','2016/3/11','2016/3/12','2016/3/13']
      },
      yAxis: {
        type: 'value',
//        offset:50,
        //data:['0','20','40','60','80','100','120']
      },
      series: [
        {
          name:'生产计划完成率',
          type:'line',
          stack: '总量',
          data:[100, 90, 94, 80, 90, 85, 56]
        },
        {
          name: '排产计划',
          type: 'bar',
          data: [5, 20, 36, 10, 10, 20,18]
        },
        {
          name: '实际日产',
          type: 'bar',
          data: [5, 18, 34, 8, 9, 19,10]
        }
      ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
  </script>

  <a href="index.html">返回<a/>

  </body>
</html>
