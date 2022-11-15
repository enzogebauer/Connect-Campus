import { useState } from "react";
export const InputPost = () => {
  const [caption,setCaption] = useState("");
  const onSubmitForm = async (e) => {
    
    e.preventDefault();
    try{
      const body = {caption};
      const response = await fetch("http://localhost:5000/posts",{
        method:"POST",
        headers:{"Content-Type":"application/json"},
        body:JSON.stringify(body)

      });

     window.location = "/";
    }catch (err){
      console.error(err.message)
    }
  }
  return (
    <div className="w-fit h-15">
      <form className="d-flex justify-center" onSubmit={onSubmitForm}>
        <input type="text" className="text-center mr-4" value={caption} onChange={e => setCaption(e.target.value)}/>
        <button className="focus:outline-none text-white bg-purple-nav hover:bg-pink-light focus:ring-4 focus:ring-purple-300 font-medium rounded-lg text-sm px-5 py-2.5 mb-2 dark:bg-purple-600 dark:hover:bg-purple-700 dark:focus:ring-purple-900"> Post</button>
      </form>
    </div>
  )
}