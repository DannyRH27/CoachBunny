import React from 'react';
import { Link } from 'react-router-dom';
import classes from './nav_bar.module.css';

const LoggedInNav = () => (
  <ul className={classes.navBarUl}>
    <li key="findACoach">
      <Link to="/main"> Find a Coach </Link>
    </li>
    <li key="mySession">
      <Link to="/main/mysessions"> My Sessions </Link>
    </li>
    <li key="account">
      <Link to="/main/account"> Account </Link>
    </li>
  </ul>
);

const LoggedOutNav = () => (
  <ul className={classes.navBarUl}>
    {/* <li key="sport">Sports</li> */}
    <li key="login">
      <Link className={classes.navBarLogInButton} to="/entrypage"> Log in </Link>
    </li>
    {/* <button type="button"> Become a Coach </button> */}
  </ul>
);

const NavigationBar = ({ currentUser, logout }) => (
  <header className={classes.mainHeader}>
    <nav className={classes.navbar}>
      <Link to="/" className={classes.leftNav}>
        <img className={classes.imgResponsive} src={window.fullLogo2} alt="logo" />
      </Link>
      <div className={classes.rightNav}>
        { currentUser ? <LoggedInNav logout={logout} /> : <LoggedOutNav /> }
      </div>
    </nav>
  </header>
);

export default NavigationBar;
