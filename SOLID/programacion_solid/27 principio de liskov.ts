import { IRun } from "./interface-run";
import { IWalk } from "./interface-walk";
import { IHunt } from "./interface-hunt";
export class Animal {
    run(): void {}
    walk(): void {}
    hunt(): void {}
}

/* export class Tiger extends Animal {
    run(): void {
        throw new Error("No puede correr");
    }
    walk(): void {
        throw new Error("No puede casar");
    }
    hunt(): void {
        throw new Error("Method not implemented.");
    }
} */

export class Tiger implements IRun, IWalk, IHunt {
    run(): void {
        throw new Error("No puede correr");
    }
    walk(): void {
        throw new Error("No puede casar");
    }
    hunt(): void {
        throw new Error("Method not implemented.");
    }
}

export class Turtle implements IWalk {
    walk(): void {
        throw new Error("No puede casar");
    }
}