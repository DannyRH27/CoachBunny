import { withRouter } from 'react-router-dom';
import { connect } from 'react-redux';
import { createCoachingSession } from '../../actions/coaching_session_actions';
import { closeModal } from '../../actions/modal_actions';
import SearchSelectItem from './search_select_item';

const mapState = (state, ownProps) => {
  return ({
    coach: ownProps.coach,
    userId: state.session.currentUserId,
    description: state.search.searchParams.description,
  });
};

const mapDispatch = (dispatch) => ({
  submitForm: (coachingSession) => dispatch(createCoachingSession(coachingSession)),
  closeModal: () => dispatch(closeModal()),
});

export default withRouter(connect(
  mapState, mapDispatch,
)(SearchSelectItem));
