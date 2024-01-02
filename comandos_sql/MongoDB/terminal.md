
### usar terminal
>- mongod.exe solo una vez
>- mongosh.exe
>- use spring
>- db.getCollection('student').find({})
[
  {
    _id: ObjectId("64f9f69290bf5e09cc154cf0"),
    name: 'Jhon',
    mail: 'john@gmail.com'
  },
  {
    _id: ObjectId("64f9f7e590bf5e09cc154d17"),
    name: 'Peter',
    mail: 'peter@gmail.com',
    department: { department_name: 'Computer Science', location: 'INDIA' }
  },
  {
    _id: ObjectId("64f9fd0e90bf5e09cc154db6"),
    name: 'Steve',
    mail: 'steve@gmail.com',
    subjects: [
      { subject_name: 'Java', marks_obtained: 70 },
      { subject_name: 'MongoDB', marks_obtained: 80 }
    ]
  }
]