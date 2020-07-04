 
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
                            fillColor           : 'rgba(221, 75, 87, 1)',
                            strokeColor         : 'rgba(210, 214, 222, 1)',
                            pointColor          : 'rgba(210, 214, 222, 1)',
                            pointStrokeColor    : '#c1c7d1',
                            pointHighlightFill  : '#fff',
                            pointHighlightStroke: 'rgba(220,220,220,1)',
                            data                : [<?= $m1 ?>, <?= $m2 ?>, <?= $m3 ?>, <?= $m4 ?>, 
                            				<?= $m5 ?>, <?= $m6 ?>, <?= $m7 ?>, <?= $m8 ?>,
                            				<?= $m9 ?>, <?= $m10 ?>, <?= $m11 ?>, <?= $m12 ?>]
                     },
                     {
                            label               : 'Worker Expenses',
                            fillColor           : 'rgba(60,141,188,0.9)',
                            strokeColor         : 'rgba(60,141,188,0.8)',
                            pointColor          : '#3b8bba',
                            pointStrokeColor    : 'rgba(60,141,188,1)',
                            pointHighlightFill  : '#fff',
                            pointHighlightStroke: 'rgba(60,141,188,1)',
                            data                : [<?= $w1 ?>, <?= $w2 ?>, <?= $w3 ?>, <?= $w4 ?>, 
                            				<?= $w5 ?>, <?= $w6 ?>, <?= $w7 ?>, <?= $w8 ?>,
                            				<?= $w9 ?>, <?= $w10 ?>, <?= $w11 ?>, <?= $w12 ?>]
                     },
                     {
                            label               : 'Transportation Expenses',
                            fillColor           : 'rgba(60,141,188,0.9)',
                            strokeColor         : 'rgba(60,141,188,0.8)',
                            pointColor          : '#3b8bba',
                            pointStrokeColor    : 'rgba(60,141,188,1)',
                            pointHighlightFill  : '#fff',
                            pointHighlightStroke: 'rgba(60,141,188,1)',
                            data                : [<?= $t1 ?>, <?= $t2 ?>, <?= $t3 ?>, <?= $t4 ?>, 
                            				<?= $t5 ?>, <?= $t6 ?>, <?= $t7 ?>, <?= $t8 ?>,
                            				<?= $t9 ?>, <?= $t10 ?>, <?= $t11 ?>, <?= $t12 ?>]
                     }


                     ]
              }
              

              //-------------
              //- BAR CHART -
              //-------------
              var barChartCanvas                   = $('#barChart').get(0).getContext('2d')
              var barChart                         = new Chart(barChartCanvas)
              var barChartData                     = areaChartData
              barChartData.datasets[1].fillColor   = '#00a65a'
              barChartData.datasets[1].strokeColor = '#00a65a'
              barChartData.datasets[1].pointColor  = '#00a65a'
              var barChartOptions                  = {
                     scaleBeginAtZero        : true,
                     scaleShowGridLines      : true,
                     scaleGridLineColor      : 'rgba(0,0,0,.05)',
                     scaleGridLineWidth      : 1,
                     scaleShowHorizontalLines: true,
                     scaleShowVerticalLines  : true,
                     barShowStroke           : true,
                     barStrokeWidth          : 2,
                     barValueSpacing         : 5,
                     barDatasetSpacing       : 1,
                     legendTemplate          : '<ul class="<%=name.toLowerCase()%>-legend"><% for (var i=0; i<datasets.length; i++){%><li><span style="background-color:<%=datasets[i].fillColor%>"></span><%if(datasets[i].label){%><%=datasets[i].label%><%}%></li><%}%></ul>',
                     responsive              : true,
                     maintainAspectRatio     : true
              }

              barChartOptions.datasetFill = false
              barChart.Bar(barChartData, barChartOptions) 
               
       })
</script>
