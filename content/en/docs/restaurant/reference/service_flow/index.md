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

The following fields and options are available in the **Rest. Service Flow Profile Card**:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | Specifies the ID of the service flow. | 
| **Description** | Specifies the type of the process that the restaurant wishes to adopt, e.g. à la carte restaurant with payment after dining. | 
| **AutoSave to W/Pad on Sale End** | Specifies whether the items placed in the POS sale and other accompanying selected functions are automatically saved to a waiter pad at the end of the sale. The configuration is done with the **NEW_WAITER_PAD** POS action. | 
| **Close Waiter Pad On** | Specifies the stage at which the waiter pad is going to be closed automatically, e.g. Payment if served. |
| **Only if Fully Paid** | Specifies whether waiter pads are only automatically closed after full payment is received. If disabled, the waiter pads will automatically be closed after the initial payment, even if the sale remains partially unpaid afterwards. | 
| **Clear Seating On** | Specifies the stage at which the seating on a table will be cleared and reset to empty, e.g. Waiter pad closed. | 
| **Seating Status after Clearing** | Specifies the status code that is going to be assigned to seatings on clearing. E.g. **Ready** - it is assumed that the waiter cleans the table after the guest has paid for the meal and departed. | 
| **W/Pad Ready for Pmt. Status** | Specifies the ready-for-payment status code on the waiter pad. |

![restaurant4](restaurant4.PNG)

#### See also

- [<ins>Seating<ins>]({{< ref "../../explanation/seating_layout/index.md" >}})
- [<ins>Restaurant transactions flow<ins>]({{< ref "../../explanation/restaurant_flow/index.md" >}})
- [<ins>Restaurant seating plan (POS)<ins>]({{< ref "../../explanation/restaurant_seating_plan/index.md" >}})
- [<ins>Restaurant POS View/POS menus<ins>]({{< ref "../../explanation/pos_view/index.md" >}})