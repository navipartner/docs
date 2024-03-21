---
title: "Create actions for the Raptor integration"
description: "After performing the initial setup for the integration with Raptor, you can create and enable additional actions in the environment."
lead: ""
date: 2024-03-21T13:48:19+01:00
lastmod: 2024-03-21T13:48:19+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_actions-496b996c5b94d224f02db47da2bfb30c"
weight: 727
toc: true
type: docs
---

After performing the [<ins>initial setup<ins>]({{< ref "../setup.md" >}}) for the integration with Raptor, you can create and enable additional actions in the environment.

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Raptor Setup**, and select the related link.     
   The options for setting up the Raptor integration are displayed.
2. Click **Set up Raptor Actions**.      
   There are two default actions available out-of-the-box in the core NP Retail solution:

| Raptor Module Code    | Raptor Module Description |
| ----------- | ----------- |
| **GetUserIdHistory** | Compiles a chronological list of viewed products for a user in real time, as the user is browsing the website. |
| **GetUserRecommendations** | Generates personalized recommendations based on a user's current behavior on the website. |

{{< alert icon="📝" text="If you want to make other actions valid, you need to develop an extension which can handle the desired Raptor Module."/>}}

3. Click **New**.      
   A new line is displayed.
4. Populate the following fields:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | Specifies a code used internally by the system to differentiate it from other actions. This field is required. |
| **Raptor Module Code** | Specifies the code which is used for retrieving the desired information from the [<ins>Raptor Control Panel<ins>](https://admin.raptorsmartadvisor.com/#/). | 
| **Raptor Module API Req. String** | There may be multiple variants of the same Raptor module. If you need to call a variant via API, that isn't the same as the one specified in the **Raptor Module Code** field, you can optionally set it in *admin.raptorsmartadvisor.com/#/Modules/Index/6384?productId=1*. |
| **Comment** |  Specifies a description of the Raptor action to help users understand the purpose of the action. | 


#### See also

- [Set up Raptor integration]({{< ref "../setup.md" >}})