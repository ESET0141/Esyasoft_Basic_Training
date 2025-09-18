import { useState } from "react";

function App() {

  const [counter, setCounter] = useState(0);

  const incrementButton = () => {
    setCounter(counter+1);
  }

  const decrementButton = () => {
    setCounter(counter-1);
  }
  return (
    <div className="App">
      <center>
      <div style={{font:"message-box", fontSize: "100px", padding:"10px"}}>{counter}</div>
      <div style={{padding:"5px"}}>
      <button style={{fontSize: "40px", padding:"10px"}} onClick={incrementButton}> + </button>
      <button style={{fontSize: "40px", padding:"10px"}} onClick={decrementButton}> - </button>
      </div>
      </center>
    </div>
  );
}

export default App;
