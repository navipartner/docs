---
title: "Restaurant notification setup"
description: "The following fields and options are available in the Restaurant Notification Setup administrative section."
lead: ""
date: 2024-08-08T16:06:36+02:00
lastmod: 2024-08-08T16:06:36+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "notification_setup-ebc8692c0a9b9e281e39ba208aa9b5ca"
weight: 343
toc: true
type: docs
---

The following fields and options are available in the **Restaurant Notification Setup** administrative section:

| Field Name      | Description |
| ----------- | ----------- |
| **Notification Trigger** | Specifies which action will trigger an SMS or Email notification. For example: <ul> <li> **NEW ORDER** - the recipient can be a waiter/salesperson or a specific user; </li> <li> **DELAYED ORDER (first threshold)/DELAYED ORDER (second threshold)** - the recipient can be a specific user like a supervisor or a specific group of managers; </li> <li> **ORDER READY FOR SERVING** - the recipient is a customer. </li> </ul> | 
| **Restaurant Code** | Specifies the restaurant for which this notification setup line will be used. Don't populate this field if you want the setup line to be used for all restaurants. | 
| **Production Restaurant Code** | Specifies the production restaurant for which this notification setup line will be used. Don't populate this field if you want the setup line to be used universally. |
| **Kitchen Station** | Specifies the kitchen station for which this notification setup line will be used. Don't populate this field if you want the restaurant line to be used universally. |
| **Recipient** | Specifies the type of notification recipients (e.g. defined in the SMS template, customer, waiter/salesperson, specific). |
| **User ID (Recipient)** | Specifies the notification recipient user ID. Only applicable if you've previously selected **Specific User** as the **Recipient**. E.g. you make the delayed message be sent to the supervisor by specifying their ID here. |
| **E-mail Notification** | Specifies whether to sent email notifications. Not applicable for fast-food restaurants. |
| **E-mail Notif. Template** | Specifies the template for email notifications. |
| **SMS Notif. Template** | Specifies the template for text message notifications. |