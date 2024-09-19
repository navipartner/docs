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
weight: 324
toc: true
type: docs
---

If you want to enable synchronization of product modifications made in Shopify back to Business Central, you need to register the webhook handler application. This application acts as a proxy between Shopify and Business Central, translating Shopify requests into a format that Business Central can recognize and accept. 

To register the webhook handler app for your BC SaaS environment, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Shopify Integration Setup** and select the related link.
2. Select **Actions**, followed by **Initial Setup** > **Azure Active Directory OAuth** > **Register Webhook Handler App**.        
   Running this action registers the NaviPartner Shopify webhook handler app and prompts for administrator approval/consent. 

   {{< alert icon="❗" text="This action needs to be run by a user who is both an Azure Active Directory administrator and a Business Central administrator. You won't be able to run Shopify webhooks until this action is completed." />}}

## Next steps

- [<ins>Set up inventory-specific integration areas<ins>]({{< ref "../inventory_specific_setup/index.md" >}})