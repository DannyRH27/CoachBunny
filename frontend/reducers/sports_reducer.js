import { RECEIVE_ALL_SPORTS } from '../actions/sport_actions';

const sportsReducer = (state = {}, action) => {
  Object.freeze(state);

  switch (action.type) {
    case RECEIVE_ALL_SPORTS:
      return action.sports;
    default:
      return state;
  }
};

export default sportsReducer;
