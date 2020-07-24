import * as SearchAPIUtil from '../util/coaching_sessions_search';

export const RECEIVE_COACH_SEARCH = 'RECEIVE_COACH_SEARCH';
export const RECEIVE_SEARCH_CRITERIA = 'RECEIVE_SEARCH_CRITERIA';

const receiveCoachSearch = (coaches) => ({
  type: RECEIVE_COACH_SEARCH,
  coaches,
});

const receiveSearchCriteria = (criteria) => ({
  type: RECEIVE_SEARCH_CRITERIA,
  criteria,
});

export const fetchCoachSearch = ({ sportId, duration, description }) => (dispatch) => {
  return (SearchAPIUtil.coachingSessionSearch({ sportId, duration })
    .then((coaches) => {
      dispatch(receiveCoachSearch(coaches));
      dispatch(receiveSearchCriteria({ sportId, duration, description }));
    })
  );
};
