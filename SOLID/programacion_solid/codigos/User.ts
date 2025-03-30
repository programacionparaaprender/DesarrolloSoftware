import { Job } from "./Job";
import { PhoneNumber } from "./PhoneNumber";

export abstract class User {
    private _profession: string;
    private _address:string;
    public phones: Array<PhoneNumber> = [];
    public jobs: Array<Job> = [];
    constructor(profession: string, address:string){
        this._profession = profession;
        this._address = address;
    }

    goToWork(): void {

    }

    profession(): string{
        return this._profession;
    }

}