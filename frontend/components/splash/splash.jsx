import React from 'react';
import NavigationBar from '../nav_bar/nav_bar_container';
// import { Link } from 'react-router-dom';
// import { connect } from 'react-redux';
import classes from './splash.module.css';

const Splash = () => (
  <div>
    <NavigationBar />
    <div className={classes.mainSplashBackground}>
      <div className={classes.mainSplashText}>
        <h1> Coaches when you need them,</h1>
        <h1> at your fingertips </h1>
        <form className={classes.searchForm}>
          <input type="text" placeholder="I want to work on..." />
          <button type="button"> Train today </button>
        </form>
      </div>
    </div>
  </div>
);

export default Splash;