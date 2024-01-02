### Roboto 3T

db.student.remove(
    {
        "name": "John-1"
    }
)

db.student.update(
    {
        "name": "Jhon"
    },
    {
        $set:{
            "mail": "john@gmail.com"
        }
    }
)

db.getCollection('student').find({})
db.getCollection('student').find({"name":/^Jhon/})
db.getCollection('student').find({"email":/gmail/})
db.getCollection('student').find({"subjects.subjectName":"Java"})
db.getCollection('student').find({"department.departmentName":"Computer Science"})
db.getCollection('student').find({"name":"Steve"})
db.getCollection('student').find({"name":"Peter","mail" : "peter@gmail.com"})
{
    "name":"Steve",
    "mail": "steve@gmail.com",
    "department": {
            "department_name":"Computer Science",
            "location": "INDIA"
    }
}

{
    "name":"Steve",
    "mail": "steve@gmail.com",
    "subjects": [
        {
            "subject_name":"Java",
            "marks_obtained": 70
        },
        {
            "subject_name":"MongoDB",
            "marks_obtained": 80
        }
    ]
}