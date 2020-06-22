import React, { Component } from 'react'
import axios from 'axios';

class Login extends Component {
  constructor() {
    super()
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit (event) {
    event.preventDefault();
    const url = "/auth/login";

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;
    const request = {"auth": {"email": email, "password": password}};
    axios.post(url, request)
      .then(response => {
        console.log(response.data.access_token);
        localStorage.setItem("jwt", response.data.access_token);
        this.props.history.push("/");
      })
      .catch(error => console.log('error', error));
  }      

  render() {
    return (
      <div>
        <h1>Log In</h1>
        <form onSubmit={this.handleSubmit}>
          <div className="form-group">
            <label htmlFor="email">Email: </label>
            <input name="email" id="email" type="email" className="form-control" />
          </div>
          <div className="form-group">
            <label htmlFor="password">Password:</label>
            <input name="password" id="password" type="password" className="form-control" />
          </div>
          <button type="submit" className="btn btn-dark">Submit</button>
        </form>
      </div>
    );
  }
}

export default Login;