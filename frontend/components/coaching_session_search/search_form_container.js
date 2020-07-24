import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import SearchForm from './search_form';
import { fetchCoachSearch } from '../../actions/coaching_sessions_search_actions';
import { receiveSports } from '../../actions/sport_actions';

const mapState = (state, ownProps) => {
  return (
    {
      selectedSport: state.entities.sports[ownProps.match.params.id],
      currentUserId: state.session.currentUserId,
    }
  );
};

const mapDispatch = (dispatch) => ({
  submitSearch: ({ sportId, duration, description }) => dispatch(fetchCoachSearch({ sportId, duration, description })),
  getSports: () => dispatch(receiveSports()),
});

export default withRouter(connect(
  mapState, mapDispatch,
)(SearchForm));
