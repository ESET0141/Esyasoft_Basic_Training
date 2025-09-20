import logo from './logo.svg';
import './App.css';
import UseRefComp from './components/ref';
import ParentComp from './components/ParentComp';

function App() {
  return (
    <div className="App">
     {/* <UseRefComp/> */}
     <ParentComp/>
    </div>
  );
}

export default App;
