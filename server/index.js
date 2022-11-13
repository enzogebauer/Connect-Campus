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
//create a TODO
app.post("/posts", async(req,res)=>{
  //away
  try{
    const {description} = req.body;
    const newPost = await pool.query("INSERT INTO post (caption) values($1) RETURNING *",[description]
    );
    res.json(newPost)

  } catch(err){
    console.error(err.message)
  }
});
//get all TODOS
//Get a todo
//Update a todo
//delete a todo