import { MailService } from "./codigos/mail-service";
import { Message } from "./codigos/message";
import { Order } from "./codigos/order";

export class OrderService {
    constructor(private readonly _mailService: MailService){

    }
    add(order: Order){
        // 01. Código para crear la orden

        //02. Notificar al cliente
        var message = new Message();
        message.to = "customer@email.com";
        message.from = "admin@kotori.com";
        message.body = "Se le asignó un curso";
        message.body = "Estimado, su orden ...";
        this._mailService.send(message);
    }
}