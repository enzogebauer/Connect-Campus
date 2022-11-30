const express = require("express");
const app = express();
const { pool } = require("./dbConfig");

const PORT = process.env.PORT || 4000;

app.set("view engine", "ejs");
app.use(express.urlencoded({extended: false}));


app.set("/", (req, res) => {
    res.render("index");
});

app.get("/users/register", (req, res) => {
    res.render("register");
});

app.get("/users/login", (req, res) => {
    res.render("login");
});

app.get("/users/dashboard", (req, res) => {
    res.render("dashboard",{ user: "luiz" });
});

app.post('/users/register', (req, res) => {
    let { full_name, profile_name, email, password, password_confirmation} = req.body;
    console.log({
        full_name,
        profile_name,
        email,
        password,
        password_confirmation
    });

    let errors = [];
    if(!full_name || !profile_name || !email || !password || password_confirmation){
        errors.push({message: "Por favor preencha todos os campos"});
    }

    if(password.length < 6){
        errors.push({message: "A senha precisa ter ao menos 6 caracteres"});
    }

    if(password != password_confirmation){
        errors.push({message: "As senhas não são iguais"});
    }

    if(errors.length < 0){
        res.render('register', {errors});
    }
});

app.listen(PORT, () => {
    console.log(`Server running on port ${PORT}`);
});