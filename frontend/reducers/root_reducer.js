import { combineReducers } from 'redux';
import sessionReducer from './session_reducer';
import entitiesReducer from './entities_reducer';
import errorsReducer from './errors_reducer';
import coachingSessionReducer from './coaching_session_reducer';
import searchReducer from './search_reducer';
import uiReducer from './ui_reducer';

const rootReducer = combineReducers({
  session: sessionReducer,
  entities: entitiesReducer,
  errors: errorsReducer,
  coachingSessions: coachingSessionReducer,
  search: searchReducer,
  ui: uiReducer,
});

export default rootReducer;
