---
title: "SMS Setup (reference guide)"
description: ""
lead: ""
date: 2023-07-10T22:39:33+02:00
lastmod: 2023-07-10T22:39:33+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "sms_ref-5d6c83d929f25794e304b2e4cd0d47e7"
weight: 999
toc: true
type: docs
---

In order to establish a functional SMS module, certain actions need to be set up. This is done in the **SMS Setup Card**. 

| Field Name      | Description |
| ----------- | ----------- |
| **SMS Provider** | Specifies the organization which provides the SMS service. |
| **Discard Msg. Older than (Hrs)** | Specifies for how many hours the message is stored in the environment. |
| **Job Queue Category Code** | Specifies which job queue is tasked with sending the SMS. |
| **Auto Send Attempts** | Specifies how many attempts will be made to send the SMS. After the specified number of attempts is reached, the SMS is discarded from the environment. | 
| **Customer No.** | Specifies the phone number of the customer. |
| **Default Sender No.** | Specifies the sender phone number. |
| **Domestic Phone Prefix** | Specifies the local country calling code of the sender. |