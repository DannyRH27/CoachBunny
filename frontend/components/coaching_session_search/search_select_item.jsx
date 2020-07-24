import React from 'react';
import { Link } from 'react-router-dom';
import classes from './search_select_item.module.css';

function currentDate() {
  const now = new Date();
  let month = now.toLocaleDateString().split('/')[0];
  let day = now.toLocaleDateString().split('/')[1];
  const year = now.toLocaleDateString().split('/')[2];
  (parseInt(month) < 10) ? month = `0${month}` : month;
  (parseInt(day) < 10) ? day = `0${day}` : day;
  return `${year}-${month}-${day}`;
}

// function currentTime() {
//   const now = new Date();
//   let hour = now.toTimeString().split(":")[0];
//   let minute = now.toTimeString().split(":")[1];
//   (parseInt(hour) < 10) ? hour = `0${hour}` : hour;
//   (parseInt(minute) < 10) ? minute = `0${minute}` : minute;
//   return `${hour}:${minute}`;
// }

class SearchSelectItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      trainingDate: '',
      trainingTime: '',
      trainingDescription: this.props.description,
      errors: '',
    };

    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const { trainingDate, trainingTime, trainingDescription } = this.state;
    if (trainingDate === '' || trainingTime === '') {
      this.setState({ errors: 'Must select a date and time' });
    } else {
      const {
        submitForm, closeModal, coach, userId,
      } = this.props;

      const finalSessionDetails = {
        sportId: coach.sportId,
        coachId: coach.id,
        trainingDuration: coach.duration,
        trainingRate: coach.coachingRate,
        userId,
        trainingDate: new Date(`${trainingDate} ${trainingTime}`),
        trainingDescription,
      };
      debugger;
      submitForm(finalSessionDetails);
      closeModal();
      location.href = '/#/main/mysessions';
    }
  }

  update(field) {
    return (e) => this.setState({ [field]: e.currentTarget.value });
  }

  updateTime(time) {
    this.setState({ trainingTime: time });
  }

  render() {
    const {
      firstName, lastName, coachingRate, duration, eliteCoach, equipment,
    } = this.props.coach;
    const { errors, trainingDate, trainingTime, trainingDescription } = this.state;
    return (
      <div className={classes.selectMainContainer}>
        <div className={classes.selectCoachContainer}>
          <div className={classes.textLogo}>
            <Link to="/main">
              <img className={classes.imgResponsive} src={window.textLogo} alt="logo" />
            </Link>
          </div>
          <form onSubmit={this.handleSubmit} className={classes.mainSelect}>
            <div className={classes.coachConfirmDetails}>
              <div className={classes.coachProfile}>
                <img src="https://res.cloudinary.com/taskrabbit-com/image/upload/c_fill,g_faces,h_108,w_108/v1408385393/default_avatar.jpg" alt="profile" />
              </div>
              <div className={classes.coachName}>
                {firstName}
                {' '}
                {lastName[0]}
              </div>
              {(!eliteCoach ? null : <div className={classes.coachElite}>Elite</div>)}
              {(!equipment ? null : <div className={classes.coachElite}>Has Equipment</div>)}
              <div>
                Price: $
                {coachingRate}
                /session
              </div>
              <div>
                Duration:
                {' '}
                {duration}
                mins
              </div>
            </div>
            <div className={classes.trainingTime}>
              <span>Ideal training date:</span>
              <input type="date" min={currentDate()} value={trainingDate} onChange={this.update('trainingDate')} />
              <span>Ideal training time:</span>
              <select value={trainingTime} onChange={(e) => this.updateTime(e.target.value)}>
                <option value="08:00">8:00 am</option>
                <option value="08:30">8:30 am</option>
                <option value="09:00">9:00 am</option>
                <option value="09:30">9:30 am</option>
                <option value="10:00">10:00 am</option>
                <option value="10:30">10:30 am</option>
                <option value="11:00">11:00 am</option>
                <option value="11:30">11:30 am</option>
                <option value="12:00">12:00 pm</option>
                <option value="12:30">12:30 pm</option>
                <option value="13:00">1:00 pm</option>
                <option value="13:30">1:30 pm</option>
                <option value="14:00">2:00 pm</option>
                <option value="14:30">2:30 pm</option>
                <option value="15:00">3:00 pm</option>
                <option value="15:30">3:30 pm</option>
                <option value="16:00">4:00 pm</option>
                <option value="16:30">4:30 pm</option>
                <option value="17:00">5:00 pm</option>
                <option value="17:30">5:30 pm</option>
                <option value="18:00">6:00 pm</option>
                <option value="18:30">6:30 pm</option>
              </select>
            </div>

            <div className={classes.trainingDescription}>
              <span>Confirm training details:</span>
              <br />
              <textarea
                value={trainingDescription}
                onChange={this.update('trainingDescription')}
                className={classes.trainingDescriptionText}
              />
            </div>
            <div className={classes.errors}>{errors}</div>
            <button type="submit"> Reserve this Coach </button>
          </form>
        </div>
      </div>
    );
  }
}

export default SearchSelectItem;
