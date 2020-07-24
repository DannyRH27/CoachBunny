import React from 'react';
import { Switch } from 'react-router-dom';
import { AuthRoute, ProtectedRoute } from '../util/route_util';

import LoginFormContainer from './session_form/login_form/login_form_container';
import SignupFormContainer from './session_form/signup_form/signup_form_container';
import Main from './main';
import Splash from './splash/splash';
import EntryPage from './session_form/entry_page';
import CoachingSessionSearchContainer from './coaching_session_search/search_form_container';
import SearchResultsContainer from './coaching_session_search/search_results';
import SearchSelectItemContainer from './coaching_session_search/search_select_item_container';
import Modal from './modal/modal';

const App = () => (
  <div id="app">
    <Modal />
    <Switch>
      <AuthRoute exact path="/login" component={LoginFormContainer} />
      <AuthRoute exact path="/signup" component={SignupFormContainer} />
      <AuthRoute exact path="/entrypage" component={EntryPage} />
      <ProtectedRoute path="/main" component={Main} />
      <ProtectedRoute path="/results/select" component={SearchSelectItemContainer} />
      <ProtectedRoute path="/results" component={SearchResultsContainer} />
      <ProtectedRoute exact path="/sports/:id" component={CoachingSessionSearchContainer} />
      <AuthRoute path="/" component={Splash} />
    </Switch>
  </div>
);

export default App;
