# Weather Tracking API

## Descrição

A Weather Tracking API é uma aplicação ASP.NET Core que fornece informações sobre mudanças climáticas em diferentes regiões. A API permite autenticação e cadastro de usuários, notificação de mudanças climáticas via push notifications, e inclui um sistema de alertas reforçados para condições climáticas severas.

## Tecnologias Utilizadas

- **.NET 8**
- **Entity Framework Core**
- **SQL Server**
- **Hangfire** (para tarefas em background)
- **Swagger** (para documentação da API)
- **Autenticação JWT**
- **Docker**

## Funcionalidades

- Autenticação e autorização com JWT
- Cadastro de usuários
- Notificações de mudanças climáticas
- Sistema de alertas reforçados para mudanças climáticas severas
- Simulação de mudanças climáticas via API
- Tarefas em background usando Hangfire
- Documentação da API com Swagger

## Estrutura do Projeto
```
WeatherTrackingAPI/
│
├── Controllers/
│ ├── AuthController.cs
│ ├── WeatherController.cs
│
├── Data/
│ ├── WeatherContext.cs
│
├── Middlewares/
│ ├── CustomAuthenticationMiddleware.cs
│
├── Models/
│ ├── User.cs
│ ├── WeatherChange.cs
│
├── obj/
│ ├── Debug /
│ ├── project.assets.json
│ ├── WeatherTrackingAPI.csproj.nuget.dgspec.json
│
├── Properties/
│ ├── launchSettings.json
│
├── Services/
│ ├── WeatherNotificationService.cs
│
├── appsettings.Development.json
├── appsettings.json
├── docker-compose.yml
├── Dockerfile
├── LICENSE
├── Program.cs
├── README.md
├── WeatherTrackingAPI.csproj
└── WeatherTrackingAPI.sln
```


## Deploy