

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

class Android extends Smartphone {
    constructor(color: string){
        super(color, 'Android');
    }
}

class IPhone extends Smartphone {
    constructor(color: string){
        super(color, 'Android');
    }
}

let android = new Android('Red');
let iphone = new IPhone('White');


android.makeAPhoneCall();
iphone.makeAPhoneCall();

android.recharge();
iphone.recharge();
