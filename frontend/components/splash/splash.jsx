import React from 'react';
import { Link } from 'react-router-dom';
import NavigationBarContainer from '../nav_bar/nav_bar_container';
import Footer from '../footer/footer';
import classes from './splash.module.css';

const Splash = () => (
  <div className={classes.splashContainer}>
    <NavigationBarContainer />
    <div className={classes.mainSplashBackground}>
      <div className={classes.mainSplashText}>
        <h1> Find the best coaches to unlock your potential </h1>
        <h4> Perfect your game with an assist from thousands of trusted CoachBunnies </h4>
        <form className={classes.searchForm}>
          {/* <input type="text" placeholder="I want to work on..." /> */}
          <Link className={classes.deadButton} to="/entrypage">
            Train today
          </Link>
        </form>
      </div>
    </div>
    <section className={classes.mainReviewSection}>
      <div className={classes.reviewStars}>
        <img
          className={classes.reviewPhoto}
          src={window.reviewStars}
          alt="stars"
        />
        <p>1.1+ Million Reviews</p>
      </div>
      <div className={classes.mainPartner}>
        <img
          className={classes.reviewPhoto}
          src={window.mlsLogo}
          alt="partner"
        />
        <p>Partnered with MLS</p>
      </div>
      <img
        className={classes.reviewPhoto}
        src={window.appStore}
        alt="appstore"
      />
    </section>
    <Footer />
  </div>
);

export default Splash;
