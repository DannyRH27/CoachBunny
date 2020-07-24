import React from 'react';
import classes from './coaching_sessions.module.css';

function extractDate(fullDateTime) {
  const month = parseInt(fullDateTime.slice(5, 7), 10);
  const day = parseInt(fullDateTime.slice(8, 10), 10);
  const months = ['nil', 'Jan', 'Feb', 'Mar', 'Apr', 'May',
    'June', 'July', 'Aug', 'Sept', 'Oct', 'Nov', 'Dec'];
  return [months[month], day];
}

function extractTime(fullDateTime) {
  const timeObj = new Date(fullDateTime);
  const hr = timeObj.toLocaleTimeString().split(':')[0];
  const min = timeObj.toLocaleTimeString().split(':')[1];
  const suffix = timeObj.toLocaleTimeString().split(' ')[1];
  return `${hr}:${min} ${suffix}`;
}

class CoachingSessionItem extends React.Component {
  constructor(props) {
    super(props);
    this.handleClick = this.handleClick.bind(this);
  }

  handleClick(e) {
    e.preventDefault();
    const { session, openModal } = this.props;
    const type = e.target.value;
    openModal({ [type]: session });
  }

  render() {
    const { session, time } = this.props;

    return (
      <div className={classes.coachingSessions}>
        <ul className={classes.dateTime}>
          <li key={`${session.id}month`} className={classes.trainingMonth}>
            {extractDate(session.trainingDate)[0]}
            {' '}
            {extractDate(session.trainingDate)[1]}
          </li>
          <li key={`${session.id}time`} className={classes.trainingTime}>
            {extractTime(session.trainingDate)}
          </li>
        </ul>
        <ul>
          <li key={`${session.id}sport`}>
            Sport:
            {' '}
            {session.coach.sport}
          </li>
          <li key={`${session.id}name`}>
            Coach:
            {' '}
            {session.coach.firstName}
            {' '}
            {session.coach.lastName[0]}
          </li>
          <li key={`${session.id}dur`}>
            Duration:
            {' '}
            {session.trainingDuration}
            {' '}
            minutes
          </li>
          <li key={`${session.id}cost`}>
            Cost: $
            {session.trainingRate}
          </li>
          <li key={`${session.id}desc`}>
            Description:
            {' '}
            {session.trainingDescription}
          </li>
          {(time === 'upcoming')
            ? (
              <div className={classes.scheduleButtons}>
                <button type="button" value="edit" onClick={this.handleClick}>Edit</button>
                <button type="button" value="cancel" onClick={this.handleClick}>Cancel</button>
              </div>
            )
            : <button type="button">Add review (soon)</button>}
        </ul>
      </div>
    );
  }
}

export default CoachingSessionItem;
