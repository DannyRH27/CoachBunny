import {
  RECEIVE_COACHING_SESSIONS,
  DELETE_COACHING_SESSION,
} from '../actions/coaching_session_actions';
import { LOGOUT_CURRENT_USER } from '../actions/session_actions';

const coachingSessionReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_COACHING_SESSIONS:
      return Object.assign({}, action.coachingSessions);
    case DELETE_COACHING_SESSION:
      let nextState = Object.assign({}, state);
      delete nextState[action.id];
      return nextState;
    case LOGOUT_CURRENT_USER:
      return {};
    default:
      return state;
  }
};

export default coachingSessionReducer;
