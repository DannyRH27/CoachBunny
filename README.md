# README

CoachBunny is a web application inspired by a passion of sports combined with the functionality and design of TaskRabbit. The main goal is to connect motivatd future athletes with experienced coaches who have the ability to bring out the dog in them. 

[Visit the live site here](https://coachbunny.herokuapp.com)

![Screen Shot 2020-05-08 at 10 58 01](https://user-images.githubusercontent.com/58828330/81434338-d9f34f00-911a-11ea-8b80-9d473d014bc6.png)

### Setup

* git clone the repo: https://github.com/jamesjiang13/CoachBunny 
* `bundle install`
* `npm install`
* `bundle exec rails db:setup`
* `npm run webpack`
* `rails server`
* open localhost:3000 in your browser

### Technologies Used
CoachBunny is a Single Page Application built using ReactJS on the front end with Ruby-on-Rails as a backend and a PostgreSQL database. Database queries are done using a combination of Rails ActiveRecord relations and jQuery AJAX methods. Front-end rendering is done via JSX

### Features / Functionality
Upon login, a user will have access to search a database of coaches in their sport of interest (currently just seed data). This is currently implemented via a back-end filter on the database which only renders coaches that fullfil the users search params. 

``` ruby
def index
  found_sport = Sport.find_by(id: params[:sport_id])
  duration_beginning = params[:duration].split("-")[0]
  duration_ending = params[:duration].split("-")[1]
  @coaches = found_sport.coach_details
    .where("duration BETWEEN #{duration_beginning} AND #{duration_ending}")
  render :index
end
```

Once a user has the list of available coaches, the user can select which coach to train with. This pulls up a confirmation page where the user needs to enter the training date and time. Since this field is a required param to create a new coaching session, I had to implement front-end error-handling to ensure that the field is provided. The rest of the required params are pulled from the coach's local state, and once the coaching session is successfully created, the user is redirected to their mysessions page where they can view all the scheduled training sessions.

``` javascript
handleSubmit(e) {
  e.preventDefault();
  const { trainingDate } = this.state;
  if (trainingDate === '') {
    this.setState({ errors: 'Must select a time' });
  } else {
    const { submitForm } = this.props;
    submitForm(this.state);
    location.href = '/#/main/mysessions';
  }
}
```

### Further Implementations:
#### The ability to sign up as a coach
* The coach would then be able to view requested training sessions and either confirm or reject. Ideally, the status would also send a confirm/reject message to the original requester. 

#### Leaving reviews for past coaching sessions
* The backend is currently built out to include reviews, but there are still a few more steps in order for a User to leave a review for previous coaching sessions. 

#### The ability to sort through coaches by geography. 
* The database currently stores both the users and coaches respective zip codes so it would be nice to include a filter by proximity. 