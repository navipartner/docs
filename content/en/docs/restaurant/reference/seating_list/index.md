---
title: "Seating list"
description: "The following fields and options can be configured in the Seating List administrative section as a part of the Restaurant Module setup"
lead: ""
date: 2023-08-22T13:07:11+02:00
lastmod: 2023-08-22T13:07:11+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "seating_list-76f0746fa1331ddc41a86f537d6254cf"
weight: 343
toc: true
type: docs
---

The following fields and options can be configured in the **Seating List** administrative section as a part of the Restaurant Module setup:

| Field Name      | Description |
| ----------- | ----------- |
| **Code** | Specifies a unique internal ID attached to the seat/table. |
| **Seating No.** | Specifies a user-friendly ID of the seating/table number. |
| **Description** | Specifies a description of the seat/table. |
| **Seating Location** | Specifies the area of the restaurant in which the seat is located. |
| **Blocked** | You can block the seat/table, so that it's not available for use in the restaurant. |
| **Blocking Reason** | Specifies the reason due to which the seat was blocked. |
| **Capacity** | Specifies the number of seatings (chairs) attached to a single seat (table). |
| **Fixed Capacity** | You can fix the seat capacity, so that it's not allowed to add or remove chairs from the existing table setup. |
| **Status** | You can manually set the seat status to **BLOCKED** or **TOCLEAN** in this field. Even if the seat is set to one of these statuses, if it's physically in the floor area, customers can still be seated at it, and a waiter can start recording the order in their waiter pad. The status is changed automatically based on the configuration set in place in the **Service Flow Profile**. |
| **Status Description** | Specifies the description attached to the **Status Code**. |
| **Current Waiter Pad** | Specifies if there is a waiter pad assigned to the seat. |
| **Multiple Waiter Pads** | Specifies if there's more than one waiter pad assigned to the seat. |

#### See also

- [<ins>Seating<ins>]({{< ref "../../explanation/seating_layout/index.md" >}})
- [<ins>Restaurant transactions flow<ins>]({{< ref "../../explanation/restaurant_flow/index.md" >}})
- [<ins>Restaurant seating plan (POS)<ins>]({{< ref "../../explanation/restaurant_seating_plan/index.md" >}})
- [<ins>Restaurant POS View/POS menus<ins>]({{< ref "../../explanation/pos_view/index.md" >}})