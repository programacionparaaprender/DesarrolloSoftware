import { INotification } from "./interface-notificacion";

export class NotificationService {
    send(notifications: Array<INotification>){
        notifications.forEach(notification => {
            notification.notify();
        });
    }
}