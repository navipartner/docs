---
title: "Azure member registration setup (reference guide)"
description: "This article contains explanations of all relevant fields in the Azure Member Registration Setup administrative section."
lead: ""
date: 2024-01-09T09:14:27+01:00
lastmod: 2024-01-09T09:14:27+01:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "azure_membership-f348488b4dc2d0b86416013d11000497"
weight: 293
toc: true
type: docs
---

The following fields and options are available in the in the **Azure Member Registration Setup** administrative section:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | Specifies the code for the setup. |
| **Description** | Specifies the description accompanying the established setup. |
| **Azure Storage Account Name** | Specifies the existing Azure storage account name. |
| **Queue Name** | Specifies the name for the job queue which is used for synchronizing the data in Business Central when a member registers via the member registration URL. | 
| **Enabled** | Specifies whether the applied configuration is enabled or not. | 
| **Member Registration URL** | Specifies the URL value the user device will be redirected to for member registration. | 
| **Terms of Service URL Store Voucher Prints** | Specifies the URL that brings up the terms of service. |
| **E-mail Template** | Specifies the template used for sending a welcome email to new members. |
| **SMS Template** | Specifies the template used for sending a welcome SMS to new members. |
| **Allow Anonymous Wallet** | Specifies if the wallet is going to be included in the welcome notification. |
| **Enable Dequeuing** | Specifies whether the dequeuing process is initiated or not. |
| **Dequeue Batch Size** | Specifies the size of the dequeued batch. | 
| **Dequeue Until Empty** | Specifies whether the batch is dequeued until emptied out or not. |