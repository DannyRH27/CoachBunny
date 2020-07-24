import { allSports } from '../util/sport_api_util';

export const RECEIVE_ALL_SPORTS = 'RECEIVE_ALL_SPORTS';

const receiveAllSports = (sports) => ({
  type: RECEIVE_ALL_SPORTS,
  sports,
});

export const receiveSports = () => (dispatch) => (allSports())
  .then((sports) => dispatch(receiveAllSports(sports)));
