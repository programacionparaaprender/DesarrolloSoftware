import { UserRemovableRepository } from "./codigos/user-removable-repository";
import { UserReportRepository } from "./codigos/user-report-repository";
import { UserWriterRepository } from "./codigos/user-writer-repository";
import { UsersRepository } from "./codigos/users-repository";


let repository: UsersRepository = new UsersRepository();

let repositoryReport:UserReportRepository = new UserReportRepository();

let repositoryWriter: UserWriterRepository = new UserWriterRepository();

let repositoryRemovable: UserRemovableRepository = new UserRemovableRepository();