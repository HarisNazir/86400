import './App.css';
// const time = <div />
function App() {
  while(true){
  calculateTimeLeft();
  setInterval(calculateTimeLeft, 1000);

  return (
    <div className="App">
        <h1>86400</h1>
    </div>
  );
}
}

const calculateTimeLeft = () => {
  const d = new Date();
  const currentHour = d.getHours();
  const currentMinute = d.getMinutes();
  const currentSecond = d.getSeconds();
  
  const targetHour = 23;
  const targetMinute = 59;
  const targetSecond = 59;
  
  const valueHour = (targetHour - currentHour) * 3600;
  const valueMinute = (targetMinute - currentMinute) * 60;
  const valueSecond = (targetSecond - currentSecond);
  
  const finalValue = valueHour + valueMinute + valueSecond + 1;
  const element  = (finalValue);
  return element;

  //document.getElementById("p1").innerHTML = element;
}

export default App;
 /*
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

 */