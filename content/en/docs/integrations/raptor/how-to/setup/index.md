---
title: "Set up Raptor integration"
description: "Refer to this article for instructions on setting up the Raptor integration."
lead: ""
date: 2024-03-21T12:36:35+01:00
lastmod: 2024-03-21T12:36:35+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-a826d389806a44fecc5fc6800c0f73c4"
weight: 726
toc: true
type: docs
---

You can set up the Raptor integration to provide the ability to retrieve data from Raptor, and send the tracking data back to it. Follow the provided steps to integrate NP Retail with Raptor:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Raptor Setup**, and select the related link.     
   The options for setting up the Raptor integration are displayed.
2. Provide the following information:

| Field Name      | Description |
| ----------- | ----------- |
| **Customer ID** | The customer ID is assigned by Raptor. It can be retrieved from the [<ins>Raptor Control Panel<ins>](https://admin.raptorsmartadvisor.com/#/). |
| **API Key** | The API key is assigned by Raptor. It can be retrieved from the [<ins>Raptor Control Panel<ins>](https://admin.raptorsmartadvisor.com/#/). | 
| **Base URL** | The base URL is provided by Raptor. The default value is *https://api.raptorsmartadvisor.com*. It is required for the Raptor data retrieval processes. |
| **Tracking Service Url** | The tracking service URL is provided by Raptor. The default value is *https://t.raptorsmartadvisor.com*. It is required for sending data to Raptor. |

3. To enable the data retrieval processes, you need to place a checkmark in the **Enable Raptor Functions** field, and set up **Raptor Actions**. 
4. To enable tracking data sending, you need to place checkmarks in both **Enable Raptor Functions** and **Send Data to Raptor**, as well as set up a **Data Log Subscriber** and a **Job Queue Entry**. 

#### See also

- [Create actions for the Raptor integration]({{< ref "../create_actions.md" >}})