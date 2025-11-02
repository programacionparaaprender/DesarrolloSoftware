

https://docs.microsoft.com/en-us/dotnet/core/tools/dotnet-new?tabs=netcore22

### Templates
>- Console Application                               console                  [C#], F#, VB      Common/Console
>- Class library                                     classlib                 [C#], F#, VB      Common/Library
>- WPF Application                                   wpf                      [C#]              Common/WPF
>- WPF Class library                                 wpflib                   [C#]              Common/WPF
>- WPF Custom Control Library                        wpfcustomcontrollib      [C#]              Common/WPF
>- WPF User Control Library                          wpfusercontrollib        [C#]              Common/WPF
>- Windows Forms (WinForms) Application              winforms                 [C#]              Common/WinForms
>- Windows Forms (WinForms) Class library            winformslib              [C#]              Common/WinForms
>- Worker Service                                    worker                   [C#]              Common/Worker/Web
>- Unit Test Project                                 mstest                   [C#], F#, VB      Test/MSTest
>- NUnit 3 Test Project                              nunit                    [C#], F#, VB      Test/NUnit
>- NUnit 3 Test Item                                 nunit-test               [C#], F#, VB      Test/NUnit
>- xUnit Test Project                                xunit                    [C#], F#, VB      Test/xUnit
>- Razor Component                                   razorcomponent           [C#]              Web/ASP.NET
>- Razor Page                                        page                     [C#]              Web/ASP.NET
>- MVC ViewImports                                   viewimports              [C#]              Web/ASP.NET
>- MVC ViewStart                                     viewstart                [C#]              Web/ASP.NET
>- Blazor Server App                                 blazorserver             [C#]              Web/Blazor
>- ASP.NET Core Empty                                web                      [C#], F#          Web/Empty
>- ASP.NET Core Web App (Model-View-Controller)      mvc                      [C#], F#          Web/MVC
>- ASP.NET Core Web App                              webapp                   [C#]              Web/MVC/Razor Pages
>- ASP.NET Core with Angular                         angular                  [C#]              Web/MVC/SPA
>- ASP.NET Core with React.js                        react                    [C#]              Web/MVC/SPA
>- ASP.NET Core with React.js and Redux              reactredux               [C#]              Web/MVC/SPA
>- Razor Class Library                               razorclasslib            [C#]              Web/Razor/Library/Razor Class Library   
>- ASP.NET Core Web API                              webapi                   [C#], F#          Web/WebAPI
>- ASP.NET Core gRPC Service                         grpc                     [C#]              Web/gRPC
>- dotnet gitignore file                             gitignore                                  Config
>- global.json file                                  globaljson                                 Config
>- NuGet Config                                      nugetconfig                                Config
>- Dotnet local tool manifest file                   tool-manifest                              Config
>- Web Config                                        webconfig                                  Config
>- Solution File                                     sln                                        Solution
>- Protocol Buffer File                              proto                                      Web/gRPC

## crear proyectos con dotnet
>- dotnet new sln
>- dotnet sln add .\FBTarjeta\FBTarjeta.csproj

dotnet new webapi -o PruebaCanvia -f netcoreapp3.1

dotnet new webapp -o WebPage -f netcoreapp3.1
dotnet new mvc -o WebMvc -f netcoreapp3.1

dotnet new console -o NombreProyecto -lang vb
dotnet new winforms -o  winformsPrueba
dotnet new worker -o workerPrueba
dotnet new grpc -o grpcPrueba
dotnet new react -o React
dotnet new angular -o FBTarjeta -f netcoreapp3.1
dotnet new reactredux -o ReactRedux -f netcoreapp3.1


## crear un proyecto dotnet api
dotnet new webapi -o server


## agregar proyecto a solución
dotnet add reference .\pro\pro.csproj

### crear worker
https://wakeupandcode.com/worker-service-in-asp-net-core/