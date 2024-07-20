# WeatherTrackingAPI

## Descrição

WeatherTrackingAPI é uma API desenvolvida em .NET Core para rastreamento de condições climáticas. Ela fornece atualizações sobre mudanças climáticas nas regiões dos usuários via notificações push e inclui um sistema de autenticação completo. A API também permite a simulação de mudanças climáticas para fins de teste.

## Tecnologias Utilizadas

- **.NET Core**: Framework principal para desenvolvimento da API.
- **Swagger**: Geração de documentação interativa para a API.
- **JWT (JSON Web Token)**: Utilizado para autenticação de rotas.
- **Hangfire**: Biblioteca para gerenciamento de tarefas em background (cron jobs).
- **Entity Framework Core**: ORM para acesso a dados (opcional).

## Funcionalidades

1. **Autenticação e Cadastro**: 
   - Registro de novos usuários.
   - Autenticação de usuários existentes e emissão de tokens JWT.

2. **Tracking do Clima**:
   - Envio de notificações push sobre mudanças climáticas.
   - Reenvio de notificações em intervalos progressivamente menores até 10 tentativas, caso a notificação não seja visualizada.

3. **Simulação de Mudanças Climáticas**:
   - Endpoints para simular mudanças climáticas e enviar notificações para os usuários.

## Estrutura do Projeto
