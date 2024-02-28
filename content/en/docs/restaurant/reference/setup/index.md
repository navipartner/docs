---
title: "Restaurant setup"
description: "The Restaurant Setup page is where we configure the general setup for the Restaurant Module. It covers the No. series, Seating Statuses, POS Actions that are used in different processes, Kitchen integration with KDS or Printer and Print Templates for the Kitchen printers."
lead: ""
date: 2023-08-22T09:42:12+02:00
lastmod: 2023-08-22T09:42:12+02:00
draft: false
images: []
menu:
  docs:
    parent: ""
    identifier: "setup-ec4fd90884c20c06f6ca3450c83a867f"
weight: 322
toc: true
type: docs
---
The **Restaurant Setup** page is where we configure the general setup for the Restaurant Module. It covers the **No. series**, **Seating Statuses**, **POS Actions** that are used in different processes, **Kitchen integration** with **KDS** or **Printer** and **Print Templates** for the **Kitchen** printers.  
 
The following fields and options are available in the **General** section:

- **Waiter Pad No. Series** - Specifies the series of numbers used for the waiter pad identification.      
- **Default Service Flow Profile** - Specifies the general behavior of flows for the restaurant, and actions to be taken on different steps:      
    - **Close Waiter Pad On** - Specifies whether and when system should automatically close waiter pads.    
    - **Only if fully Paid** - Specifies whether waiter pads will only be automatically closed after full payment is received. If not enabled, the waiter pads will be automatically closed after the first payment, even if the sale remains partially unpaid after that.
    - **Clear Seating On** - Specifies when the seating should be cleared.
    - **Seating Status after Clearing** - Specifies the status code, which is going to be assigned to the seating after the clearing occurs.
    - **Set W/Pad Ready for Pmt. On** - Specifies whether and when the waiter pad status is automatically changed to "ready for payment" (the status specified in the **W/Pad Ready for Pmt. Status** field).
    - **W/Pad Ready for Pmt. Status** - Specifies the "ready for payment" waiter pad status code.

The following fields and options are available in the **Seating** section:

- **Statuses of Tables** - The following options are available:
  - **READY** - Ready for New Guests.
  - **SEATED** - Occupied.
  - **RESERVED** – Seats are reserved.
  - **TOCLEAN** – Table needs cleaning.
  - **BLOCKED** – Table is blocked and cannot be used.

The **Kitchen Integration** section describes how to send the orders to the kitchen and on which platform the order will be monitored in the kitchen.

The **POS Actions** section contains codes for specific actions in specific circumstances. A new action or processes can be build & attached to the specific steps as defined in the fields.

- **SAVE LAYOUT ACTION** - This action stores the restaurant layout from the front-end editor.
- **SELECT RESTAURANT ACTION** - Specifies the code for the POS action that is used, when a restaurant is selected on restaurant view. Recommended value is "RV_SELECT_RESTAURANT"
- **SELECT TABLE ACTION** - This action can be run when a table is selected in the **Restaurant View**. If left blank, it runs the slide-in menu screen.
- **GO TO POS ACTION** - This action can be run when taking the orders to the **Restaurant View**.
- **NEW WAITER PAD ACTION** - This action creates a new waiter pad for the selected seating code.
- **SELECT WAITER PAD ACTION** – This action is blank for time being.
- **SET WAITER PAD STATUS ACTION** - An action to set the Waiter Pad status/serving step from the **Restaurant View**.
- **SET TABLE STATUS ACTION** - An action to set table (seating) status from the **Restaurant View**.
- **SET NUMBER OF GUESTS ACTION** - An action to set number of guests for a waiter pad from the **Restaurant View**.

The following field is available in the **Print Template** section:

- **Print Type** - Here we set templates to be used by different printers in different stations, such as main restaurant, bar, kitchen etc., based on the type of printing that is required. 