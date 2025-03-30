import { PhoneNumber } from "./PhoneNumber";
import { User } from "./User";

//User -1---------*- Phones

class Police extends User {
    constructor(address: string){
        super('Police', address);
    }
    get professions(){
        return this.profession();
    }
}

function printPhones(model:User){
    for(let job of model.phones){
        console.log(job.mumber);
    }
}
let phones: Array<PhoneNumber> = [];
let phone1: PhoneNumber = new PhoneNumber(1, '991992993');
phones.push(phone1);
let phone2: PhoneNumber = new PhoneNumber(1, '994995996');
phones.push(phone2);
let police = new Police("Jr Union San Isidro");
police.phones = phones;

printPhones(police);