---
title: "Ticket Delivery"
description: "Refer to the tables with descriptions of dedicated Ticket Delivery fields."
lead: ""
date: 2023-07-18T11:24:55+02:00
lastmod: 2023-07-18T11:24:55+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "ticket_delivery_ref-23d295c164f86da97bc5dc9f46d8c4d1"
weight: 305
toc: true
type: docs
---

The following options are available in regards to the ticket delivery:

| Field name      | Description |
| ----------- | ----------- |
| **Email Delivery** | It can be turned off, or be a part of the separate email or order confirmation. It's advised to have it as a separate ticket email. You can also add **BCC recipients** in this case. The **E-Ticket (Passes) in Email** can be set as a link, or as an attachment. So, the ticket could be reordered in the email as a link, or as an attachment. |
| **Type-Specific Email Template** | This is the place where you can assign an email template to the specific ticket type. |
| **SMS Delivery** | Enables having the ticket delivered in SMS. The option is heavily dependent on Business Central. Preliminary setup needs to be performed in Business Central for this to become effective. |
| **Ticket Generation** | There are two features: **E-Ticket (Pass)** - this one should be left as-is because the options here are governed through Business Central; **Ticket** card - in it, you can define whether you want the ticket to be generated from the NP Designer template, or as a default one. |

  {{< alert icon="📝" text="Even though the NP Designer (<b>NaviPartner</b> > <b>Entertainment</b> > <b>NP Designer</b>) isn't described in this guide, it's important to note that the <b>Ticket Type</b> that is configured in Business Central is in correlation with the <b>Ticket Code Type</b> from the NP Designer."/>}}

For example, if you purchase the ticket with the **EVENT** ticket type in Business Central, then you will receive the ticket design that is related to that same ticket code type from the NP Designer. 

#### See also

- [<ins>Entertainment settings<ins>]({{< ref "../entertainment_ref/index.md" >}})
- [<ins>Set up ticketing (Business Central and Magento)<ins>]({{< ref "../../how-to/ticketing_setup/index.md" >}})