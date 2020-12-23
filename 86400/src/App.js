import React, {useEffect, useState} from 'react'
import './App.css';

const App = () => {

  const [timeLeft, setTimeLeft] = useState(0)
  useEffect(() => {
    const interval = setInterval(() =>{
      setTimeLeft(calculateTimeLeft);
    }, 1000);
    return() => clearInterval(interval);
  }, []);

  return (
    <div className="App">
        <h1>{timeLeft}</h1>
    </div>
  );

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
