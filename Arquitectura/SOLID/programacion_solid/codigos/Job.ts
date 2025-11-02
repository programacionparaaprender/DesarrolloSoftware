import { User } from "./User";

export class Job {
    public users: Array<User> = [];
    constructor(
        public jobId: number,
        public name: string
    ){
        
    }
}