import React, {useRef} from 'react'

export default function UseRefComp(){
    const ref = useRef(null);

    const buttonhandler = () => {
        ref.current.focus();
    }

    return (
        <div>
            <input ref={ref}/>
            <button onClick={buttonhandler}>Focus</button>
        </div>
    )
}