<?php foreach ($project_info as $p_info): 
       $expenses = $p_info['expenses'];
       $profit = $p_info['profit'];
       if ($profit <= 0):
              $profit = 0;
       endif;
 endforeach; ?>
<script type="text/javascript">
       $(function () { 
              // Get context with jQuery - using jQuery's .get() method.
              var areaChartCanvas = $('#areaChart').get(0).getContext('2d')
              // This will get the first returned node in the jQuery collection.
              var areaChart       = new Chart(areaChartCanvas)

         
              
              var areaChartData = {
                     labels  : ['January', 'February', 'March', 'April', 'May', 'June', 'July', 
                                   'August', 'Septemer', 'October', 'November', 'December'],
                     datasets: [
                     {
                            label               : 'Material Expenses',
                            fillColor           : 'rgba(210, 214, 222, 1)',
                            strokeColor         : 'rgba(210, 214, 222, 1)',
                            pointColor          : 'rgba(210, 214, 222, 1)',
                            pointStrokeColor    : '#c1c7d1',
                            pointHighlightFill  : '#fff',
                            pointHighlightStroke: 'rgba(220,220,220,1)',
                            data                : [0,0,0,0,0,0,0,0,0,0,0,0,]
                     },
                     {
                            label               : 'Worker Expenses',
                            fillColor           : 'rgba(60,141,188,0.9)',
                            strokeColor         : 'rgba(60,141,188,0.8)',
                            pointColor          : '#3b8bba',
                            pointStrokeColor    : 'rgba(60,141,188,1)',
                            pointHighlightFill  : '#fff',
                            pointHighlightStroke: 'rgba(60,141,188,1)',
                            data                : [0,0,0,0,0,0,0,0,0,0,0,0,]
 
                     },
                     {
                            label               : 'Transportation Expenses',
                            fillColor           : 'rgba(60,141,188,0.9)',
                            strokeColor         : 'rgba(60,141,188,0.8)',
                            pointColor          : '#3b8bba',
                            pointStrokeColor    : 'rgba(60,141,188,1)',
                            pointHighlightFill  : '#fff',
                            pointHighlightStroke: 'rgba(60,141,188,1)',
                            data                : [0,0,0,0,0,0,0,0,0,0,0,0,]
                     }


                     ]
              }


            

              //-------------
              //- PIE CHART EXPENSES -
              //------------- 
                     var pieChartCanvas = $('#pieChart').get(0).getContext('2d')
                     var pieChart       = new Chart(pieChartCanvas)
                     var PieData        = [
                            { 
                                   value    : <?= $t_mat ?>,
                                   color    : '#f56954',
                                   highlight: '#f56954',
                                   label    : 'Materials'
                            }, 
                            {
                                   value    : <?= $t_wor ?>,
                                   color    : '#f39c12',
                                   highlight: '#f39c12',
                                   label    : 'Workers'
                            },
                            {
                                   value    : <?= $t_tra ?>,
                                   color    : '#00c0ef',
                                   highlight: '#00c0ef',
                                   label    : 'Transportation'
                            } 
                     ]

                     var pieOptions     = {
                            //Boolean - Whether we should show a stroke on each segment
                            segmentShowStroke    : true,
                            //String - The colour of each segment stroke
                            segmentStrokeColor   : '#fff',
                            //Number - The width of each segment stroke
                            segmentStrokeWidth   : 2,
                            //Number - The percentage of the chart that we cut out of the middle
                            percentageInnerCutout: 50, // This is 0 for Pie charts
                            //Number - Amount of animation steps
                            animationSteps       : 100,
                            //String - Animation easing effect
                            animationEasing      : 'easeOutBounce',
                            //Boolean - Whether we animate the rotation of the Doughnut
                            animateRotate        : true,
                            //Boolean - Whether we animate scaling the Doughnut from the centre
                            animateScale         : false,
                            //Boolean - whether to make the chart responsive to window resizing
                            responsive           : true,
                            // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
                            maintainAspectRatio  : true,
                            //String - A legend template
                            legendTemplate       : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<segments.length; i++){%><li><span style="background-color:<%=segments[i].fillColor%>"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>'
                     }
                         
                     //Create pie or douhnut chart
                     // You can switch between pie and douhnut using the method below.
                     pieChart.Doughnut(PieData, pieOptions)


              //-------------
              //- PIE CHART PRFIT -
              //------------- 
                     var pieChartCanvas = $('#pieChart2').get(0).getContext('2d')
                     var pieChart       = new Chart(pieChartCanvas)
                     var PieData        = [
                            {
                                   value    : <?= $profit ?>,
                                   color    : '#3c8dbc',
                                   highlight: '#3c8dbc',
                                   label    : 'Profit'
                            },
                            {
                                   value    : <?= $expenses ?>,
                                   color    : '#d2d6de',
                                   highlight: '#d2d6de',
                                   label    : 'Expenses'
                            }
                     ]

                     var pieOptions     = {
                            //Boolean - Whether we should show a stroke on each segment
                            segmentShowStroke    : true,
                            //String - The colour of each segment stroke
                            segmentStrokeColor   : '#fff',
                            //Number - The width of each segment stroke
                            segmentStrokeWidth   : 2,
                            //Number - The percentage of the chart that we cut out of the middle
                            percentageInnerCutout: 50, // This is 0 for Pie charts
                            //Number - Amount of animation steps
                            animationSteps       : 100,
                            //String - Animation easing effect
                            animationEasing      : 'easeOutBounce',
                            //Boolean - Whether we animate the rotation of the Doughnut
                            animateRotate        : true,
                            //Boolean - Whether we animate scaling the Doughnut from the centre
                            animateScale         : false,
                            //Boolean - whether to make the chart responsive to window resizing
                            responsive           : true,
                            // Boolean - whether to maintain the starting aspect ratio or not when responsive, if set to false, will take up entire container
                            maintainAspectRatio  : true,
                            //String - A legend template
                            legendTemplate       : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<segments.length; i++){%><li><span style="background-color:<%=segments[i].fillColor%>"></span><%if(segments[i].label){%><%=segments[i].label%><%}%></li><%}%></ul>'
                     }
                         
                     //Create pie or douhnut chart
                     // You can switch between pie and douhnut using the method below.
                     pieChart.Doughnut(PieData, pieOptions)
       })
</script>
