import { connect } from 'react-redux';
import { logOut } from '../../actions/session_actions';
import Account from './account';

const mapState = (state) => ({
  currentUser: state.entities.user[state.session.currentUserId],
});

const mapDispatch = (dispatch) => ({
  logout: () => dispatch(logOut()),
});

export default connect(
  mapState, mapDispatch,
)(Account);
