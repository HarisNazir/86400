var d = new Date()


function calculateTimeLeft(){
    var currentHour = d.getHours()
    var currentMinute = d.getMinutes()
    var currentSecond = d.getSeconds()
    
    var targetHour = 23;
    var targetMinute = 59;
    var targetSecond = 59;
    
    //document.write( currentHour + ":" + currentMin + ":" + currentSec)
    
    valueHour = (targetHour - currentHour) * 3600;
    valueMinute = (targetMinute = currentMinute) * 60;
    valueSecond = (targetSecond - currentSecond);
    
    finalValue = valueHour + valueMinute + valueSecond;
    element = (finalValue + " Seconds");
    document.write(element)
}

calculateTimeLeft();