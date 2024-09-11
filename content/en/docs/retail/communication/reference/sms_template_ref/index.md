---
title: "SMS template"
description: "The SMS template feature allows you to compose text templates for the SMS message which are sent out to customers in specific scenarios. For example, an SMS can be sent from the Customer Card as a reminder that the customer has a payment that needs to be balanced."
lead: ""
date: 2023-07-10T22:40:15+02:00
lastmod: 2023-07-10T22:40:15+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "sms_template_ref-c4928e93c33780b781bba73a0ce2de1f"
weight: 163
toc: true
type: docs
---

The SMS template feature allows you to compose text templates for the SMS message which are sent out to customers in specific scenarios. For example, an SMS can be sent from the **Customer Card** as a reminder that the customer has a payment that needs to be balanced. Such an SMS can take the following form:

*Dear  Mr. James Daniels,*      
*Please note that you have a balance due of DKK 500 in your account.*      
*Settle the amount as soon as possible.*      
*Best Regards,*      
*Customer Care Team*        

Messages like this one are defined in the **SMS Template Card** administrative section. The following fields also need to be set up:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | Specifies the ID of the message. |
| **Description** | Specifies a short description of the message. |
| **Alt. Sender** | Specifies the sender. |
| **Table No.** | Specifies which table is used for sourcing specific data to be displayed in the message content. | 
| **Table Caption** | Specifies the name of the table. |
| **Recipient Type** | Specifies the type of recipient (e.g. a recipient corresponds to a single field in the table). |
| **Recipient** | Specifies the ID used to single out the specific recipient out of all options in the table, and reference them in the template (e.g. {1}). |
| **Content** | Compose the message that will be sent to SMS recipients. On the right side of the screen, there's a list of fields that are available in the specified table. E.g. {8} - the contact name on the **Customer Card**; {67} balance due (LCY) amount retrieved from the **Customer Card** | 
| **Filters on Table** | Set the filters on the table as criteria or conditions for sending SMS. |

#### See also

- [<ins>SMS setup<ins>]({{< ref "../../reference/sms_ref/index.md" >}})