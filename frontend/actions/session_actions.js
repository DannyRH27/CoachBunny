import { signup, login, logout } from '../util/session_api_util';

export const RECEIVE_CURRENT_USER = 'RECEIVE_CURRENT_USER';
export const LOGOUT_CURRENT_USER = 'LOGOUT_CURRENT_USER';
export const RECEIVE_SESSION_ERRORS = 'RECEIVE_SESSION_ERRORS';

export const receiveCurrentUser = (currentUser) => ({
  type: RECEIVE_CURRENT_USER,
  currentUser,
});

export const logoutCurrentUser = () => ({
  type: LOGOUT_CURRENT_USER,
});

export const receiveErrors = (errors) => ({
  type: RECEIVE_SESSION_ERRORS,
  errors,
});

export const logIn = (user) => (dispatch) => login(user)
  .then((currentuser) => dispatch(receiveCurrentUser(currentuser)),
    (errors) => dispatch(receiveErrors(errors.responseJSON)));

export const logOut = () => (dispatch) => logout()
  .then(() => dispatch(logoutCurrentUser()));

export const signUp = (user) => (dispatch) => signup(user)
  .then((currentuser) => dispatch(receiveCurrentUser(currentuser)),
    (errors) => dispatch(receiveErrors(errors.responseJSON)));
