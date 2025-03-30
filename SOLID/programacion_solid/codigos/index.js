var Smartphone = /** @class */ (function () {
    function Smartphone(color, brand) {
        if (color === void 0) { color = ""; }
        if (brand === void 0) { brand = ""; }
        this.color = color;
        this.brand = brand;
        this._battery = 100;
    }
    Smartphone.prototype.makeAPhoneCall = function () {
        if (this._battery === 0) {
            throw "El celular no cuenta con la bateria necesaria.";
        }
        this._battery -= 10;
    };
    Object.defineProperty(Smartphone.prototype, "battery", {
        get: function () {
            return this._battery;
        },
        enumerable: false,
        configurable: true
    });
    Smartphone.prototype.recharge = function () {
        console.log('se ha recargado la bateria del celular');
        this._battery = 100;
    };
    return Smartphone;
}());
var obj = new Smartphone('White', 'Iphone');
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
