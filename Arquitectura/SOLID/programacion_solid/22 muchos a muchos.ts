import { Job } from "./codigos/Job";
import { PhoneNumber } from "./codigos/PhoneNumber";
import { User } from "./codigos/User";

//User -1---------*- Phones

class Police extends User {
    constructor(address: string){
        super('Police', address);
    }
    get professions(){
        return this.profession();
    }
}

function printJobs(model:User){
    for(let job of model.jobs){
        console.log(job.name);
    }
}
let jobs: Array<Job> = [];
let job1: Job = new Job(1, 'FullStack Developer');
jobs.push(job1);
let job2: Job = new Job(2, 'Phone Developer');
jobs.push(job2);
let police = new Police("Jr Union San Isidro");
police.jobs = jobs;

printJobs(police);