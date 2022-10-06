import {Link} from 'react-router-dom'
import './nav.css'
const Navbar = () => {
  return (
    <nav className="navbg navbar navbar-expand-lg navbar-dark  " style={{backgroundColor: '#101820'}}>
      <div className="container-fluid">
       
        <button className="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse justify-content-around" id="navbarNav">
          <ul className="navbar-nav">
          
            <li className="nav-item">
                <a className="nav-link active  fs-5" href="#">Logo</a>
            </li>
        
              <li className="nav-item">
                <Link to="/">
                  <a className="nav-link active fs-5" aria-current="page" href="#">Home</a>
                </Link>
              </li>
            <li className="nav-item">
              <Link to="/private">
                <a className="nav-link active fs-5" aria-current="page" href="#">Profile</a>
              </Link>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  )
}
export default Navbar;