import { Fragment, useState, useEffect } from "react"
export const ListPosts = () => {
  const [Posts, setPosts] = useState([]);
  const deleteTodo = async id => {
    try {
      const deleteTodo = await fetch(`http://localhost:5000/todos/${id}`, {
        method: "DELETE"
      });

      setTodos(todos.filter(todo => todo.todo_id !== id));
    } catch (err) {
      console.error(err.message);
    }
  };
  const getPosts = async () => {
    try {
      const response = await fetch("http://localhost:5000/posts")
      const jsonData = await response.json()
      setPosts(jsonData)
    } catch (error) {
      console.log(error.message)
    }
  }
  useEffect(() => {
    getPosts();
  }, []);
  return (
    <Fragment>
      {" "}
      <div className="overflow-x-auto relative">
        <table className="w-full text-sm text-left text-white">
          <thead className="text-xs text-white uppercase bg-purple-nav">
            <tr>
              <th className="px-5 py-3">Caption</th>
              <th className="px-5 py-3">Edit</th>
              <th className="px-5 py-3">Delete</th>
            </tr>
          </thead>
          <tbody >

            {Posts.map(Posts => (
              <tr className="text-left">
                <td  className="py-4 px-6">{Posts.caption}</td>
                <td  className="py-4 px-6">Edit</td>
                <td  className="py-4 px-6">Delete</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
    </Fragment>
  )
}