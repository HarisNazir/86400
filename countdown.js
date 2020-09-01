calculateTimeLeft();

setInterval(calculateTimeLeft, 1000);

function calculateTimeLeft(){
    var d = new Date();
    var currentHour = d.getHours();
    var currentMinute = d.getMinutes();
    var currentSecond = d.getSeconds();
    
    var targetHour = 23;
    var targetMinute = 59;
    var targetSecond = 59;
    
    valueHour = (targetHour - currentHour) * 3600;
    valueMinute = (targetMinute - currentMinute) * 60;
    valueSecond = (targetSecond - currentSecond);
    
    finalValue = valueHour + valueMinute + valueSecond + 1;
    element = (finalValue + " Seconds");
    document.getElementById("p1").innerHTML = element;
}