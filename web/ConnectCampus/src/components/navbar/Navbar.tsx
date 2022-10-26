import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Navbar from 'react-bootstrap/Navbar';
import NavDropdown from 'react-bootstrap/NavDropdown';
import { Link } from 'react-router-dom';
import logo from "../../../assets/svg/logo.svg"
function NavBar() {
  return (
    <Navbar bg="" expand="lg" style={{ backgroundColor: "#111111" }}>
      <Container className="" >
        <Navbar.Toggle aria-controls="basic-navbar-nav" />
        <Navbar.Collapse id="basic-navbar-nav">
          <Nav className="d-flex justify-content-center align-items-center">
          <Navbar.Brand as={Link} to="/" href="#home" className='ms-lg-5'>
          <img
            src={logo}
            className="d-inline-block align-top"
            alt="React Bootstrap logo"
          />
        </Navbar.Brand>
            <Nav.Link as={Link} to="/" href="#home" className=' text-white mx-lg-5 mb-3 mt-3'>Home</Nav.Link>
            <Nav.Link as={Link} to="/private" href="#home" className=' mx-lg-5 px-4 bg-light ms-4 mb-3 mt-3' style={{color: "#111111"}}>Profile</Nav.Link>
            
          </Nav>
        </Navbar.Collapse>
      </Container>
    </Navbar>
  );
}

export default NavBar;