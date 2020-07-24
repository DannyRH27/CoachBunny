import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import sportsReducer from './sports_reducer';

const entitiesReducer = combineReducers({
  user: usersReducer,
  sports: sportsReducer,
});

export default entitiesReducer;
