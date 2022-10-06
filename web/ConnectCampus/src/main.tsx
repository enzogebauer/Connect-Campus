import React from 'react'
import ReactDOM from 'react-dom/client'
import {BrowserRouter, Routes, Route} from 'react-router-dom';
import {Home} from './pages/home/Home';
import Login from './pages/login/Login';
import Register from './pages/register/Register-user'
import {Private} from  './pages/private/Private'

ReactDOM.createRoot(document.getElementById('root') as HTMLElement).render(
  <React.StrictMode>
   <BrowserRouter>
      <Routes>
        <Route path='/' element={<Home />}/>
        <Route path='/login' element={<Login />}/>
        <Route path='/register-user' element={<Register />}/>
        <Route path='/private' element={<Private />}/>

      </Routes>
    </BrowserRouter>
  </React.StrictMode>
    
)
