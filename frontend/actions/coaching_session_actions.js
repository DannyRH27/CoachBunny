import * as APIUtil from '../util/coaching_session_api_util';

export const RECEIVE_COACHING_SESSIONS = 'RECEIVE_COACHING_SESSIONS';
export const DELETE_COACHING_SESSION = 'DELETE_COACHING_SESSION';

export const receiveCoachingSessions = (coachingSessions) => ({
  type: RECEIVE_COACHING_SESSIONS,
  coachingSessions,
});

export const removeCoachingSession = (id) => ({
  type: DELETE_COACHING_SESSION,
  id,
});

export const fetchCoachingSessions = () => (dispatch) => APIUtil.fetchCoachingSessions()
  .then((sessions) => dispatch(receiveCoachingSessions(sessions)));

export const editCoachingSession = (coachingSession) => (dispatch) =>
  APIUtil.updateCoachingSession(coachingSession)
    .then((sessions) => dispatch(receiveCoachingSessions(sessions)));

export const deleteCoachingSession = (id) => (dispatch) => APIUtil.deleteCoachingSession(id)
  .then(() => dispatch(removeCoachingSession(id)));

export const createCoachingSession = (coachingSession) => (dispatch) =>
  APIUtil.createCoachingSession(coachingSession)
    .then((session) => dispatch(receiveCoachingSessions(session)));
