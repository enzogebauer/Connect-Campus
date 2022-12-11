const express = require("express");
const app = express();
const cors = require("cors");
const pool = require("./db");
//middleware
app.use(cors());
app.use(express.json()); //req.body

app.listen(5000, ()=>{
  console.log("Server has started at port 5000");
});

// Routes
//create a POST
app.post("/posts", async(req,res)=>{
  //away
  try{
    const {caption} = req.body;
    const newPost = await pool.query("insert into post (caption) values($1) returning *",[caption]
    );
    res.json(newPost);

  } catch(err){
    console.error(err.message);
  }
});
//get all Posts
app.get("/posts", async(req,res)=>{
  try{
    const allPosts = await pool.query("SELECT * FROM post");
    res.json(allPosts.rows);
  } catch(err){
    console.error(err.message);
  }

}
)
//Get a Post  LG
app.get("/posts/:id", async (req, res) => {
  try {
      const {id} = req.params;
      const post = await pool.query("SELECT * FROM post WHERE post_id = $1", [id])
      res.json(post.rows[0]);
  }
  catch (err){
    console.error(err.message)
  }
})

//Update a Post ZOCA
app.put("/posts/:id",async (req,res)=>{
  try{
    const {id} = req.params;
    const {caption} = req.body;
    const updatePost = await pool.query("UPDATE post SET caption = $1 WHERE post_id = $2",[caption,id]);
    res.json("Post was updated")
  }catch (err){
    console.error(err.message);
  }
  
});

//delete a Post DUNKEL

app.delete("/posts/:id", async (req, res) => {
  try {
    const { id } =req.params;
    const deletePost = await pool.query("DELETE  FROM post WHERE post_id = $1", [id]);
    res.json("Post was deleted!");
  }catch (err) {
    console.log(err.message);
  }
});

