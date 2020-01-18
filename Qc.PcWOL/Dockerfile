FROM microsoft/dotnet:2.2-sdk AS build
WORKDIR /app
COPY . .
RUN cd /app/Qc.PcWOL/ \
	&& dotnet restore \
	&& dotnet publish -c Release -o /publish

FROM microsoft/dotnet:2.2-aspnetcore-runtime AS base
WORKDIR /app
COPY --from=build /publish .
EXPOSE 80 443
ENTRYPOINT ["dotnet","./Qc.PcWOL.dll"]