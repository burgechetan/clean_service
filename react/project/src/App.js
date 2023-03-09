import NavBar from './components/NavBar';
import cleaningTools from './images/cleaningTools.jpeg';
import { useSelector } from 'react-redux';
function App() {
  const mystate=useSelector((state)=>{return state.logged})
  return (
    <div className="has-bg-img">
      <img src={cleaningTools} className="bg-img" id="bgimg"/>
      <NavBar/>
    </div>
    
    )
  
}

export default App;
