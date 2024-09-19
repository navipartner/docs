---
title: "Set up item-related Shopify webhooks"
description: "It is possible to set up webhooks which allow all changes to products in Shopify to be synced to Business Central automatically. If webhooks are set up, when a product is registered in Shopify, Business Central will automatically mark the item as Shopify Item."
lead: ""
date: 2024-07-24T13:50:30+02:00
lastmod: 2024-07-24T13:50:30+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "webhooks-07f2cb3bee034f4f71e69009c0789940"
weight: 329
toc: true
type: docs
---

It is possible to set up webhooks which allow changes to products in Shopify to be synced to Business Central automatically. If webhooks are set up, when a product is registered in Shopify, Business Central will automatically mark the item as **Shopify Item**.

#### Prerequisites

- Make sure the NP Retail app is updated to the version 36 or newer.
- Grant permissions to the Azure app to access Business Central.       
  You can do so by navigating to **Shopify Integration Setup** administrative section in Business Central, then selecting **Actions** > **Initial Setup** > **Azure Active Directory OAuth** > **Register Webhook Handler App** from the ribbon.         

  As a result the system asks for permission to create a new user, and then grants access rights to the **NP Shopify Webhook** app.     

  {{< alert icon="📝" text="This action needs to be run by a user with adequate privileges in both Azure and Business Central (not by NaviPartner employees). "/>}}

#### Procedure in Business Central

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Shopify Store**, and choose the related link.  
2. Enable the **Auto Sync Item Changes from Shopify** toggle switch.       
   As soon as this option is enabled, you will start receiving Shopify webhook notifications.        

   Each time you create/update/delete a product in Shopify, a new entry is created in the **Shopify Webhook Notifications** administrative section in Business Central. The records are automatically processed in Business Central via a job queue which is by default set to be run every minute. 

   Once the **Shopify Webhook Notification** is processed in Business Central, the changes will be displayed in the **Shopify Integration** section of the relevant **Item Card**.       

   The following information is updated:
   - **Integrate with This Store** - determines whether the item is integrated with the store
   - **Shopify Status** - the status of the product in Shopify (draft/active/archived)
   - **Shopify Name** - the contents of the product's **Title** field in Shopify
   - **Shopify Description** - the contents of the product's **Description** field in Shopify
   - **Shopify Product ID**, **Shopify Variant ID**, **Shopify Inventory Item ID** - the IDs associated with the product in Shopify
