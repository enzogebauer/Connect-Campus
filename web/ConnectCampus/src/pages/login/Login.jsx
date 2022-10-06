import './login.css'

function Login() {
  return (
    <main id="bg-login">
      <div className="left">
        <div className="">
          <h2 className='text-white mb-4'>Welcome to Connect Campus</h2>
          <p className='text-white'>sign in to Continue access</p>
        </div>
      </div>
      <div className="right d-flex align-items-center justify-content-center">

        <form>
          <h2 className='text-white mb-5'>Sign In</h2>
          <div className="mb-3">
            <input type="email" className="iemail form-control text-white" aria-describedby="emailHelp" placeholder='E-mail:'/>
              <div id="emailHelp" className="mt-3 text-white form-text fs-6">We'll never share your email with anyone else.</div>
          </div>
          <div className="mb-3">
            <input type="password" className="ipassword form-control " placeholder='Password:'/>
          </div>
          <div className="mb-3 form-check">
          </div>
          <button type="submit" className="btnlogin btn btn-primary">Login</button>
        </form>
      </div>
    </main>
  )
}
export default Login;