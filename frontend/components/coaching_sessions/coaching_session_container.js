import { connect } from 'react-redux';
import CoachingSessionItem from './coaching_session_item';
import { editCoachingSession } from '../../actions/coaching_session_actions';
import { openModal } from '../../actions/modal_actions';

const mapState = (state, ownProps) => {
  return ({
    session: ownProps.session,
    time: ownProps.time,
  });
};

const mapDispatch = (dispatch) => ({
  openModal: (modal) => dispatch(openModal(modal)),
  editSession: (coachingSessionId) => dispatch(editCoachingSession(coachingSessionId)),
});

export default connect(
  mapState, mapDispatch,
)(CoachingSessionItem);
