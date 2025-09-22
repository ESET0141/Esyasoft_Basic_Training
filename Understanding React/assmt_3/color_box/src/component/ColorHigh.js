import React, { useRef, useState } from 'react';
import './highlighter.css';

function ColorBoxHighlighter() {
  const redRef = useRef(null);
  const greenRef = useRef(null);
  const blueRef = useRef(null);

  const boxRefs = [redRef, greenRef, blueRef];

  const [currentIndex, setCurrentIndex] = useState(-1);

  const handleHighlightNext = () => {

    if (currentIndex >= 0) {
      boxRefs[currentIndex].current.classList.remove('highlighted');
    }

    const nextIndex = (currentIndex + 1) % boxRefs.length;

    boxRefs[nextIndex].current.classList.add('highlighted');

    setCurrentIndex(nextIndex);
  };

  return (
    <div className="container">
      <center>
        <div className="boxes">
          <div ref={redRef} className="color-box red" />
          <div ref={greenRef} className="color-box green" />
          <div ref={blueRef} className="color-box blue" />
        </div>
        <button onClick={handleHighlightNext} className="highlight-button">
          Highlight Next Box
        </button>
      </center>
    </div>
  );
}

export default ColorBoxHighlighter;
