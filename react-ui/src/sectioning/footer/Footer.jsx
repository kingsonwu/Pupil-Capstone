import "./footer.css"
import { NavLink } from "react-router-dom"

const currentYear = new Date().getFullYear()

function Footer() {

    return (
    <footer >
      <div>
        <NavLink style ={{textDecoration:'none'}} to="/become">BECOME A MENTOR </NavLink>
        <p>Copyright {currentYear} </p>
      </div>
    </footer>
    )
}

export default Footer