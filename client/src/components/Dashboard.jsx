import React, { Component } from 'react';

import Auth from '../modules/Auth';
import AddStudentForm from './AddStudentForm';

class Dashboard extends Component {
  constructor() {
    super();
    this.state = {
      myStudents: null,
      studentsLoaded: false,
    }
  }

  componentDidMount() {
    this.getUserStudents();
  }

  getUserStudents() {
    fetch('/profile', {
      method: 'GET',
      headers: {
        token: Auth.getToken(),
        'Authorization': `Token ${Auth.getToken()}`,
      }
    }).then(res => res.json())
      .then(res => {
        this.setState({
          myStudents: res.students,
          studentsLoaded: true,
        })
      }).catch(err => console.log(err));
  }

  addStudent(e, data) {
    fetch('/students', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        token: Auth.getToken(),
        'Authorization': `Token ${Auth.getToken()}`,
      },
      body: JSON.stringify({
        student: data,
      }),
    }).then(res => res.json())
      .then(res => {
        console.log(res);
        this.getUserStudents();
      }).catch(err => console.log(err));
  }

  render() {
    return (
      <div className="dash">
        <AddStudentForm addStudent={this.addStudent} />
        {(this.state.studentsLoaded)
          ? this.state.myStudents.map(student => {
            return <h1 key={student.id}>{student.name}</h1>
          })
          : <p>Loading...</p>}
      </div>
    )
  }
}

export default Dashboard;