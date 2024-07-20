# Usar a imagem base do .NET 8 SDK para construir o aplicativo
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /src
COPY ["WeatherTrackingAPI.csproj", "./"]
RUN dotnet restore "WeatherTrackingAPI.csproj"
COPY . .
WORKDIR "/src/."
RUN dotnet build "WeatherTrackingAPI.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "WeatherTrackingAPI.csproj" -c Release -o /app/publish

# Usar a imagem base do .NET 8 ASP.NET Core Runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS base
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "WeatherTrackingAPI.dll"]
