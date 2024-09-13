---
title: "Set up Shopify integration in NaviPartner"
description: "Refer to this article if you wish to set up the Shopify integration in NP Retail."
lead: ""
date: 2023-07-11T11:27:34+02:00
lastmod: 2023-07-11T11:27:34+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-af8476ad6c4230cc0fc3c50f84e68980"
weight: 323
toc: true
type: docs
---

To set up the Shopify integration, make sure the prerequisites are met, and follow the provided steps:

### Prerequisites

1. Install the NP Retail application on the customer tenant database.                   
   The application's version needs to be xxxx.42.0.10000 or newer.   
2. Make sure a custom app is registered with Shopify.       
   
   {{< alert icon="📝" text="If you plan to use the retail voucher integration (Shopify Gift Cards) and want to support partial redemption of gift cards, you need to have a Shopify Plus subscription." />}}

### Procedure

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **NaviPartner Feature Management** and select the related link.      
2. Enable the **Shopify Integration** feature. 

   ![shopify_integration_activation](Images/shopify_integration_activation.PNG)

3. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Shopify Integration Setup** and select the related link.      
4. Enable the integration, choose which version of Spotify API you wish to use, and set up the Shopify stores you want to integrate with.     
   Check the provided screenshot and table with the available fields and options.

   ![shopify_integration_setup](Images/shopify_integration_setup.PNG)

   | Field name      | Description |
   | ----------- | ----------- |
   | **Enable Integration** | Specifies whether the integration is enabled or not. This is the master on/off switch for the integration. |
   | **Shopify API Version** | Specifies the Shopify API version that Business Central will use to communicate with Shopify. The default value is "2024-07". | 
   | **Data Processing Handler ID** | Specifies a code used by the system to identify the import types, task processor, and data log subscribers associated with the Shopify integration. |

{{< alert icon="❗" text="Whenever you make changes on this page, you and other environment users need to log into Business Central again for the changes to take effect." />}}


## Next steps

- [<ins>Create a Shopify store<ins>]({{< ref "../../reference/shopify_store/index.md" >}})
