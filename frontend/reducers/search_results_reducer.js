import { RECEIVE_COACH_SEARCH } from '../actions/coaching_sessions_search_actions';
import { LOGOUT_CURRENT_USER } from '../actions/session_actions';

const searchResultsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_COACH_SEARCH:
      return { ...action.coaches };
    case LOGOUT_CURRENT_USER:
      return {};
    default:
      return state;
  }
};

export default searchResultsReducer;
