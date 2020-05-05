import { combineReducers } from 'redux';
import usersReducer from './users_reducer';
import sportsReducer from './sports_reducer';
import searchReducer from './search_reducer';

const entitiesReducer = combineReducers({
  user: usersReducer,
  sports: sportsReducer,
  searchResults: searchReducer,
});

export default entitiesReducer;
