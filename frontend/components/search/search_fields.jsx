import React from 'react';
import { Link, Redirect } from 'react-router-dom';
import { connect } from 'react-redux';
import classes from './search_fields.module.css';

class SearchFields extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      search: '',
    };

    this.getMatches = this.getMatches.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.checkSubmit = this.checkSubmit.bind(this);
  }

  getMatches() {
    const matches = [];
    const { search } = this.state;
    const { allSports } = this.props;
    const sports = Object.values(allSports).map((sport) => sport.sport);

    sports.forEach((sport) => {
      if (sport.toLowerCase().includes(search.toLowerCase())) matches.push(sport);
    });

    if (matches.length > 0 && matches.length !== sports.length) {
      return (
        <div className={classes.dropdownContainer}>
          <ul>
            {matches.map((match) => {
              return <li onClick={this.handleSubmit} className={classes.sportSearchResult} key={match}>{match}</li>;
            })}
          </ul>
        </div>
      );
    }
  }

  checkSubmit(sportName) {
    const lowercaseSport = sportName.toLowerCase();
    const { allSports } = this.props;
    const sports = Object.values(allSports).map((sport) => sport.sport.toLowerCase());
    if (sports.includes(lowercaseSport)) {
      const selected = Object.values(allSports).filter((sport) => {
        return sport.sport.toLowerCase() === lowercaseSport;
      });
      return selected[0].id;
    }
  }

  handleSubmit(event) {
    event.preventDefault();
    const selected = event.currentTarget.innerText || this.state.search;
    const sportId = this.checkSubmit(selected);
    if (sportId) return window.location.href = `#/sports/${sportId}`;
  }

  update() {
    return (e) => {
      this.setState({
        search: e.target.value,
      });
    };
  }

  render() {
    const { search } = this.state;

    return (
      <div className={classes.searchFieldMain}>
        <div className={classes.searchFieldBox}>
          <div className={classes.searchFieldBanner}>
            <h1>Find Your Next Coach</h1>
          </div>
          <div className={classes.search}>
            <form className={classes.searchForm} onSubmit={this.handleSubmit}>
              <img className={classes.magGlass} src={window.magnifyingGlass} alt="search" />
              <input
                type="text"
                placeholder="What sport would you like to work on"
                value={search}
                onChange={(e) => this.setState({ search: e.target.value })}
              />
            </form>
            {this.getMatches()}
          </div>
          <div className={classes.searchFieldButtons}>
            <div>
              <Link to="/sports/1">Football</Link>
              <Link to="/sports/2">Basketball</Link>
              <Link to="/sports/3">Soccer</Link>
            </div>
            <div>
              <Link to="/sports/4">Tennis</Link>
              <Link to="/sports/5">Golf</Link>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

const mapState = (state) => ({
  allSports: state.entities.sports,
});

const mapDispatch = (dispatch) => ({
});

export default connect(
  mapState, mapDispatch,
)(SearchFields);
