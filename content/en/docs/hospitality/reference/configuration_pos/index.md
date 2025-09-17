---
title: "Typical configuration of POS for Restaurant"
description: "The following values represent the typical configuration of POS for Restaurant."
lead: ""
date: 2025-09-11T14:06:36+02:00
lastmod: 2025-09-11T14:06:36+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "Typical configuration of POS for restauant"
weight: 343
toc: true
type: docs
---

The following values represent the typical configuration of **POS for Restaurant**:



![restaurant_module](Images/Restaurant_module.png)



| POS Menu Button              |       POS Action Type / Action Code |          Parameters                                     |
|    --------      | ----------------------------- | -------------------------------------------------------                     |          
| **Set Menus**  | Item/Item No | Not Applicable  | 
| **Waiter Pad**  | SHOW_WAITER_PAD | Seating Selection Method = List <br> Show Only Active Waiterpad = false It will display status of current waiter pad. <br> {{< alert icon="📝" text="Note on syntax for button, using BUILTIN_SALE: (Pre-selected table: <b>{{NPRE.TableNo}}</b><br>Waiterpad: <b>{{NPRE.WaiterPadNo}}</b>)."/>}} |
| **Start New Waiter Pad** |NEW_WAITER_PAD | Ask for Number of Guest = true <br> Seating Selection Method = List <br> Open Waiter Pad = false <br> Use seating from context = false |
| **Request (Run) Next Serving** | RUN_W/PAD_ACTION | Lines to Send to Kitchen = New/Updated <br> Move Sale to W/Pad on Finish = true <br> Return to Default View on Finish = true <br> Serving Step to Request = BLANK <br> Waiter Pad Action = Request Next Serving |
| **Run Drinks** | RUN_W/PAD_ACTION |Lines to Send to Kitchen = New/Updated Move Sale to W/Pad on Finish = true <br> Return to Default View on Finish = true <br> Serving Step to Request = DRINKS <br> Waiter Pad Action = Request Specific Serving |
| **Run ENTREE** | RUN_W/PAD_ACTION |Lines to Send to Kitchen = New/Updated Move Sale to W/Pad on Finish = true <br> Return to Default View on Finish = true <br> Serving Step to Request = ENTRÉE Waiter Pad Action = Request Specific Serving |
| **Run Main Course** | RUN_W/PAD_ACTION | Lines to Send to Kitchen = New/Updated <br> Move Sale to W/Pad on Finish = true <br> Return to Default View on Finish = true <br> Serving Step to Request = MAIN <br> Waiter Pad Action = Request Specific Serving |
| **Run Dessert** | RUN_W/PAD_ACTION |Lines to Send to Kitchen = New/Updated Move Sale to W/Pad on Finish = true <br> Return to Default View on Finish = true <br> Serving Step to Request = DESSERT <br> Waiter Pad Action = Request Specific Serving |
| **Run Cheese Plate** | RUN_W/PAD_ACTION | Lines to Send to Kitchen = New/Updated <br> Move Sale to W/Pad on Finish = true <br> Return to Default View on Finish = true <br> Serving Step to Request = CHEESE <br> Waiter Pad Action = Request Specific Serving |
| **Cancel (exit w/out saving to waiter pad)** | RUN_W/PAD_ACTION | Lines to Send to Kitchen = New/Updated <br> Move Sale to W/Pad on Finish = true <br> Return to Default View on Finish = true <br> Serving Step to Request = BLANK <br> Waiter Pad Action = Close w/out Saving |
| **Merge waiter pad** | RUN_W/PAD_ACTION |Lines to Send to Kitchen = New/Updated <br> Move Sale to W/Pad on Finish = true <br> Return to Default View on Finish = true <br> Serving Step to Request = BLANK <br> Waiter Pad Action = Merge Waiter Pad |
| **Kitchen Request (Expedite)** | RV_K/REQUESTS | Filter by = Waiterpad |
| **Print Pre-Receipt** | RUN_W/PAD_ACTION | Lines to Send to Kitchen = New/Updated <br> Move Sale to W/Pad on Finish = true <br> Return to Default View on Finish = true <br> Serving Step to Request = BLANK <br> Waiter Pad Action = Print Pre-Receipt |
| **Save and Return to Floor Plan** | RV_SET_R-VIEW | Use Default End Of Sale View = true |
| **Split Bill** | SPLIT_BILL |All Waiter Pads = Yes <br> Seating Selection Method = stringPad <br> Return to Default View on Finish = false |
| **Set WP status "Ready For Payment"** | RV_SET_W/PAD_STATUS | Status Code = PMT <br> Waiter Pad Code = BLANK |

![restaurant_module_1](Images/Restaurant_module_1.png)

#### See also

- [<ins>Restaurant transactions flow<ins>]({{< ref "../../explanation/restaurant_flow/index.md" >}})
- [<ins>Restaurant seating plan (POS)<ins>]({{< ref "../../explanation/restaurant_seating_plan/index.md" >}})
- [<ins>Restaurant POS View/POS menus<ins>]({{< ref "../../explanation/pos_view/index.md" >}})