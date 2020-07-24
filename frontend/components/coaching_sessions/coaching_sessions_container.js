import { connect } from 'react-redux';
import CoachingSessions from './coaching_sessions';
import {
  editCoachingSession,
  deleteCoachingSession,
} from '../../actions/coaching_session_actions';

const mapState = (state) => {
  return {
    coachingSessions: Object.values(state.coachingSessions),
  };
};

const mapDispatch = (dispatch) => ({
  deleteSession: (id) => dispatch(deleteCoachingSession(id)),
  editSession: (coachingSessionId) => dispatch(editCoachingSession(coachingSessionId)),
});

export default connect(
  mapState, mapDispatch,
)(CoachingSessions);
