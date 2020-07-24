import { connect } from 'react-redux';
import { signUp } from '../../../actions/session_actions';
import SignupForm from './signup_form';


const mapState = (state) => ({
  errors: state.errors.sessionErrors,
});

const mapDispatch = (dispatch) => ({
  submitForm: (user) => dispatch(signUp(user)),
});

export default connect(
  mapState, mapDispatch,
)(SignupForm);
