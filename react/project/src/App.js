import NavBar from './components/NavBar';
import cleaningTools from './images/cleaningTools.jpeg';
import Sample2 from './images/Sample2.jpg';
function App() {
  return (
    <div className="has-bg-img">
      <img src={cleaningTools} alt={Sample2} className="bg-img" id="bgimg"/>
      <NavBar/>
    </div>
    
    )
  
}

export default App;
