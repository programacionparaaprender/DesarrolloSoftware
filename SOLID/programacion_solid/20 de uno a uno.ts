import { User } from "./User";
import { IUserExtraInformation } from "./IUserExtraInformation";

//User -1---------1- Address

class Police extends User implements IUserExtraInformation {
    phoneNumber: string;
    constructor(phoneNumber: string, address: string){
        super('Police', address);
        this.phoneNumber = phoneNumber;
    }
    get professions(){
        return this.profession();
    }
}

function printProfession(model:User){
    console.log(model.profession());
}

let police = new Police("994995996", "Jr Union San Isidro");
printProfession(police);