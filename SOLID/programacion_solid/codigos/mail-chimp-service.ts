import { Message } from "./message";
import { SmtpClient } from "./smtp-client";


export class MailChimpService {
    constructor(private readonly _smptClient:SmtpClient){

    }
    send(message: Message){
        this._smptClient.send(message);
    }
}