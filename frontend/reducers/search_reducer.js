import { combineReducers } from 'redux';
import searchResultsReducer from './search_results_reducer';
import searchParamsReducer from './search_params_reducer';

const searchReducer = combineReducers({
  searchResults: searchResultsReducer,
  searchParams: searchParamsReducer,
});

export default searchReducer;
