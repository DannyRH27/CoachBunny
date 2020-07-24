import React from 'react';
import { Link, withRouter } from 'react-router-dom';
import classes from './search_form.module.css';


class SearchForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      interest: '',
      location: '',
      duration: '',
      description: '',
      interestError: '',
      locationError: '',
      durationError: '',
      descriptionError: '',
    };
    this.handleSearch = this.handleSearch.bind(this);
  }

  update(field) {
    const errorString = field.concat('Error');
    return (e) => this.setState({
      [field]: e.target.value,
      [errorString]: '',
    });
  }

  handleSearch() {
    const { submitSearch, selectedSport, history } = this.props;

    const {
      duration, location, description, interest,
    } = this.state;

    if (interest === '') {
      this.setState({
        interestError: 'Please enter an interest level.',
      });
    } else if (location.length !== 5) {
      this.setState({
        locationError: 'Please enter a valid 5-digit zip code.',
      });
    } else if (duration === '') {
      this.setState({
        durationError: 'Must have a duration',
      });
    } else if (description === '') {
      this.setState({
        descriptionError: 'Please enter a description to help us show you the best coaches.',
      });
    } else {
      const sportId = selectedSport.id;
      submitSearch({ sportId, duration, description })
        .then(history.push('/results'));
    }
  }

  render() {
    const {
      location, duration, description, interest, interestError,
      locationError, durationError, descriptionError,
    } = this.state;
    const { selectedSport } = this.props;

    return (
      <div className={classes.searchMain}>
        <div className={classes.searchHeader}>
          <Link to="/main" className={classes.bunnyLogo}>
            <img className={classes.imgResponsive} src={window.bunnyLogo} alt="logo" />
          </Link>
          <span>
            Tell us what you want to work on. We'll use these
            details to show you Coaches in your area who fit your needs
          </span>
        </div>
        <div className={classes.searchFields}>
          <div className={classes.textLogo}>
            <Link to="/main">
              <img className={classes.imgResponsive} src={window.textLogo} alt="logo" />
            </Link>
            {/* <div className={classes.selectedSport}>
              <span>{selectedSport.sport}</span>
            </div>
            <div className={classes.pickAnotherSport}>
              <span>
                {selectedSport.sport} not the right sport? <Link to="/">Pick another sport</Link>
              </span>
            </div> */}
          </div>
          <section className={classes.interest}>
            <h4>TRAINING INTEREST</h4>
            <span>What brings you here today?</span>
            <label htmlFor="interest">
              <input
                type="radio"
                name="interest"
                value="ready"
                checked={interest === 'ready'}
                onChange={this.update('interest')}
              />
              I&#39;m ready to book now
            </label>
            <label htmlFor="interest">
              <input
                type="radio"
                name="interest"
                value="interested"
                checked={interest === 'interested'}
                onChange={this.update('interest')}
              />
              I'm interested in booking soon
            </label>
            <label htmlFor="interest">
              <input
                type="radio"
                name="interest"
                value="browsing"
                checked={interest === 'browsing'}
                onChange={this.update('interest')}
              />
              I'm just browsing
            </label>
            <span className={classes.errors}>{interestError}</span>
          </section>
          <section className={classes.location}>
            <h4> YOUR TRAINING LOCATION </h4>
            <input
              type="text"
              placeholder="Enter your 5-digit zip code"
              onChange={this.update('location')}
              value={location}
            />
            <span className={classes.errors}>{locationError}</span>
          </section>
          <section className={classes.duration}>
            <h4>TRAINING OPTIONS</h4>
            <span> How long would you like to train for? </span>
            <label htmlFor="duration">
              <input
                type="radio"
                name="duration"
                value="0-45"
                checked={duration === '0-45'}
                onChange={this.update('duration')}
              />
              45 minutes or less
            </label>
            <label htmlFor="duration">
              <input
                type="radio"
                name="duration"
                value="45-90"
                checked={duration === '45-90'}
                onChange={this.update('duration')}
              />
              45-90 minutes
            </label>
            <label htmlFor="duration">
              <input
                type="radio"
                name="duration"
                value="90-500"
                checked={duration === '90-500'}
                onChange={this.update('duration')}
              />
              +90 minutes
            </label>
            <span className={classes.errors}>{durationError}</span>
          </section>
          <section className={classes.description}>
            <h4>TELL US THE DETAILS OF WHAT YOU WANT TO TRAIN</h4>
            <div className={classes.conversationStart}>
              Start the conversation and tell your Coach what you need done.
              This helps us show you only qualified and available coaches for the job.
              Don&#39;t worry, you can edit this later.
            </div>
            <textarea
              onChange={this.update('description')}
              value={description}
              placeholder="Hi! I'm looking for help improving my hips. My club team coach tells me
              that I need to be faster in changing directions. I don't like ladder/cone drills,
              but I know they help. I would prefer a coach who has these things handy since I do not."
            />
            <span className={classes.errors}>{descriptionError}</span>
            <div className={classes.searchButtonContainer}>
              <button type="submit" onClick={this.handleSearch}> Find a Coach </button>
            </div>
          </section>
        </div>
      </div>
    );
  }
}

export default withRouter(SearchForm);
