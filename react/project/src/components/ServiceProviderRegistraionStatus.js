import {useEffect,useState} from 'react';
import {Link} from 'react-router-dom';
 import { useNavigate } from 'react-router-dom'

export default function ServiceProviderRegistrationStatus()
{

   const navigate = useNavigate();
   
    useEffect(()=>{
            fetch("http://localhost:8080/serviceproviders")
            .then(resp=>{
                if(resp.ok)
                    return resp.text();
                else
                    throw new Error("Server error");
            })
            .then(text=>text.length ? JSON.parse(text):{})
            .then(obj=>{
                if(Object.keys(obj).length===0)
                {
                   setMessage("No ServiceProvider Available");
                }
                else{
                    setData(obj);
                }
                
                
                
            })
            .catch((error)=>{alert("Server error, try after some time")});
    },[])


    const sendData=(e)=>{
      console.log(e)
      fetch("http://localhost:8080/approve?id="+e)
      .then(resp=>{
          if(resp.ok){

              return resp.json();
              
          }
          else
              throw new Error("Server error");
      })
      .then(obj => {
          if(obj)
          {
            navigate("serviceproviderstatus");
          }
          else
          {
            
          }
      })
      .catch((error)=>{alert("Server error, try after some time")});
    }

     


    const [Data,setData]=useState([]);
    const [message,setMessage]=useState("");

    return(<div>
        <table striped bordered hover variant='dark'>
        <thead>
            <tr>
                <th  width="200" hight="400">Id</th>
                <th  width="200" hight="400">Name</th>
                <th  width="200" hight="400">Contact</th>
                <th  width="200" hight="400">Address</th>
                <th  width="200" hight="400">Status</th>
                <th  width="200" hight="400">Action</th>
            </tr>
        </thead>
        <tbody>
        {
            Data.map(sp => {return <tr>
                <td>{sp.sp_id}</td>
                <td>{sp.name}</td>
                <td>{sp.login_id.contact}</td>
                <td>{sp.login_id.address}</td>
                <td>{JSON.stringify(sp.login_id.status)}</td>
                <td><button onClick={()=>{sendData(sp.login_id.login_id)}}>Approve</button></td>
                {/*<td><a href={`http://localhost:8080/approve?id=${sp.login_id.login_id}`}> Approve</a></td>*/}
                
                
            </tr>})
        }
        </tbody>
        </table>
        <h1 style={{color: "red"}}>{message}</h1>
    </div>)
}