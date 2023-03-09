import {useEffect,useState} from 'react';
import { useNavigate, json } from 'react-router-dom'
import BookingCart from './BookingCart';
export default function Services()
{
    const navigate = useNavigate();
    const [Data,setData]=useState([]);
    const [message,setMessage]=useState("");



    useEffect(()=>{
        fetch("http://localhost:8080/getAllServices")
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
               setMessage("No Services Available");
            }
            else{
                setData(obj);
               
            }
        })
        .catch((error)=>{alert("Server error, try after some time")});
},[])
    var bookings=[];
    const sendService=(s)=>{
        var mybookings=JSON.parse(localStorage.getItem("cart"));
        if(mybookings==null )
        {
            bookings.push(JSON.stringify(s));
            localStorage.setItem("cart",bookings);
            navigate("/admin_home/mybooking")
        }
        else
        {
            bookings.push(JSON.stringify(mybookings));
            bookings.push(JSON.stringify(s));
            localStorage.setItem("cart",JSON.stringify(bookings));
            navigate("/admin_home/mybooking")
            
        }

    }
   
   
     



    return(
        <div className="container w-50" id="centre">
        <table className="table">
        <thead>
            <tr>
                <th className="td" width="200" hight="400">Service ID</th>
                <th className="td" width="200" hight="400">Service Name</th>
                <th className="td" width="200" hight="400">Description</th>
                <th className="td" width="200" hight="400">Duration</th>
                <th className="td" width="200" hight="400">Cost</th>
                <th className="td" width="200" hight="400">Service ID</th>
                <th className="td"></th>
            </tr>
        </thead>
        <tbody>
        {
            Data.map(s => {return <tr>
                <td className="td">{s.s_id}</td>
                <td className="td text-capitalize">{s.s_name}</td>
                <td className="td">{s.description}</td>
                <td className="td">{s.duration}</td>
                <td className="td">{s.cost}</td>
                <td className="td text-capitalize">{s.sp_id.name}</td>
                <td className="td"><button onClick={()=>{sendService(s)}}>Buy</button></td>
              
            </tr>})
        }
        </tbody>
        </table>
    </div>)
}