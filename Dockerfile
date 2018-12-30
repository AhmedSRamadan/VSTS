FROM microsoft/dotnet:2.1-sdk
WORKDIR /ItworxSample.Web

# copy csproj and restore as distinct layers
COPY /ItworxSample.Web/*.csproj ./
RUN dotnet restore

# copy and build everything else
COPY /ItworxSample.Web/ ./ItworxSample.Web
RUN dotnet publish -c Release -o out
ENTRYPOINT ["dotnet", "out/Hello.dll"]
