import { useReducer } from 'react';
export default function AddServices(){

    const init = {
        s_name:"" ,
        description:"" ,
        duration:"",
        cost:0,
        sp_id:0
    }


    const sendData=(e)=>{
        e.preventDefault();
        const reqOption={
            method:"post",
            headers:{'content-type':'application/json'},
            body:JSON.stringify({s_name:state.s_name.value,description:state.description.value,duration:state.duration.value,cost:state.cost.value,sp_id:state.sp_id.value})
        }
        console.log(state.duration)
        fetch("http://localhost:8080/insertservice",reqOption )
        .then(resp=>{
            if(resp.ok)
                return resp.json();
            else
                throw new Error("Server error");
        })
        .catch((error)=>{alert("Server error, try after some time")});

    }


    const reducer = (state,action) => {
        
        switch(action.type){
            case 'update' :  
                return {...state,[action.field]:action.val}
            case 'reset' : {
                return init;
            }
        }
    }

    const [state,dispatch] = useReducer(reducer,init);

    return(
        <div>
            <form>
                <div className="mb-3">
                    <label htmlFor="s_name" className="form-label">Service Name : </label>
                    <input type="text" name="s_name"className="form-control" id="s_name" value={state.s_name.value}  onChange={(e)=>{dispatch({type:'update',field:'s_name',val:e.target.value})}} />
                </div>
                <div className="mb-3">
                    <label htmlFor="description" className="form-label">Description : </label>
                    <input type="text" name="description"    className="form-control"  id="description"  value={state.description.value}   onChange={(e)=>{dispatch({type:'update',field:'description',val:e.target.value})}}/>
                </div>
                <div className="mb-3">
                    <label htmlFor="duration" className="form-label">Duration : </label>
                    <input type="time" name="duration"  className="form-control"  id="duration"  value={state.duration.value}   onChange={(e)=>{dispatch({type:'update',field:'duration',val:e.target.value})}}/>
                </div>
                <div className="mb-3">
                    <label htmlFor="cost" className="form-label">Cost : </label>
                    <input type="number" name="cost"  className="form-control"  id="cost"  value={state.cost.value}   onChange={(e)=>{dispatch({type:'update',field:'cost',val:e.target.value})}}/>
                </div>
               
                <div className="mb-3">
                    <label htmlFor="sp_id" className="form-label">Sp_Id : </label>
                    <input type="number" name="sp_id"  className="form-control"  id="sp_id"  value={state.sp_id.value}   onChange={(e)=>{dispatch({type:'update',field:'sp_id',val:e.target.value})}}/>
                </div>
                <div className="col-12">
                        <button type="submit" className="btn btn-primary mb-3" onClick={(e)=>{sendData(e)}}>Submit</button>
                        <button type="reset" className="btn btn-primary mb-3" onClick={()=>{dispatch({type:"reset"} )}}>Reset</button>
                </div>
                
            </form>
            {JSON.stringify(state)}

        </div>
    )
}