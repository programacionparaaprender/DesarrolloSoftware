import { User } from "./User";
import { IUserExtraInformation } from "./IUserExtraInformation";

export class Police extends User implements IUserExtraInformation {
    phoneNumber: string;
    constructor(phoneNumber: string, profession:string = 'Police', address:string = "Jr Unión San Isidro"){
        super(profession, address);
        this.phoneNumber = phoneNumber;
    }
    get professions(){
        return this.profession();
    }
}
