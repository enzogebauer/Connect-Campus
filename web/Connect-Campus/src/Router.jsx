import {BrowserRouter, Routes, Route} from 'react-router-dom';
import Home from './view/home/Home';
import Login from './view/login/Login';
import Register from './view/register/Register-user'
function Router() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path='/' element={<Home />}/>
        <Route path='/login' element={<Login />}/>
        <Route path='/register-user' element={<Register />}/>

      </Routes>
    </BrowserRouter>
  );
}
export default Router;