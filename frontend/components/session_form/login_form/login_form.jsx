import React from 'react';
import classes from '../entry_page.module.css';

class LoginForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const { submitForm } = this.props;
    submitForm(this.state);
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  render() {
    const { email, password } = this.state;
    const { errors } = this.props;

    return (
      <div className={classes.mainLoginBackground}>
        <div className={classes.mainLoginPanel}>
          <form className={classes.initialForm} onSubmit={this.handleSubmit}>
            <label> Email Address </label>
            <input
              className={classes.loginInput}
              type="text"
              value={email}
              onChange={this.update('email')}
            />
            <p />
            <label> Password </label>
            <input
              className={classes.loginInput}
              type="password"
              value={password}
              onChange={this.update('password')}
            />
            <p />
            {errors.map((error, idx) => <li className={classes.errors} key={idx}>{error}</li>)}
            {/* <Link
              className={classes.demoUserLogin}
              onClick={this.handleClick}
              to="/dashboard"
            > */}
            <button className={classes.submitButton} type="submit"> Log in </button>
          </form>
        </div>
      </div>
    );
  }
}

export default LoginForm;
