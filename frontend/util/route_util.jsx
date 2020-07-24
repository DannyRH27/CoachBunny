import React from 'react';
import { Route, Redirect, withRouter } from 'react-router-dom';
import { connect } from 'react-redux';

const Auth = ({
  component: Component, path, loggedIn, exact,
}) => (
  <Route
    path={path}
    exact={exact}
    render={(props) => (!loggedIn ? <Component {...props} /> : <Redirect to="/main" />)}
  /> // if logged in, view component rendering
);

const Protected = ({
  component: Component, path, loggedIn, exact,
}) => {
  return (
  <Route
      path={path}
      exact={exact}
      render={(props) => (loggedIn ? (<Component {...props} />) : (<Redirect to="/" />))}
    /> // has to be logged in to view, else redirect
  );
};

const mapStateToProps = (state) => ({
  loggedIn: Boolean(state.session.currentUserId),
});

export const AuthRoute = withRouter(connect(
  mapStateToProps, null,
)(Auth));

export const ProtectedRoute = withRouter(connect(
  mapStateToProps,
)(Protected));
