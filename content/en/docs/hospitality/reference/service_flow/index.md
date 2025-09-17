---
title: "Restaurant service flow profile"
description: "The following fields and options are available in the Rest. Service Flow Profile Card."
lead: ""
date: 2023-08-22T11:35:27+02:00
lastmod: 2023-08-22T11:35:27+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "service_flow-3a8b9aea1aa72699c99b67979c26464c"
weight: 343
toc: true
type: docs
---

The following fields and options are available on the **Rest. Service Flow Profile Card**:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | DEFAULT – The code is a general configuration that is going to be used in the Restaurant Setup. | 
| **Description** | What Kind of process we want to adopt? For example: A'la carte restaurant with payment after dining | 
| **AutoSave to W/Pad on Sale End** | Specifies whether the items placed in the POS sale and other accompanying selected functions are automatically saved to a waiter pad at the end of the sale. The configuration is done with the **NEW_WAITER_PAD** POS action. |
| **New Waiter Pad Action** | Specifies the code for the POS action that is used when a new waiter pad is created at the end of a sale. Recommended value is "NEW_WAITER_PAD" |
| **Close Waiter Pad On** | At what stage of the process do we want to close the waiter pad automatically? For example: Payment |
| **Only if Fully Paid** | We activate this condition if we want to be strict on the payment. <br> {{< alert icon="📝" text="If not enabled, system will automatically close waiter pads after the first payment, even if the sale remains partially unpaid after that."/>}} | 
| **Clear Seating On** | At what stage do we want to clear the seating on a table and reset to empty? For example: Waiter Pad Close | 
| **Seating Status after Clearing** | What kind of Status do we want to attribute to the table when we finish clearing the seating? Here we are setting it to READY, as we are assuming that it is the waiter that cleans the table himself after the guest paid & leaved. For example: READY <br> {{< alert icon="📝" text="It can be TOCLEAN, if we have personnel who are responsible to do the cleaning after service. Then they will do the cleaning & re-set it to READY."/>}} |
| **Set W/Pad Ready for Pmt. On** | Specifies whether and when system should automatically change waiter pad status to "ready for payment" (the status specified in field "W/Pad Ready for Pmt. Status"). For example, we can set it to : Pre-Receipt if Served. The system will check if the last order has been served and the pre-receipt printed. |
| **W/Pad Ready for Pmt. Status** | Specifies the "ready for payment" status code on the waiter pad. We have two options here, depends on the business flow, we can specify to ask from payment after ordered or based on the above defined logic for field: “Set W/Pad Ready for Pmt. On” |

![restaurant4](images/Rest_Service_Flow_Profile.png)

#### See also

- [<ins>Seating<ins>]({{< ref "../../explanation/seating_layout/index.md" >}})
- [<ins>Restaurant transactions flow<ins>]({{< ref "../../explanation/restaurant_flow/index.md" >}})
- [<ins>Restaurant seating plan (POS)<ins>]({{< ref "../../explanation/restaurant_seating_plan/index.md" >}})
- [<ins>Restaurant POS View/POS menus<ins>]({{< ref "../../explanation/pos_view/index.md" >}})