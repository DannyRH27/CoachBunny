import React from 'react';
import { connect } from 'react-redux';
import { Link } from 'react-router-dom';
import classes from './search_results.module.css';
import SearchResultItem from './search_result_item';
import NavBar from '../nav_bar/nav_bar_container';

function noResults() {
  return (
    <div className={classes.noCoaches}>
      <NavBar />
      <div className={classes.noCoachesBody}>
        <span>We&apos;re sorry, your search did not return any coaches.</span>
        <div className={classes.redoSearch}>
          <Link to="/main" className={classes.redoSearchLink}>Search Again</Link>
        </div>
      </div>
    </div>
  );
}

class SearchResults extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      eliteFilter: false,
      equipmentFilter: false,
      sortStatus: 'options',
    };
    this.filterSearchResults = this.filterSearchResults.bind(this);
    this.toggle = this.toggle.bind(this);
    this.setSort = this.setSort.bind(this);
    this.sortSearchResults = this.sortSearchResults.bind(this);
  }

  componentDidMount() {
    window.scrollTo(0, 0);
  }

  setSort() {
    this.setState({
      sortStatus: event.target.value,
    });
  }

  toggle(field) {
    return () => {
      this.setState({
        [field]: !this.state[field],
      });
    };
  }

  filterSearchResults() {
    const { eliteFilter, equipmentFilter } = this.state;
    const { results } = this.props;

    switch (true) {
      case eliteFilter && equipmentFilter:
        return results.filter((coach) => coach.eliteCoach && coach.equipment);
      case eliteFilter && !equipmentFilter:
        return results.filter((coach) => coach.eliteCoach);
      case !eliteFilter && equipmentFilter:
        return results.filter((coach) => coach.equipment);
      default:
        return results;
    }
  }

  sortSearchResults(coaches) {
    const { sortStatus } = this.state;
    switch (sortStatus) {
      case ('priceLowToHigh'):
        return coaches.sort((a, b) => a.coachingRate - b.coachingRate);
      case ('priceHighToLow'):
        return coaches.sort((a, b) => b.coachingRate - a.coachingRate);
      case ('durationLowToHigh'):
        return coaches.sort((a, b) => a.duration - b.duration);
      case ('durationHighToLow'):
        return coaches.sort((a, b) => b.duration - a.duration);
      default:
        return coaches;
    }
  }

  render() {
    let coaches = this.filterSearchResults();
    coaches = this.sortSearchResults(coaches);
    const { eliteFilter, equipmentFilter, sortStatus } = this.state;
    const { results } = this.props;
    if (results.length === 0) return noResults();
    return (
      <div>
        <div className={classes.textLogo}>
          <Link to="/main" className={classes.leftNav}>
            <img className={classes.imgResponsive} src={window.textLogo} alt="logo" />
          </Link>
        </div>
        <div className={classes.searchContainer}>
          <div className={classes.searchLeft}>
            <div className={classes.backgroundCheck}>
              <span>
                All of our Coaches undergo ID and criminal background checks so that you can book and train with confidence.
              </span>
            </div>
            <div className={classes.filterContainer}>
              <span>Coach Type</span>
              <label
                className={classes.checkboxContainer}
                onClick={this.toggle('eliteFilter')}
                htmlFor="equipment"
              >
                <span>Elite Coach</span>
                <input type="checkbox" name="elite" checked={eliteFilter} />
                <span className={classes.checkmark} />
              </label>
              <label
                className={classes.checkboxContainer}
                onClick={this.toggle('equipmentFilter')}
                htmlFor="equipment"
              >
                <span>Has Equipment</span>
                <input type="checkbox" name="equipment" checked={equipmentFilter} />
                <span className={classes.checkmark} />
              </label>
            </div>
          </div>
          <div className={classes.searchRight}>
            <div className={classes.sortContainerMain}>
              <div className={classes.sortContainer}>
                <span>SORTED BY:</span>
                <select defaultValue={sortStatus} onChange={this.setSort} className={classes.sortDropdown}>
                  <option value="options" disabled>Recommended</option>
                  <option value="priceLowToHigh">Price: Low to High</option>
                  <option value="priceHighToLow">Price: High to Low</option>
                  <option value="durationLowToHigh">Duration: Low to High</option>
                  <option value="durationHighToLow">Duration: High to Low</option>
                </select>
              </div>
            </div>
            <div className={classes.searchResults}>
              {coaches.map((result) => <SearchResultItem result={result} key={result.id} />)}
            </div>
            <div className={classes.redoSearch}>
              <Link to="/main" className={classes.redoSearchLink}>Search Again</Link>
            </div>
          </div>
        </div>
      </div>
    );
  }
}

const mapState = (state) => ({
  results: Object.values(state.search.searchResults),
});

export default connect(
  mapState,
)(SearchResults);
