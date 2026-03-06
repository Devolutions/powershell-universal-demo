# PowerShell Universal Demo Repository

## About PowerShell Universal

[PowerShell Universal](https://powershelluniversal.com) (PSU) is an all-in-one platform for building web-based tools, automating tasks, and exposing APIs — all powered by PowerShell. It is developed by [Devolutions](https://devolutions.net).

With PSU you can:

- **Automate** — schedule and run PowerShell scripts as background jobs with logging, error handling, and parameter support.
- **Build Apps** — create interactive web dashboards and forms without needing front-end expertise.
- **Expose APIs** — publish PowerShell functions as REST API endpoints.
- **Manage Agents** — connect remote machines and invoke commands across your infrastructure.

### Useful Links

| Resource | URL |
|---|---|
| Downloads | https://powershelluniversal.com/downloads |
| Documentation | https://docs.powershelluniversal.com |
| Devolutions | https://devolutions.net |

---

## Resource Manifest

This repository contains demo scripts, apps, and modules that showcase key PSU features.

### Scripts

| File | Description |
|---|---|
| [AccessApi.ps1](AccessApi.ps1) | Demonstrates reading a secret from the PSU vault. Outputs the length of a stored API key using the `$Secret:` scope. |
| [CacheUsers.ps1](CacheUsers.ps1) | Demonstrates PSU's built-in caching. Stores a list of user objects in the integrated cache using `Set-PSUCache`. |
| [Child.ps1](Child.ps1) | A simple child script that sleeps for a random duration. Used by `Parent.ps1` to demonstrate parent/child script execution. |
| [Environment.ps1](Environment.ps1) | Outputs `$PSVersionTable` and the current process, demonstrating how to inspect the runtime environment of a script job. |
| [Error Script.ps1](Error%20Script.ps1) | Intentionally throws an error. Used to demonstrate PSU error handling and triggering error-callback scripts. |
| [Invoke Event.ps1](Invoke%20Event.ps1) | Sends a command to a connected PSU agent hub using `Invoke-PSUCommand`, demonstrating remote agent execution. |
| [NewUserAccount.ps1](NewUserAccount.ps1) | Accepts `UserName`, `FirstName`, and `LastName` parameters and returns a user object. Used by the User App to demonstrate script/app integration. |
| [Parameters.ps1](Parameters.ps1) | Showcases all supported PSU parameter types: string, DateTime, PSCredential, SecureString, bool, switch, integer, and default values. |
| [Parent.ps1](Parent.ps1) | Invokes `Child.ps1` five times using `Invoke-PSUScript`, demonstrating parent/child script relationships and job chaining. |
| [Pester.Tests.ps1](Pester.Tests.ps1) | A Pester test suite demonstrating PSU's built-in support for running and reporting Pester tests as jobs. |
| [ReadHostScript.ps1](ReadHostScript.ps1) | Uses `Read-Host` to prompt for user input, demonstrating PSU's interactive terminal support. |
| [RemoveUserAccount.ps1](RemoveUserAccount.ps1) | Accepts a `UserName` parameter and simulates removing a user account. Used by the User App's Remove User tab. |
| [Run on error.ps1](Run%20on%20error.ps1) | An error-callback script that receives a `$Job` object when another job fails, demonstrating PSU's on-error trigger feature. |
| [StartAgent.ps1](StartAgent.ps1) | Configures environment variables and starts a PSU agent process, demonstrating how to connect remote agents to a PSU server. |

### Apps (Dashboards)

| File | Description |
|---|---|
| [dashboards/User App/User App.ps1](dashboards/User%20App/User%20App.ps1) | A tabbed web app with forms to create and remove user accounts. Demonstrates invoking PSU scripts directly from an app and providing user feedback with toasts. |

### Modules

| Path | Description |
|---|---|
| [Modules/PowerShellUniversal.Apps.Earthquakes/](Modules/PowerShellUniversal.Apps.Earthquakes/1.0.0/README.md) | An app module that fetches recent earthquake data from the USGS API and displays it on an interactive map. Marker size and color reflect earthquake magnitude. |

### Documentation

| File | Description |
|---|---|
| [NewUserAccount.md](NewUserAccount.md) | Human-readable documentation for the New User Account script, describing the onboarding steps it performs (Azure AD, email setup, manager notification). |

---

## PSU Configuration (`.universal/`)

The `.universal/` folder contains the PSU platform configuration files. These are PowerShell scripts that PSU reads on startup to configure the server. Each file maps to a specific feature area.

| File | Description |
|---|---|
| [.universal/branding.ps1](.universal/branding.ps1) | Customizes the PSU admin console and portal titles and login page text. Configures the portal as the "Devolutions Automation Portal". |
| [.universal/computerGroups.ps1](.universal/computerGroups.ps1) | Defines a computer group named `Windows` for grouping agents by platform. |
| [.universal/dashboards.ps1](.universal/dashboards.ps1) | Registers the **User App** dashboard, sets its base URL, enforces authentication, and restricts it to Administrator and Operator roles. |
| [.universal/endpointDocumentation.ps1](.universal/endpointDocumentation.ps1) | Defines OpenAPI documentation for the User API, including a `UserObject` schema, versioning, contact information, and license metadata. |
| [.universal/endpoints.ps1](.universal/endpoints.ps1) | Registers two REST API endpoints: a `POST /api/user` that invokes `NewUserAccount.ps1` to create a user, and a `GET /api/user` that returns cached users. Both require authentication. |
| [.universal/environments.ps1](.universal/environments.ps1) | Configures the script execution environments: **Integrated** (in-process), **PowerShell**, **PowerShell 7**, **PWSH**, and **Windows PowerShell 5.1**. |
| [.universal/eventHubs.ps1](.universal/eventHubs.ps1) | Creates an event hub named `Agents` used for bidirectional communication with connected PSU agents. |
| [.universal/publishedFolders.ps1](.universal/publishedFolders.ps1) | Publishes the `assets/` folder at the `/assets/` URL path for serving static files. |
| [.universal/schedules.ps1](.universal/schedules.ps1) | Schedules `CacheUsers.ps1` to run every hour (America/Chicago timezone) to keep the user cache fresh. |
| [.universal/scripts.ps1](.universal/scripts.ps1) | Registers all scripts with PSU, setting descriptions, role-based access control, and tags (e.g., `HR`, `DEV`) for each script. |
| [.universal/tags.ps1](.universal/tags.ps1) | Defines two script tags: **DEV** (blue, bug icon) and **HR** (green, user icon), both visible in the portal to Administrators and Operators. |
| [.universal/terminals.ps1](.universal/terminals.ps1) | Configures a browser-based terminal named `Browser Terminal`, restricted to Administrators with no idle timeout. |
| [.universal/triggers.ps1](.universal/triggers.ps1) | Defines a `JobFailed` trigger that automatically runs `Run on error.ps1` whenever any job fails. |
| [.universal/variables.ps1](.universal/variables.ps1) | Declares two variables sourced from the `Database` vault: `MyApiKey` (string) and `MyCredential` (PSCredential). |

