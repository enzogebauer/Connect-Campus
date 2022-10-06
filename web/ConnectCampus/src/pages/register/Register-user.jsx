import './register.css'

function Register() {
  return (
    <main id="bg-register">
      <div className="leftregister">
        <div className="">
          <h2 className='text-white mb-4'>Welcome to Connect Campus</h2>
          <p className='text-white'>sign up to Continue access</p>
        </div>
      </div>
      <div className="right d-flex align-items-center justify-content-center">

        <form>
          <h2 className='text-white mb-5'>Sign Up</h2>
          <div className="mb-3">
            <input type="email" className="iemailregister form-control text-white" aria-describedby="emailHelp" placeholder='E-mail:'/>
            <input type="email" className="iemailregister mt-3 form-control text-white" aria-describedby="emailHelp" placeholder='Confirm e-mail:'/>
             
          </div>
          <div className="mb-3">
            <input type="password" className="ipasswordregister form-control " placeholder='Password:'/>
          </div>
          <div className="mb-3 form-check">
          </div>
          <button type="submit" className="btnregister btn btn-primary">Sign Up</button>
        </form>
      </div>
    </main>
  )
}
export default Register;