import React, { Component } from 'react';

class StudentList extends Component {
  constructor() {
    super();
    this.state = {
      studentList: null,
      studentListLoaded: false,
    }
  }

  componentDidMount() {
    fetch('/students')
      .then(res => res.json)
      .then(res => {
        console.log(res);
        this.setState({
          studentList: res.student,
          studentListLoaded: true,
        })
      }).catch(err => console.log(err));
      }

  renderStudents() {
    return this.state.studentList.map(student => {
      return (
        <div className="student" key={student.id}>
          <h2>{student.name}</h2>
          <p>{student.unit}</p>
        </div>
      )
    })
  }

  render() {
    return (
      <div className="student-list">
        {(this.state.studentListLoaded)
          ? this.renderStudents()
          : <p>Loading...</p>}
      </div>
    )
  }
}

export default StudentList;