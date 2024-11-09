#!/usr/bin/env bash


echo "create the ASP.NET Core Web App (Razor Pages) project and add it to the solution"
dotnet new razor -lang c# -n AutoLot.Web -au none -o AutoLot.Web -f net8.0
dotnet sln AutoLot.sln add AutoLot.Web
dotnet add AutoLot.Web reference AutoLot.Models
dotnet add AutoLot.Web reference AutoLot.Dal
dotnet add AutoLot.Web reference AutoLot.Services

echo "add packages"
dotnet add AutoLot.Web package AutoMapper -v '[12.0.*,13.0)'
dotnet add AutoLot.Web package System.Text.Json -v '[8.0.*,9.0)' 
dotnet add AutoLot.Web package LigerShark.WebOptimizer.Core -v '[3.0.*,4)'
dotnet add AutoLot.Web package Microsoft.Web.LibraryManager.Build -v '[2.1.*,3.0)'
dotnet add AutoLot.Web package Microsoft.EntityFrameworkCore.SqlServer -v '[8.0.*,9.0)'
dotnet add AutoLot.Web package Microsoft.EntityFrameworkCore.Design -v '[8.0.*,9.0)'
dotnet add AutoLot.Web package Microsoft.VisualStudio.Web.CodeGeneration.Design -v '[8.0.*,9.0)'
dotnet add AutoLot.Web package Microsoft.VisualStudio.Threading.Analyzers -v '[17.*,18.0)'

read -p "Press Enter to continue" </dev/ttyc
