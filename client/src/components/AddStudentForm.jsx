import React, { Component } from 'react';

//import Auth from '../modules/Auth';

class AddStudentForm extends Component {
  constructor() {
    super();
    this.state = {
      name: '',
      description: '',
    }
    this.handleChange = this.handleChange.bind(this);
  }

  handleChange(e) {
    const name = e.target.name;
    const val = e.target.value;
    this.setState({
      [name]: val,
    });
  }

  render() {
    return (
      <div className="form">
        <form onSubmit={(e) => this.props.addStudent(e, this.state)} >
          <input type="text" name="studentname" placeholder="student name" value={this.state.studentname} onChange={this.handleChange} />
          <input type="text" name="unit" placeholder="unit" value={this.state.unit} onChange={this.handleChange} />
          <input type="submit" value="Add Student" />
        </form>
      </div>
    )
  }
}

export default AddStudentForm;