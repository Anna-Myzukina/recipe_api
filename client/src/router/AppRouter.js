import React from 'react';
import {BrowserRouter,Route,Switch} from 'react-router-dom';
import NavHeader from '../components/Header';
import Home from '../components/Home';
import Login from '../components/auth/Login';
import SignUp from '../components/auth/SignUp';

const AppRouter = () => (
    <BrowserRouter>
    <div>
        <NavHeader/>
        <Switch>
            <Route path='/' component={Home} exact={true} />
            <Route path='/login' component={Login} exact={true}/>
            <Route path='/signup' component={SignUp} extract={true}/>
        </Switch>
    </div>
    </BrowserRouter>
);
export default AppRouter;