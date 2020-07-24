import React from 'react';
import classes from './cancel_confirm.module.css';


class CancelConfirm extends React.Component {
  handleClick() {
    const { deleteSession, session, closeModal } = this.props;
    deleteSession(session.id);
    closeModal();
  }

  extractDate(fullDateTime) {
    const month = parseInt(fullDateTime.slice(5, 7), 10);
    const day = parseInt(fullDateTime.slice(8, 10), 10);
    const months = ['nil', 'January ', 'February,', 'March', 'April', 'May ',
      'June ', 'July ', 'August ', 'September', 'October', 'November', 'December'];
    return [months[month], day];
  }

  render() {
    const { session, closeModal } = this.props;
    const date = this.extractDate(session.trainingDate);
    console.log(session);
    return (
      <div className={classes.cancelContainer}>
        <div className={classes.cancelBody}>
          <span>
            Are you sure you would like to cancel your training session
            with {session.coach.firstName} {session.coach.lastName[0]} on {date}
            ?
          </span>
          <div className={classes.cancelButtons}>
            <button type="button" onClick={() => closeModal()}>Go Back</button>
            <button type="button" onClick={() => this.handleClick()}>Cancel</button>
          </div>
        </div>
      </div>
    );
  }
}

export default CancelConfirm;
