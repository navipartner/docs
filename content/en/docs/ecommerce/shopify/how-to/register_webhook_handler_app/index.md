---
title: "Register the webhook handler app"
description: "If you want to enable synchronization of product modifications made in Shopify back to Business Central, you need to register the webhook handler application."
lead: ""
date: 2024-09-13T17:05:20+02:00
lastmod: 2024-09-13T17:05:20+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "register_webhook_handler_app-3a0fb0a26fc37d42ac140395b02df488"
weight: 325
toc: true
type: docs
---

If you want to enable synchronization of product modifications made in Shopify back to Business Central, you need to register the webhook handler application. This application acts as a proxy between Shopify and Business Central, translating Shopify requests into a format that Business Central can recognize and accept. 

To register the webhook handler app for your BC SaaS environment, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Shopify Store** and select the related link.
2. Select **Actions**, followed by **Initial Setup** > **Microsoft Entra ID OAuth** > **Register Webhook Handler App**.        
   Running this action registers the NaviPartner Shopify webhook handler app and prompts for administrator approval/consent. 

   {{< alert icon="❗" text="This action needs to be run by a user who is both an Microsoft Entra ID administrator and a Business Central administrator. You won't be able to run Shopify webhooks until this action is completed." />}}

3. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Shopify Store**, and choose the related link.
4. Enable the **Auto Sync Item Changes from Shopify** toggle switch.       
   As soon as this option is enabled, you will start receiving Shopify webhook notifications.        

   Each time you create/update/delete a product in Shopify, a new entry is created in the **Shopify Webhook Notifications** administrative section in Business Central. The records are automatically processed in Business Central via a job queue which is by default set to be run every minute. 

   Once the **Shopify Webhook Notification** is processed in Business Central, the changes will be displayed in the **Shopify Integration** section of the relevant **Item Card**.       

   The following information is updated:
   - **Integrate with This Store** - determines whether the item is integrated with the store
   - **Shopify Status** - the status of the product in Shopify (draft/active/archived)
   - **Shopify Name** - the contents of the product's **Title** field in Shopify
   - **Shopify Description** - the contents of the product's **Description** field in Shopify
   - **Shopify Product ID**, **Shopify Variant ID**, **Shopify Inventory Item ID** - the IDs associated with the product in Shopify

## Next steps

- [<ins>Set up inventory-specific integration areas<ins>]({{< ref "../inventory_specific_setup/index.md" >}})

