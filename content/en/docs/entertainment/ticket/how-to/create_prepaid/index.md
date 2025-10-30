---
title: "Create prepaid tickets"
description: "Prepaid tickets are created, distributed, and paid in advance. To create and issue them, refer to this guide."
lead: ""
date: 2023-07-13T08:37:35+02:00
lastmod: 2023-07-13T08:37:35+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "create_prepaid-852ef68537fd6e342aa4bdaa91d7c62b"
weight: 288
toc: true
type: docs
---

Prepaid tickets are created, distributed, and paid in advance. They can be used in the following cases: 

- For internal events - if you don't necessarily wish to issue physical tickets to the guests, but still need to track the admission for statistical reasons. 
- When selling a batch of tickets to a third party - you can issue an invoice in Business Central to cater for the financial part of the transaction. 
- When handing out tickets for promotional purposes - it's quicker to use the prepaid ticket function to generate tickets if they are awarded in contests, for example. 

To issue prepaid tickets from Business Central, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Ticket BOM**, and choose the related link.   
2. Place the cursor on the item number line you wish to create tickets for, and click the ribbon action **Create Tickets**, followed by **Create Prepaid Tickets**.   
3. You can choose whether the ticket will be tied to a reservation or if it will be open.
4. Enter the following information:
   - **Customer No.** - when creating tickets from the back office, this field needs to be populated for tracking purposes. 
   - **External Order No.** - when customers are creating sales orders to sell tickets, they can provide sales order number or invoice number to later identify this batch of tickets and add them to a specific invoice.
   - **Scheduled Date/Time**
   - **Quantity**

5. When all lines are correctly populated (not red), click **OK**.
6. If the tickets need to be distributed to a third party, you can export the generated tickets to Excel.

If tickets are internal or for an event you control yourself, it is possible to validate the tickets by placing them in the **Offline Ticket Validation** journal. 

Individual tickets or the entire batch of tickets can be validated for admission at this point. This will update the arrival statistics for the ticket on the **Event Date**/**Event Time** specified on the journal line.

#### See also

- [<ins>NP Designer<ins>]({{< ref "../ticket_designer/index.md" >}})
- [<ins>Set up DIY printed tickets<ins>]({{< ref "../diy_printed_ticket/index.md" >}})
- [<ins>Set up tickets using the Ticket Setup Wizard<ins>]({{< ref "../ticket_setup_wizard/index.md" >}})
- [<ins>Admit an issued ticket<ins>]({{< ref "../admit_issued_ticket/index.md" >}})
- [<ins>Create postpaid tickets<ins>]({{< ref "../create_postpaid/index.md" >}})