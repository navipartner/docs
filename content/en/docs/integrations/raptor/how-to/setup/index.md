---
title: "Set up Raptor integration"
description: ""
lead: ""
date: 2024-01-18T11:11:11+01:00
lastmod: 2024-01-18T11:11:11+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-e4488a87f692c380fc40c5003ca6dc6f"
weight: 999
toc: true
type: docs
---

By setting up Raptor integration in NP Retail, you enable the following processes:

- Data retrieval from Raptor
- Tracking data export to Raptor

To perform the necessary configurations, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Raptor Setup** and select the related link.      
2. Provide the following information in the available fields:

| Field Name      | Description |
| ----------- | ----------- |
| **Enable Raptor Functions** | This is the master on/off switch for the integration. Enable it to activate the integration. |
| **Customer ID** | This parameter are provided by Raptor, and populated automatically. |
| **API Key**/**Base Url** | These parameters are provided by Raptor, and populated automatically. They are required for performing a successful data retrieval process. | 
| **Send Data to Raptor** | Specifies whether sending data to Raptor is enabled. | 
| **Tracking Service Url** | This parameter is provided by Raptor. It is required in the process of sending tracking data to Raptor. | 
| **Tracking Services Type** | By default, the integration uses RSA as the value for this field. However, the integration can be extended to include additional tracking service types that Raptor may make available to you specifically. They may also be included in the standard package at some point in the future. |
| **Exclude Webshop Sales** | Specifies whether the web sales are excluded from the data sent to Raptor. |
| **Webshop Salesperson Filter** | If **Exclude Webshop Sales** is enabled, you need to provide a filter string containing all webshop salesperson codes to be excluded from the data sent to Raptor. | 

3. Click **Set up Raptor Actions** in the ribbon.    
   The **Raptor Actions** window is displayed. There are two default Raptor actions available out-of-the-box in the NP core functionality:

| Raptor Module Code      | Raptor Module Description |
| ----------- | ----------- |
| **GetUserIdHistory** | Compiles a chronological list of viewed products for a user in Realtime while the user is browsing the website |
| **GetUserRecommendations** | Generates personalized recommendations based on a user's current behavior on the website. | 

   In addition to the default actions, an extension needs to be developed to support the desired Raptor module.

4. Click **Add Default Actions** in the ribbon.
5. Specify the following information for the new Raptor actions:

| Field      | Description |
| ----------- | ----------- |
| **Code** | This is a required field. The code will be used internally to differentiate different actions. |
| **Raptor Module Code** | This is a required field. The Raptor module code is called by the system to retrieve the desired information. | 
| **Raptor Module API Req. String** | This is an optional field. There may be multiple variants of the same Raptor module. If you need to call a specific variant that has a different name than the one specified in the **Raptor Module Code**, you can specify it here. | 
| **Comment** | This is an optional field. Specifies a description of the Raptor |