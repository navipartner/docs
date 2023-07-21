---
title: "Accessing NaviPartner Artifact Feeds"
description: ""
lead: ""
date: 2023-07-18T13:33:11+02:00
lastmod: 2023-07-18T13:33:11+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "artifact_feeds-fb69d869314a840262c36d08759b8333"
weight: 206
toc: true
type: docs
---

1. Request access to [NaviPartner Azure DevOps system](https://navipartner.visualstudio.com/).    
   To get the access you need to contact **NaviPartner** using the common communication channel.
2. Once the account is ready, visit [Public Feeds project](https://navipartner.visualstudio.com/PublicFeeds/_artifacts/feed/NaviPartner.NavApps).     

   The previous link is also accessible from [the main NaviPartner`s DevOps site](https://navipartner.visualstudio.com/).

3. From the **NaviPartner.NavApps**, feed, you have to decide which one of our core apps (currently two) you need to use and click on it.     
   Each item in the list is called, in NuGet words, a package).         
   
   ![1](artifacts_feeds_packages.png)

   Once select a core app, and click on it, you will see the latest (pre)release for the specific app or a package.           
   ![2](artifact_feeds_package_detail.png)

4. From here, you can easily download the package by clicking **Download**.     

   If you need a specific version, you can find it using **Versions** tab (right next to **Overview** tab). This will provide a list of all available versions. Just be careful, as on the top there will be very likely prereleases of the upcoming version and official releases will be listed below.        

   ![3](artifacts_feeds_version_list.png)

5. Click on any of the provided versions, and you will see the card (overview) for the selected versions instead of the `latest` one. Alternatively, you can select multiple and download the selected versions directly.        

   ![4](artifact_feeds_select_download_multiple.png)


## Next steps

### What to do with the packages on your local machine

Once you have downloaded package(s), you have to get apps included in the package(s). NuGet packages are nothing but structured **zip** archives. So you can easily extract their content and discover apps included inside. Once you have apps, you can manually take and use them anywhere you need them (deploy to your environments or put into **AL project** folders, etc.)

   ![5](artifact_feeds_app_folders_inside_package.png)

   ![6](artifact_feeds_app_inside_package_folder.png)

### Access to the feeds via nuget.exe or PowerShell Package Management

This is an advanced possibility allowing automation of the interaction with packages. There are many articles on the Internet providing details. **Azure DevOps Artifact Feed** page offers connection strings for multiple package management tools

From the feed page you can click **Connect to Feed**, after which you will get details and connection strings relevant for the management of the selected package.

   ![7](artifact_feeds_connect_button.png)

