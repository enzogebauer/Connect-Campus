
import { useState } from "react";
import closeicon from "../../assets/closeicon.svg"
export const EditPosts = ({post}) => {
  const [showModal, setShowModal] = useState(false);
  const [caption,setCaption] = useState(post.caption);
  const updateCaption = async (e) => {
    e.preventDefault();
    try {
      const body = {caption};
      const response = await fetch(`http://localhost:5000/posts/${post.post_id}`,{
        method:"PUT",
        headers:{"Content-Type":"application/json"},
        body:JSON.stringify(body)
        
      })
      window.location = "/"
    } catch (error) {
      console.error(error.message)
    }
  }
  return (

    <>
        <button
          className="bg-green-edit text-white active:bg-pink-light font-bold uppercase text-sm p-2 rounded shadow hover:shadow-lg outline-none focus:outline-none ease-linear transition-all duration-150"
          type="button"
          onClick={() => setShowModal(true)}
        >
          Edit
        </button>
        {showModal ? (
          <>
            <div
              className="justify-center items-center flex overflow-x-hidden overflow-y-auto fixed inset-0 z-50 outline-none focus:outline-none"
            >
              <div className="relative w-auto my-6 mx-auto max-w-3xl">
                <div className="border-0 rounded-lg shadow-lg relative flex flex-col w-full bg-white outline-none focus:outline-none">
                  <div className="flex items-center justify-between p-5 border-b border-solid border-gray rounded-t">
                    <h3 className="text-3xl text-center font-semibold">
                      Edit Post
                    </h3>
                    <button
                      className="w-5 h-5 pt-1"
                      onClick={() => setShowModal(false)}
                    >
                        <img src={closeicon} alt="" />
                    </button>
                  </div>
                  <div className="relative p-10 flex-auto">
                    <input type="text" className="my-4 w-fit h-fit" value={caption} onChange={e => setCaption(e.target.value)}>
                     
                    </input>
                  </div>
                  <div className="flex items-center justify-end p-6 border-t border-solid border-gray-light rounded-b">
                    <button
                      className="text-red-500 background-transparent font-bold uppercase px-6 py-2 text-sm outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
                      type="button"
                      onClick={(e) => {
                        updateCaption(e);
                        setShowModal(false);
                      }}
                    >
                      Close
                    </button>
                    <button
                      className="bg-green-edit text-white active:bg-slate font-bold uppercase text-sm px-6 py-3 rounded shadow hover:shadow-lg outline-none focus:outline-none mr-1 mb-1 ease-linear transition-all duration-150"
                      type="button"
                      onClick={(e) => {
                        updateCaption(e);
                        setShowModal(false);
                      }}
                    >
                      Save Changes
                    </button>
                  </div>
                </div>
              </div>
            </div>
            <div className="opacity-25 fixed inset-0 z-40 bg-black"></div>
          </>
        ) : null}
      </>
      );
}
   