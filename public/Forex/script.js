var xmlhttp = new XMLHttpRequest();
var url = "jsonData.json";
xmlhttp.open("GET", url, true);
xmlhttp.send();
xmlhttp.onreadystatechange = function(){
    if(this.readyState == 4 && this.status == 200){
        var data = JSON.parse(this.responseText);
        // console.log(data);
        var months = data.months_temperature.map(function(elem){
            return elem.date;
        });
        // console.log(months)
    }
}
var ctx = document.getElementById('canvas').getContext('2d');
var myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: ['Red', 'Blue', 'Yellow', 'Green', 'Purple', 'Orange'],
        datasets: [{
            label: '# of Votes',
            data: high,
            backgroundColor: 'transparent',
            borderColor: 'red',
            tension: 0.2,
            borderWidth: 4
        },
        {
            label: '# of Votes',
            data: low,
            backgroundColor: 'transparent',
            borderColor: 'green',
            tension: 0.2,
            borderWidth: 4
        }]
    },
    options: {
        scales: {
            y: {
                beginAtZero: true,
            },
            
        }
    }
});