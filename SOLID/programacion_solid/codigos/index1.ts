

class Smartphone {
    private color: string;
    private brand: string;
    private _battery: number;
    constructor(color: string="", brand: string=""){
        this.color = color;
        this.brand = brand;
        this._battery = 100;
    }

    makeAPhoneCall():void {
        if(this._battery === 0){
            throw "El celular no cuenta con la bateria necesaria.";
        }
        this._battery -= 10;
    }

    get battery(): number{
        return this._battery;
    }
    
    recharge(){
        console.log('se ha recargado la bateria del celular');
        this._battery = 100;
    }
}

let obj = new Smartphone('White', 'Iphone');
obj.makeAPhoneCall();
obj.makeAPhoneCall();
obj.makeAPhoneCall();
obj.makeAPhoneCall();
obj.makeAPhoneCall();
obj.makeAPhoneCall();
obj.makeAPhoneCall();
obj.makeAPhoneCall();
obj.makeAPhoneCall();
obj.makeAPhoneCall();
obj.makeAPhoneCall();

//obj.color = 'Red';
//obj.brand = 'Android';
console.log(obj.battery);