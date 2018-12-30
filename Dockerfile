FROM microsoft/dotnet:2.1-sdk
WORKDIR /ItworxSample.Web

# copy csproj and restore as distinct layers
COPY /ItworxSample/ItworxSample.Web/*.csproj .
RUN dotnet restore

# copy and build everything else
WORKDIR /ItworxSample/ItworxSample.Web/
COPY /ItworxSample/ItworxSample.Web/ .
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "out/Hello.dll"]
