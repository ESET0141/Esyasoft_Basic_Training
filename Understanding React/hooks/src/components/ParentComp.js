import React, { useState } from 'react'

export default function ParentComp() {
    const [count, setCount] = useState(0);

      const increment = () => {
        setCount(prev => prev+1);
    }
    const decrement = () => {
        setCount(prev => prev-1);
    }

  return (
    <div>
        <h1>Welcome to the Parent component</h1>
        <Sibling1 count = {count}/>
        <Sibling2 increment={increment} decrement={decrement}/>
    </div>
  )
}

function Sibling1({count}){
    return(
        <>
         <h3>{count}</h3>
        </>
    )

}

function Sibling2({increment,decrement}){
  

    return(
        <>
        <button onClick={increment}>Increment</button>
        <button onClick={decrement}>Decrement</button>
        </>
    )
}
