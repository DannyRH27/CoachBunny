import { connect } from 'react-redux';
import NavigationBar from './nav_bar';
import { logOut } from '../../actions/session_actions';

const mapState = (state) => ({
  currentUser: state.entities.user[state.session.currentUserId],
});

const mapDispatch = (dispatch) => ({
  logout: () => dispatch(logOut()),
});

export default connect(
  mapState, mapDispatch,
)(NavigationBar);
