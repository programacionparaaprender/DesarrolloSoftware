import { IUser } from "./IUser";
import { IUserExtraInformation } from "./IUserExtraInformation";



class Doctor implements IUser, IUserExtraInformation {
    profession: string;
    phoneNumber: string;
    constructor(phoneNumber: string){
        this.profession = 'Doctor';
        this.phoneNumber = phoneNumber;
    }
    goToWork(): void {
        throw new Error("Method not implemented.");
    }
}

class Police implements IUser, IUserExtraInformation {
    profession: string;
    phoneNumber: string;
    constructor(phoneNumber: string){
        this.profession = 'Police';
        this.phoneNumber = phoneNumber;
    }
    goToWork(): void {
        throw new Error("Method not implemented.");
    }
}

function printProfession(model:IUser){
    console.log(model.profession);
}


let doctor = new Doctor("991992993");
let police = new Police("994995996");
printProfession(doctor);
printProfession(police);