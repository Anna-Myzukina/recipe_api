import React from 'react';
import { NavLink as RRNavLink } from 'react-router-dom';
import { NavLink } from 'reactstrap';
import {
  Collapse,
  Navbar,
  NavbarToggler,
  NavbarBrand,
  Nav
  } from 'reactstrap';

export default class Example extends React.Component {
  constructor(props) {
    super(props);

    this.toggle = this.toggle.bind(this);
    this.state = {
      isOpen: false
    };
  }
  toggle() {
    this.setState({
      isOpen: !this.state.isOpen
    });
  }
  render() {
    return (
      <div>
        <Navbar  light expand="md" className='thenav'>
          <NavbarBrand href="/"><div className ='logoContainer'>
            </div>
          </NavbarBrand>
          <NavbarToggler onClick={this.toggle} />
          <Collapse isOpen={this.state.isOpen} navbar>
            <Nav className="ml-auto" navbar>
               <NavLink tag={RRNavLink} exact to='/'  activeClassName='is-active'>Home</NavLink>
               <NavLink tag={RRNavLink} exact to='/login'  activeClassName='is-active'>Log in</NavLink>
               <NavLink tag={RRNavLink} exact to='/logout'  activeClassName='is-active'>Log out</NavLink>
               <NavLink tag={RRNavLink} exact to='/signup'  activeClassName='is-active'>Sign up</NavLink>
            </Nav>
          </Collapse>
        </Navbar>
      </div>
    );
  }
}