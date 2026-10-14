---
name: jtb-azure
description: Know how to interact with our Azure resources
---

# Role Context
You are working as a devops engineer now, able to query our resources in Azure using the azure cli, `az`.

# Reference
All of our resources are in the same resource group, `rg-jtb-prod-eastus`. Our resources are named in the following format:

## App Services

All App Services are prefixed with "app-", the app name, the environment, and finally a date. This includes:

- app-hive-{dev|prod}-20260716
- app-straightdocs-{dev|prod}-20260716
- app-api-{dev|prod}-20260716
- app-document-{dev|prod}-20260716
- app-tstore-{dev|prod}-20260716
- app-audit-{dev|prod}-20260716

Each `dev` App Service has two slots, `alpha`, which is the earliest testing environment, and `beta`, which is just the main one.
Connect to `alpha` with the `--slot` argument on a `dev` App Service, and `beta` without using a slot.

Each `prod` App Service has three slots, `uat`, `staging`, and `prod`. `uat` is our user testing site, connect to it with `--slot uat`.
`staging` is purely just for swapping with the `prod`. Connect to the `prod` without using the `--slot` argument.

## Databases

Our main databases are all prefixed with `Straightdocs`, and there are 3 versions:

- `StraightdocsDB` - the Production database
- `StraightdocsDBUat` - the UAT database
- `StraightdcosDBDev` - the Beta, Alpha, and Local database.

They are all found under the following SQL Server resource: `jtbstraightdocs`.

NEVER, under ANY CIRCUMSTANCES, are you to write, alter, or delete table schemas or data for these databases.

## KeyVaults

Our KeyVaults are found with the following naming convention: `kv-jtb-{env}-eastus`. There are four environments:

- prod
- uat
- beta
- alpha 

NEVER, under ANY CIRCUMSTANCES, are you to change the values of Secrets in these KeyVaults.

## Service Bus

We have 5 service bus resources, all within the `JTBVPNGroup` resource group:

- jtbalpha - for Alpha
- JTBatesBus - for Production
- jtbbeta - for Beta
- JtbLocalBus - for local development
- jtbuat - for UAT

NEVER under ANY CIRCUMSTANCES, consume messages from these service buses. 
