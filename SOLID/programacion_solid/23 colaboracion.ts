import { UserRepository } from "./codigos/user-repository";


let repository: UserRepository = new UserRepository();
console.log(repository.retrieve(1));