---
title: "Refund tickets"
description: "You can refund tickets (web orders) directly from BC or from the POS."
lead: ""
date: 2023-07-13T08:53:19+02:00
lastmod: 2023-07-13T08:53:19+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "refund-95a8d61affab80ed2fa6d2075406a0f8"
weight: 288
toc: true
type: docs
---

Tickets can either be refunded from the POS or from Business Central.

## Refund tickets in POS

In the POS system you can revoke and refund tickets:  

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **POS Menus** and choose the related link.        
2. Open the menu code where you wish to add the refund button.
3. Create a new line and set **Action Code** to **TM_TICKETMGMT**.
4. Click **Parameters** in the home tab. 
5. In the **Function** option choose **Revoke Reservation**.     
   Make sure that **Boolean** is set to **False**.
6. When you click the button in the POS system a popup window will open, and you need to input the customers external ticket number.

## Refund tickets in BC17

You can refund tickets (web orders) directly from BC without accessing the POS (e.g. Quickpay):

1. Click the ![Lightbulb](Lightbulb_icon.PNG) button, enter **Posted Sales Invoices** and choose the related link.   
   The list of currently posted sales invoices is displayed.
2. Choose the sales invoice that you wish to refund.
3. Click the **Correct** button in the ribbon, and then **Create Corrective Credit Memo**.
4. When you post the credit memo the amount will automatically be refunded.

{{< alert icon="❗" text="Some integrations require additional manual setup on the <b>Payment Providers</b> web interface before the amount can be refunded."/>}}

#### See also

- [<ins>NP Designer<ins>]({{< ref "../ticket_designer/index.md" >}})
- [<ins>Set up DIY printed tickets<ins>]({{< ref "../diy_printed_ticket/index.md" >}})
- [<ins>Set up tickets using the Ticket Setup Wizard<ins>]({{< ref "../ticket_setup_wizard/index.md" >}})
- [<ins>Admit an issued ticket<ins>]({{< ref "../admit_issued_ticket/index.md" >}})
- [<ins>Create prepaid tickets<ins>]({{< ref "../create_prepaid/index.md" >}})
- [<ins>Create postpaid tickets<ins>]({{< ref "../create_postpaid/index.md" >}})