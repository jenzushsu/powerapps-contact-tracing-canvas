#Connect to SharePoint Online Tenant

#Set credentials variables
$adminUPN="<the full email address of a SharePoint administrator account, example: jdoe@contosotoycompany.onmicrosoft.com>"
$orgName="<name of your Office 365 organization, example: contosotoycompany>"
$userCredential = Get-Credential -UserName $adminUPN -Message "Type the password."

#Connect to SharePoint Online Tenant
Connect-SPOService -Url https://$orgName-admin.sharepoint.com -Credential $userCredential

#Upload SPOSiteScript for the 2 List 
$internalListSiteScript = Get-Content '<<Path>>\check-in-list.json' -Raw | Add-SPOSiteScript -Title "Internal Check-in List" -Description "Check-in list for internal users" | select Id
$externalListSiteScript = Get-Content '<<Path>>\external-check-in-list.json' -Raw | Add-SPOSiteScript -Title "External Check-in List" -Description "Check-in list for external users" | select Id

#Variable for the new Site Design
$webTemplate = "64" #64 = Team Site, 68 = Communication Site, 1 = Groupless Team Site
$siteScriptTitle = "Custom Team Site Script - Contact Tracing"
$siteDesignDescription = "Custom team site with 2 SPO Lists for Contact Tracing PowerApps"
$siteLists = ($internalList.Id, $externalList.Id)

#Add a new SPO Site Design with the 2 required SPO List
Add-SPOSiteDesign -Title $siteScriptTitle -WebTemplate $webTemplate -SiteScripts $siteLists