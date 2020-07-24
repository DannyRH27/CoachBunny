import { RECEIVE_SEARCH_CRITERIA } from '../actions/coaching_sessions_search_actions';

const searchParamsReducer = (state = {}, action) => {
  Object.freeze(state);
  switch (action.type) {
    case RECEIVE_SEARCH_CRITERIA:
      return action.criteria;
    default:
      return state;
  }
};

export default searchParamsReducer;
