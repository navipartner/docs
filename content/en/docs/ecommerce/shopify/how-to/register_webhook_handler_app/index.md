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

If you want to enable synchronization of modifications made to entities (such as **products** or **customers**) in Shopify back to Business Central, you need to register the **webhook handler application**. This application acts as a proxy between **Shopify** and **Business Central**, translating Shopify requests into a format that Business Central can recognize and accept.

### Prerequisites

 - The solution must be running in a **Business Central SaaS environment**. This functionality is not supported in On-Premises environments.

 - The **latest version** of NP Retail must be installed.

 - The user must have both an Microsoft Entra ID administrator and a Business Central **administrator privileges** in Business Central.

 - **Pop-ups must be enabled** in the browser for the businesscentral.dynamics.com domain.

<br>


### Procedure

To register the webhook handler app for your BC SaaS environment, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Shopify Integration Setup** and select the related link.
2. Select **Actions**, followed by **Initial Setup** > **Microsoft Entra ID OAuth** > **Register Webhook Handler App**.        
   Running this action registers the NaviPartner Shopify webhook handler app and prompts for administrator approval/consent. 

   {{< alert icon="❗" text="This action needs to be run by a user who is both an Microsoft Entra ID administrator and a Business Central administrator. You won't be able to run Shopify webhooks until this action is completed." />}}

3. Confirm

    ![Confirmation](Images/Confirmation.png)

4. A popup will appear with a sign in window:
![Signin](Images/Sign_in.png)

5. Accept permission request
![App](Images/App.png)

After the process has been completed, the following Microsoft Entra App should appear in the list of entra apps in BC.
![Mic_Entra_app](Images/Mic_Entra_app.png)

As soon as this option is enabled, you will start receiving Shopify webhook notifications.        

   Each time you create/update/delete an entity in Shopify, for which you have a webhook subscription, a new entry is created in the **Shopify Webhook Notifications** administrative section in Business Central.

   Once the Shopify Webhook Notification has been processed in Business Central, the changes will be displayed in the **Shopify Integration** section of the relevant entity card (e.g. the **Item** or **Customer** Card).       


### Next steps

- [<ins>Set up inventory-specific integration areas<ins>]({{< ref "../inventory_specific_setup/index.md" >}})

