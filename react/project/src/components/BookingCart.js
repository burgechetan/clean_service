import { useState,useEffect } from "react";
import { useNavigate, json } from 'react-router-dom';
export default function BookingCart()
{
    const [items, setItems] = useState([]);
    const navigate = useNavigate();

    useEffect(() => {
        
    const items = JSON.parse(localStorage.getItem('cart'));
    if (items) {
    setItems(items);
    }
    }, []);

     const services=()=>{
        navigate("/admin_home/services");
     }



    return(
    <div>
        {JSON.stringify(items)}
        <button onClick={()=>{services()}}>Buy more</button>
    </div>
    )
}