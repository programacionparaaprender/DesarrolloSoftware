import { User } from "./codigos/User";
import { IUserExtraInformation } from "./codigos/IUserExtraInformation";

class Doctor extends User implements IUserExtraInformation {
    phoneNumber: string;
    constructor(phoneNumber: string){
        super('Doctor', "Jr Unión San Isidro");
        this.phoneNumber = phoneNumber;
    }
    get professions(){
        return this.profession();
    }
}

class Police extends User implements IUserExtraInformation {
    phoneNumber: string;
    constructor(phoneNumber: string){
        super('Police', "Jr Unión San Isidro");
        this.phoneNumber = phoneNumber;
    }
    get professions(){
        return this.profession();
    }
}

function printProfession(model:User){
    console.log(model.profession());
}


let doctor = new Doctor("991992993");
let police = new Police("994995996");
printProfession(doctor);
printProfession(police);