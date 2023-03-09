import { useEffect, useState } from "react"

export default function MyServices(){
    const [user,setUser]=useState(0);
    
   
    const [Data,setData]=useState([]);
    const [message,setMessage]=useState("");

    useEffect(()=>{
       var u;
        u=JSON.parse(localStorage.getItem("login_id"));
         
        fetch("http://localhost:8080/myservices?login_id="+u)
        .then(resp=>{
            if(resp.ok)
            {
                return resp.text();
            }
            else
                throw new Error("Server error");
        })
        .then(text=>text.length ? JSON.parse(text):{})
        .then(obj=>{
            if(Object.keys(obj).length===0)
            {
               setMessage("No Services Available");
            }
            else{
                setData(obj);
               
            }
        })
        .catch((error)=>{alert("Server error, try after some time")});

    },[])

    return(
    <div>

    <table>
        <thead>
            <tr>
                <th  width="200" hight="400">S_Id</th>
                <th  width="200" hight="400">Name</th>
                <th  width="200" hight="400">Description</th>
                <th  width="200" hight="400">Duration</th>
                <th  width="200" hight="400">Cost</th>
                <th  width="200" hight="400">Sp_id</th>
               
            </tr>
        </thead>
        <tbody>
        {
            Data.map((s,i) => {return <tr>
                <td >{s.s_id}</td>
                <td>{s.s_name}</td>
                <td>{s.description}</td>
                <td>{s.duration}</td>
                <td>{s.cost}</td>
                <td>{s.sp_id.name}</td>
                
            </tr>})
        }
        </tbody>
        </table>


    </div>
    )
}