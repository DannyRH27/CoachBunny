import React from 'react';
import { Link } from 'react-router-dom';
import { connect } from 'react-redux';
import { logIn } from '../../actions/session_actions';
import classes from './entry_page.module.css';

function checkLoginState() {
  FB.getLoginStatus(function(response) {
    statusChangeCallback(response);
  });
}

class EntryPage extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    e.preventDefault();
    const user = {
      email: 'demo@demo.com',
      password: 'demouser',
    };
    const { submitForm } = this.props;
    submitForm(user);
  }

  render() {
    return (
      <div className={classes.mainLoginBackground}>
        <div className={classes.mainLoginPanel}>
          <div className={classes.textLogo}>
            <img className={classes.imgResponsive} src={window.textLogo} alt="textLogo" />
          </div>

          <button className={classes.myspace} type="button"> Facebook (coming soon)</button>
          <div class="fb-login-button" data-size="large" data-button-type="continue_with" data-layout="default" data-auto-logout-link="false" data-use-continue-as="false" data-width=""></div>
          <button className={classes.xanga} type="button"> Google (coming soon)</button>
          <Link
            className={classes.demoUserLogin}
            onClick={this.handleClick}
            to="/main"
          >
            Demo user
          </Link>
          <div className={classes.entrypageLinks}>
            <Link to="/login" className={classes.buttonFirst}> Log in </Link>
            <Link to="/signup" className={classes.buttonSecond}> Sign up </Link>
          </div>
        </div>
      </div>
    );
  }
}

const mapDispatch = (dispatch) => {
  return ({
    submitForm: (user) => dispatch(logIn(user)),
  });
};

export default connect(
  null, mapDispatch,
)(EntryPage);
