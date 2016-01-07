var options = {
    'legend':{names: ['1', '2', '3', '4', '5', '6', '7', '8']},
    'dataset':{
        title:'개인연비 per 공인연비', 
        values: [[14,16], [17,16], [12,16], [11,16], [9,16], [20,16], [18,16], [18,16]],
        colorset: ['#0072b2', '#cc79a7'],
        fields:['개인연비', '공인연비']
    },
    'chartDiv' : 'chart71',
    'chartType' : 'line',
    'leftOffsetValue': 30,
    'bottomOffsetValue': 20,
    'chartSize' : {width:500, height:250},
    'minValue' :0,
    'maxValue' : 20,
    'increment' : 5,
    'isGuideLineNeeded' : true //default set to false
};

Nwagon.chart(options);
