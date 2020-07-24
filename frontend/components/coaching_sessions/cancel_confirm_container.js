import { connect } from 'react-redux';
import CancelConfirm from './cancel_confirm';
import { deleteCoachingSession } from '../../actions/coaching_session_actions';
import { closeModal } from '../../actions/modal_actions';

const mapState = (state, ownProps) => ({
  session: ownProps.session,
});

const mapDispatch = (dispatch) => ({
  deleteSession: (id) => dispatch(deleteCoachingSession(id)),
  closeModal: () => dispatch(closeModal()),
});

export default connect(
  mapState, mapDispatch,
)(CancelConfirm);
