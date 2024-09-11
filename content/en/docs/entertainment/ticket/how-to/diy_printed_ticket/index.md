---
title: "Set up DIY printed tickets"
description: "Refer to this guide to set up a DIY printed ticket."
lead: ""
date: 2023-07-13T08:55:07+02:00
lastmod: 2023-07-13T08:55:07+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "diy_printed_ticket-22b5a07a4e50e7dca815c054f5366286"
weight: 288
toc: true
type: docs
---
To set up a DIY printed ticket, follow the provided steps:

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Items**, and choose the related link. Then open the **Item Card** of the item you wish to edit.
2. Navigate to the **NPR Properties** section, and select the **Ticket Type**.      
   Each ticket type corresponds to the value found in the **Code** column in the **Ticket Type** administrative section, and it links Business Central with the [<ins>Ticket Designer<ins>]({{< ref "../ticket_designer/index.md" >}}).

{{< alert icon="📝" text="When the customer purchases a ticket, the ticket/reservation is created in Business Central."/>}}

3. Open the Ticket Designer, and create the ticket design with the same name as the ticket type in Business Central.          
   During the creation of the ticket (during a web shop order) Magento will recognize the ticket type, and connect it to the Ticket Designer, where a design has been created.

This concludes the DIY printed ticket setup, however, if you wish for tickets created in the back office (e.g. prepaid tickets) to have a separate design from the other ticket design, follow the provided steps:

1. Create a new ticket design in the Ticket Designer, and provide it with a new name separate from the existing **Ticket Type**.
2. Add the new ticket design name to the **Ticket Layout Code**.        
   When you create new tickets in the back office, they will be provided with the design defined in the **Ticket Layout Code**, instead of the **Ticket Type** design. 

#### See also

- [<ins>Set up tickets using the Ticket Setup Wizard<ins>]({{< ref "../ticket_setup_wizard/index.md" >}})
- [<ins>Admit an issued ticket<ins>]({{< ref "../admit_issued_ticket/index.md" >}})
- [<ins>Create prepaid tickets<ins>]({{< ref "../create_prepaid/index.md" >}})
- [<ins>Create postpaid tickets<ins>]({{< ref "../create_postpaid/index.md" >}})