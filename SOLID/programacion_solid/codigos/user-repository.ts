import { Police } from "./Police";
import { MUser } from "./MUser";

export class UserRepository {
    private users: Array<MUser> = [
        new MUser(1, "Eduardo", "Software Developer"),
        new MUser(2, "Jose", "Police")
    ];
    retrieve(userId: number):MUser{
        return this.users.find(x=>x.userId == userId) as MUser;
    }
    add(user: MUser):void{
        this.users.push(user);
    }
}

let repository: UserRepository = new UserRepository();
console.log(repository.retrieve(1));