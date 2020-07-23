import React from 'react';
import classes from '../entry_page.module.css';

class SignupForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      firstName: '',
      lastName: '',
      email: '',
      password: '',
      zipCode: '',
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
    const {
      firstName, lastName, email, password, zipCode,
    } = this.state;
    // const { errors } = this.props;

    return (
      <div className={classes.mainLoginBackground}>
        <div className={classes.mainLoginPanel}>
          <form className={classes.initialForm} onSubmit={this.handleSubmit}>
            <label> First Name </label>
            <input
              type="text"
              value={firstName}
              onChange={this.update('firstName')}
            />
            <p />
            <label> Last Name </label>
            <input
              type="text"
              value={lastName}
              onChange={this.update('lastName')}
            />
            <p />
            <label> Email Address </label>
            <input
              type="text"
              value={email}
              onChange={this.update('email')}
            />
            <p />
            <label> Password </label>
            <input
              type="password"
              value={password}
              onChange={this.update('password')}
            />
            <p />
            <label> Zip Code </label>
            <input
              type="text"
              value={zipCode}
              onChange={this.update('zipCode')}
            />
            <p />
            <span className={classes.disclaimer}>By clicking below and creating an account, I agree to CoachBunny's Terms of Service and Privacy Policy.</span>
            {/* {errors.map((error) => <li className={classes.errors}>{error}</li>)} */}
            <button className={classes.submitButton} type="submit"> Create Account </button>
          </form>
        </div>
      </div>
    );
  }
}

export default SignupForm;
