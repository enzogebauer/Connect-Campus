import { Fragment, useState, useEffect } from "react"
import { EditPosts } from "./EditPosts";
export const ListPosts = () => {
  const [post, setPost] = useState([]);

  const getPost = async () => {
    try {
      const response = await fetch("http://localhost:5000/posts")
      const jsonData = await response.json()
      setPost(jsonData)
    } catch (error) {
      console.log(error.message)
    }
  }
  useEffect(() => {
    getPost();
  }, []);
  const deletePost = async (id) => {
    try {
      const deletePost = await fetch(`http://localhost:5000/posts/${id}`, {
        method: "DELETE"
      });
      setPost(post.filter(post => post.post_id !== id));
    } catch (err) {
      console.error(err.message)

    }
  }
  return (
    <Fragment>
      {" "}
      <div className="overflow-x-auto flex-col">
        {post.map(post => (
          <p className="my-10" key={post.post_id} >
            <p className="py-40 px-6 w-[600px] h-[150px]  rounded-xl bg-white text-black font-semibold text-center">{post.caption}</p>
            <div className="flex flex-row justify-center">  
              <p className="py-4 px-6"> <button><EditPosts post={post} /></button></p>
              <p className="py-4 px-6"><button className="bg-red-danger p-2  font-semibold rounded-md text-white" onClick={() => deletePost(post.post_id)}>Delete</button></p>
            </div>

          </p>
        ))}
      </div>
    </Fragment>
  )
}