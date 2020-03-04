# Contact Tracing Canvas PowerApp
Contoso Organization would want their employee to log their whereabouts in the organization for the purpose of contact tracing in an event of a potential epidemics case. In addition, the employee would also need to get their visitors to provide their details as well when they are visiting. QR codes will provided for every known location within the organization. Employee will need to use an app to scan the QR code and check in. 

Below is the high level process overview of the purpose of this application.

![](misc/Process%20Flow.png)

The application flows as illustrated for the different scenarios shown in the process flow.

![](misc/Contact%20App%20Flow%20Overview.png)

## Getting Started

These instructions will get you a copy of the project up and running in your PowerApps Environment. See deployment for notes on how to deploy and create connections for the relevant datasources for this application.

## Prerequisites
What licenses you need and things to install to run this sample PowerApp. 
### Licensing
1. Office 365 Licenses - Please refer to this [link](https://go.microsoft.com/fwlink/?linkid=2085130) on the qualifying licenses to use PowerApps from Office 365 licenses.
2. QR Code Generator - You can easily search for a free QR Code generator online. [Example](https://www.the-qrcode-generator.com/) 
### Administrative Level 
Please ensure that you have the right administrative rights to perform the following deployment tasks below.
### Windows PowerShell or SharePoint Online Management Shell
#### Microsoft SharePoint Online Services Module for Windows PowerShell
If you are using PowerShell, check that you have the [Microsoft SharePoint Online Services Module for Windows PowerShell](https://www.powershellgallery.com/packages/Microsoft.Online.SharePoint.PowerShell/16.0.19814.12000).  You can first check if you have already installed SharePoint Online Management Shell by running the following command in administrative mode in PowerShell.
```
PS> Get-Module -Name Microsoft.Online.SharePoint.PowerShell -ListAvailable | Select Name,Version
```
If your operating system is using PowerShell 5 or newer, you can install Sharepoint Online Management Shell also by running following command in administrative mode.
```
PS> Install-Module -Name Microsoft.Online.SharePoint.PowerShell
```
#### SharePoint Online Management Shell
If you are using SharePoint Online Management Shell, download and install the latest [SharePoint Online Management Shell](https://go.microsoft.com/fwlink/p/?LinkId=255251). If you already have a previous version installed, uninstall it first and then install the latest version.

For the provided PS script, it is using a username and password to connect to SharePoint. If your organziation is using Multi-Factor Authentication (MFA), refer to this [link](https://docs.microsoft.com/en-us/powershell/sharepoint/sharepoint-online/connect-sharepoint-online?view=sharepoint-ps#to-connect-with-multifactor-authentication-mfa) and modify the script accordingly.

## Deployment
Please follow the **sequence** of this deployment guide - Do not skip any steps.
### 1. Apply a Custom Site Design to SharePoint Online
### 2. Create the Custom SharePoint Team Site for Contact Tracing purposes
### 3. Import the PowerApps project to your PowerApps Environment
### 4. Ensure the necessary connections configured properly
